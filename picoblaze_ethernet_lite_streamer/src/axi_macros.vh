// Macros for efficiently handling AXI4 connections.
// NOTE: Clocks and resets are never connected! They're global.
// ALSO NOTE: as with most examples read/write addresses/data are identical widths
//
// These connect up the REQUIRED signals only! Because Xilinx is an ass and doesn't always provide
// ports for unused stuff, we just stick with the "required" guys.
//
// 'Optional' signals:
// AWID
// ARID
// AWQOS
// ARQOS
// AWLOCK (AXI3 only anyway)
// ARLOCK (AXI3 only anyway)
// AWREGION
// ARREGION
// AWPROT
// ARPROT
// AWUSER
// ARUSER
// WUSER
// RUSER
// BUSER
//
// If the application actually uses any of these (... unlikely) you need to define them and hook them
// separately.
//
// Some Xilinx crap doesn't fully connect AXI signals. So we also provide macros for eliminating channels.
// e.g. `AXI4LITE_CONNECT_READ_ONLY
// and  `AXI4_CONNECT_READ_ONLY
// and  `AXI4LITE_CONNECT_WRITE_ONLY
// and  `AXI4_CONNECT_WRITE_ONLY
//
// For the AXI4-Streaming connections, we only hook up tdata/tvalid/tready, and optionally tlast.
// `AXI4S_DEFINE/`AXI4S_CONNECT indicates a framed connection (has _tlast)
// `AXI4S_DEFINE_NO_FRAMING/`AXI4S_CONNECT_NO_FRAMING indicates an unframed connection (no _tlast).

/////// AXI4-Lite stuff.

// Define the wires. This is for an AXI4-Lite interface that's internal to a module (e.g. in a top-level module)
`define AXI4LITE_DEFINE(name, addr_width, data_width)                                               \
    wire [addr_width``-1:0] name``_awaddr;                                                          \
    wire name``_awvalid;                                                                            \
    wire name``_awready;                                                                            \
    wire [data_width``-1:0] name``_wdata;                                                           \
    wire [(data_width``/8)-1:0] name``_wstrb;                                                       \
    wire name``_wvalid;                                                                             \
    wire name``_wready;                                                                             \
    wire [1:0] name``_bresp;                                                                        \
    wire name``_bvalid;                                                                             \
    wire name``_bready;                                                                             \
    wire [addr_width``-1:0] name``_araddr;                                                          \
    wire name``_arvalid;                                                                            \
    wire name``_arready;                                                                            \
    wire [data_width``-1:0] name``_rdata;                                                           \
    wire [1:0] name``_rresp;                                                                        \
    wire name``_rvalid;                                                                         \
    wire name``_rready

// Define a *vector* of (identical) AXI busses.
`define AXI4LITE_DEFINE_VECTO(name, num_bus, addr_width, data_width)                                   \
    wire [num_bus``*addr_width``-1:0] name``_awaddr;                                                          \
    wire [num_bus``-1:0] name``_awvalid;                                                                            \
    wire [num_bus``-1:0] name``_awready;                                                                            \
    wire [num_bus``*data_width``-1:0] name``_wdata;                                                           \
    wire [num_bus``*(data_width``/8)-1:0] name``_wstrb;                                                       \
    wire [num_bus``-1:0] name``_wvalid;                                                                             \
    wire [num_bus``-1:0] name``_wready;                                                                             \
    wire [num_bus``*2-1:0] name``_bresp;                                                                        \
    wire [num_bus``-1:0] name``_bvalid;                                                                             \
    wire [num_bus``-1:0] name``_bready;                                                                             \
    wire [num_bus``*addr_width``-1:0] name``_araddr;                                                          \
    wire [num_bus``-1:0] name``_arvalid;                                                                            \
    wire [num_bus``-1:0] name``_arready;                                                                            \
    wire [data_width``-1:0] name``_rdata;                                                           \
    wire [num_bus``-1:0] name``_rresp;                                                                        \
    wire [num_bus``-1:0] name``_rvalid;                                                                         \
    wire [num_bus``-1:0] name``_rready

    
// Connect an AXI4-Lite bus (with custom prefix) to a port (with custom prefix).
// Note that the prefixes are anything before _awvalid (for instance).
// Many times the AXI4-Lite slave port for a simple slave is just "s_axi": as in,
// it's got a bunch of connections called s_axi_awvalid (etc.).
// So to connect a bus called "main_axi" (e.g. "main_axi_awvalid") to a simple slave,
// it would be `AXI4LITE_CONNECT( s_axi, main_axi )

// In MOST cases, you can just do `AXI4LITE_CONNECT.
// In cases where Xilinx is a jerk, you need to do `define AXI4LITE_CONNECT_USE_UPPERCASE
// first, and then `undef AXI4LITE_CONNECT_USE_UPPERCASE afterwards.
`define AXI4LITE_CONNECT( port_prefix, bus_prefix )                                                 \
    `ifdef AXI_MACROS_USE_UPPERCASE_CONNECT `AXI4LITE_CONNECT_UC( port_prefix, bus_prefix )         \
    `else `AXI4LITE_CONNECT_LC( port_prefix, bus_prefix )                                           \
    `endif                                                                                          

`define AXI4LITE_CONNECT_READ_ONLY( port_prefix, bus_prefix )                                           \
    `ifdef AXI_MACROS_USE_UPPERCASE_CONNECT `AXI4LITE_CONNECT_UC_READ_ONLY( port_prefix, bus_prefix )   \
    `else `AXI4LITE_CONNECT_LC_READ_ONLY( port_prefix, bus_prefix )                                     \
    `endif

`define AXI4LITE_CONNECT_WRITE_ONLY( port_prefix, bus_prefix )                                          \
    `ifdef AXI_MACROS_USE_UPPERCASE_CONNECT `AXI4LITE_CONNECT_UC_WRITE_ONLY( port_prefix, bus_prefix )  \
    `else `AXI4LITE_CONNECT_LC_WRITE_ONLY( port_prefix, bus_prefix )                                    \
    `endif

`define AXI4LITE_CONNECT_LC( port_prefix, bus_prefix )                                              \
    `AXI4LITE_CONNECT_LC_WRITE_ONLY( port_prefix, bus_prefix ),                                     \
    `AXI4LITE_CONNECT_LC_READ_ONLY( port_prefix, bus_prefix )

`define AXI4LITE_CONNECT_UC( port_prefix, bus_prefix )                                              \
    `AXI4LITE_CONNECT_UC_WRITE_ONLY( port_prefix, bus_prefix ),                                     \
    `AXI4LITE_CONNECT_UC_READ_ONLY( port_prefix, bus_prefix )

`define AXI4LITE_CONNECT_LC_WRITE_ONLY( port_prefix, bus_prefix )                                   \
    .port_prefix``_awaddr(bus_prefix``_awaddr),                                                     \
    .port_prefix``_awvalid(bus_prefix``_awvalid),                                                   \
    .port_prefix``_awready(bus_prefix``_awready),                                                   \
    .port_prefix``_wdata(bus_prefix``_wdata),                                                       \
    .port_prefix``_wvalid(bus_prefix``_wvalid),                                                     \
    .port_prefix``_wready(bus_prefix``_wready),                                                     \
    .port_prefix``_wstrb(bus_prefix``_wstrb),                                                       \
    .port_prefix``_bresp(bus_prefix``_bresp),                                                       \
    .port_prefix``_bvalid(bus_prefix``_bvalid),                                                     \
    .port_prefix``_bready(bus_prefix``_bready)

`define AXI4LITE_CONNECT_LC_READ_ONLY( port_prefix, bus_prefix )                                    \
    .port_prefix``_araddr(bus_prefix``_araddr),                                                     \
    .port_prefix``_arvalid(bus_prefix``_arvalid),                                                   \
    .port_prefix``_arready(bus_prefix``_arready),                                                   \
    .port_prefix``_rdata(bus_prefix``_rdata),                                                       \
    .port_prefix``_rresp(bus_prefix``_rresp),                                                       \
    .port_prefix``_rvalid(bus_prefix``_rvalid),                                                     \
    .port_prefix``_rready(bus_prefix``_rready)

// Vector connect. Harder.
`define AXI4LITE_VECTOR_CONNECT_LC_WRITE_ONLY( port_prefix, bus_prefix, index, addr_width, data_width )                                   \
    .port_prefix``_awaddr(bus_prefix``_awaddr),                                                     \
    .port_prefix``_awvalid(bus_prefix``_awvalid),                                                   \
    .port_prefix``_awready(bus_prefix``_awready),                                                   \
    .port_prefix``_wdata(bus_prefix``_wdata),                                                       \
    .port_prefix``_wvalid(bus_prefix``_wvalid),                                                     \
    .port_prefix``_wready(bus_prefix``_wready),                                                     \
    .port_prefix``_wstrb(bus_prefix``_wstrb),                                                       \
    .port_prefix``_bresp(bus_prefix``_bresp),                                                       \
    .port_prefix``_bvalid(bus_prefix``_bvalid),                                                     \
    .port_prefix``_bready(bus_prefix``_bready)


// Vector connect. Harder.
`define AXI4LITE_VECTOR_CONNECT_LC_READ_ONLY( port_prefix, bus_prefix, index, addr_width, data_width )                                    \
    .port_prefix``_araddr(bus_prefix``_araddr[index``*addr_width``-1]),                                                     \
    .port_prefix``_arvalid(bus_prefix``_arvalid[ index ] ),                                                   \
    .port_prefix``_arready(bus_prefix``_arready[ index ] ),                                                   \
    .port_prefix``_rdata(bus_prefix``_rdata[index``*data_width``-1]),                                                       \
    .port_prefix``_rresp(bus_prefix``_rresp[index``*2-1]),                                                       \
    .port_prefix``_rvalid(bus_prefix``_rvalid[ index ]),                                                     \
    .port_prefix``_rready(bus_prefix``_rready[ index ])

    
// Same exact thing, except for the case when Xilinx is an asshole and uses uppercase ports.
`define AXI4LITE_CONNECT_UC_WRITE_ONLY( port_prefix, bus_prefix )                                   \
    .port_prefix``_AWADDR(bus_prefix``_awaddr),                                                     \
    .port_prefix``_AWVALID(bus_prefix``_awvalid),                                                   \
    .port_prefix``_AWREADY(bus_prefix``_awready),                                                   \
    .port_prefix``_WDATA(bus_prefix``_wdata),                                                       \
    .port_prefix``_WSTRB(bus_prefix``_wstrb),                                                       \
    .port_prefix``_WVALID(bus_prefix``_wvalid),                                                     \
    .port_prefix``_WREADY(bus_prefix``_wready),                                                     \
    .port_prefix``_BRESP(bus_prefix``_bresp),                                                       \
    .port_prefix``_BVALID(bus_prefix``_bvalid),                                                     \
    .port_prefix``_BREADY(bus_prefix``_bready)
    
`define AXI4LITE_CONNECT_UC_READ_ONLY( port_prefix, bus_prefix )                                    \
    .port_prefix``_ARADDR(bus_prefix``_araddr),                                                     \
    .port_prefix``_ARVALID(bus_prefix``_arvalid),                                                   \
    .port_prefix``_ARREADY(bus_prefix``_arready),                                                   \
    .port_prefix``_RDATA(bus_prefix``_rdata),                                                       \
    .port_prefix``_RRESP(bus_prefix``_rresp),                                                       \
    .port_prefix``_RVALID(bus_prefix``_rvalid),                                                     \
    .port_prefix``_RREADY(bus_prefix``_rready)

// Kill all the write channels
`define AXI4LITE_TERMINATE_WRITE( bus_prefix )                                                      \
    assign bus_prefix``_awaddr = 0;                                                                 \
    assign bus_prefix``_awvalid = 0;                                                                \
    assign bus_prefix``_wdata = 0;                                                                  \
    assign bus_prefix``_wvalid = 0;                                                                 \
    assign bus_prefix``_wstrb = 0;                                                                  \
    assign bus_prefix``_bready = 0

// Kill all the read channels
`define AXI4LITE_TERMINATE_READ( bus_prefix )                                                       \
    assign bus_prefix``_araddr = 0;                                                                 \
    assign bus_prefix``_arvalid = 0;                                                                \
    assign bus_prefix``_rready = 0



/////// AXI4 stuff. Leverages AXI4-Lite connections as well.
`define AXI4_DEFINE(name, addr_width, data_width)                                                   \
    `AXI4LITE_DEFINE( name , addr_width , data_width );                                             \
    wire [8-1:0] name``_awlen;                                                                        \
    wire [3-1:0] name``_awsize;                                                                       \
    wire [2-1:0] name``_awburst;                                                                      \
    wire [4-1:0] name``_awcache;                                                                      \
    wire name``_wlast;                                                                              \
    wire [8-1:0] name``_arlen;                                                                        \
    wire [3-1:0] name``_arsize;                                                                       \
    wire [2-1:0] name``_arburst;                                                                      \
    wire [4-1:0] name``_arcache;                                                                      \
    wire name``_rlast

// Defines a *vector* of AXI busses.
`define AXI4_DEFINE_VECTOR(name, num_bus, addr_width, data_width)                                                   \
    `AXI4LITE_DEFINE( name , addr_width , data_width );                                             \
    wire [num_bus``*8-1:0] name``_awlen;                                                                        \
    wire [num_bus``*3-1:0] name``_awsize;                                                                       \
    wire [num_bus``*2-1:0] name``_awburst;                                                                      \
    wire [num_bus``*4-1:0] name``_awcache;                                                                      \
    wire [num_bus``-1:0] name``_wlast;                                                                              \
    wire [num_bus``*8-1:0] name``_arlen;                                                                        \
    wire [num_bus``*3-1:0] name``_arsize;                                                                       \
    wire [num_bus``*2-1:0] name``_arburst;                                                                      \
    wire [num_bus``*4-1:0] name``_arcache;                                                                      \
    wire [num_bus``-1:0] name``_rlast

    
`define AXI4_CONNECT( port_prefix, bus_prefix )                                                     \
    `ifdef AXI_MACROS_USE_UPPERCASE_CONNECT `AXI4_CONNECT_UC( port_prefix, bus_prefix )             \
    `else `AXI4_CONNECT_LC( port_prefix, bus_prefix )                                               \
    `endif                                                                                          

`define AXI4_CONNECT_WRITE_ONLY( port_prefix, bus_prefix )                                          \
    `ifdef AXI_MACROS_USE_UPPERCASE_CONNECT `AXI4_CONNECT_UC_WRITE_ONLY( port_prefix, bus_prefix )  \
    `else `AXI4_CONNECT_LC_WRITE_ONLY( port_prefix, bus_prefix )                                    \
    `endif
    
`define AXI4_CONNECT_READ_ONLY( port_prefix, bus_prefix )                                           \
    `ifdef AXI_MACROS_USE_UPPERCASE_CONNECT `AXI4_CONNECT_UC_READ_ONLY( port_prefix, bus_prefix )   \
    `else `AXI4_CONNECT_LC_READ_ONLY( port_prefix, bus_prefix )                                     \
    `endif

`define AXI4_CONNECT_UC( port_prefix, bus_prefix )                                              \
    `AXI4_CONNECT_UC_WRITE_ONLY( port_prefix, bus_prefix ),                                     \
    `AXI4_CONNECT_UC_READ_ONLY( port_prefix, bus_prefix )

`define AXI4_CONNECT_LC( port_prefix, bus_prefix )                                              \
    `AXI4_CONNECT_LC_WRITE_ONLY( port_prefix, bus_prefix ),                                     \
    `AXI4_CONNECT_LC_READ_ONLY( port_prefix, bus_prefix )

`define AXI4_CONNECT_LC_WRITE_ONLY( port_prefix, bus_prefix )                                   \
    `AXI4LITE_CONNECT_LC_WRITE_ONLY( port_prefix, bus_prefix ),                                 \
    .port_prefix``_awlen(bus_prefix``_awlen),                                                   \
    .port_prefix``_awsize(bus_prefix``_awsize),                                                 \
    .port_prefix``_awburst(bus_prefix``_awburst),                                               \
    .port_prefix``_awcache(bus_prefix``_awcache),                                               \
    .port_prefix``_wlast(bus_prefix``_wlast)

`define AXI4_CONNECT_LC_READ_ONLY( port_prefix, bus_prefix )                                    \
    `AXI4LITE_CONNECT_LC_READ_ONLY( port_prefix, bus_prefix ),                                  \
    .port_prefix``_arlen(bus_prefix``_arlen),                                                   \
    .port_prefix``_arsize(bus_prefix``_arsize),                                                 \
    .port_prefix``_arburst(bus_prefix``_arburst),                                               \
    .port_prefix``_arcache(bus_prefix``_arcache),                                               \
    .port_prefix``_rlast(bus_prefix``_rlast)
    
`define AXI4_CONNECT_UC_WRITE_ONLY( port_prefix, bus_prefix )                                   \
    `AXI4LITE_CONNECT_UC_WRITE_ONLY( port_prefix, bus_prefix ),                                 \
    .port_prefix``_AWLEN(bus_prefix``_awlen),                                                   \
    .port_prefix``_AWSIZE(bus_prefix``_awsize),                                                 \
    .port_prefix``_AWBURST(bus_prefix``_awburst),                                               \
    .port_prefix``_AWCACHE(bus_prefix``_awcache),                                               \
    .port_prefix``_WLAST(bus_prefix``_wlast)

`define AXI4_CONNECT_UC_READ_ONLY( port_prefix, bus_prefix )                                    \
    `AXI4LITE_CONNECT_UC_READ_ONLY( port_prefix, bus_prefix ),                                  \
    .port_prefix``_ARLEN(bus_prefix``_arlen),                                                   \
    .port_prefix``_ARSIZE(bus_prefix``_arsize),                                                 \
    .port_prefix``_ARBURST(bus_prefix``_arburst),                                               \
    .port_prefix``_ARCACHE(bus_prefix``_arcache),                                               \
    .port_prefix``_RLAST(bus_prefix``_rlast)

`define AXI4_TERMINATE_READ( bus_prefix )                                                       \
    `AXI4LITE_TERMINATE_READ( bus_prefix );                                                     \
    assign bus_prefix``_arlen = 0;                                                              \
    assign bus_prefix``_arsize = 0;                                                             \
    assign bus_prefix``_arburst = 0;                                                            \
    assign bus_prefix``_arcache = 0;                                                            \
    assign bus_prefix``_rlast = 0

`define AXI4_TERMINATE_WRITE( bus_prefix )                                                      \
    `AXI4LITE_TERMINATE_WRITE( bus_prefix );                                                    \
    assign bus_prefix``_awlen = 0;                                                              \
    assign bus_prefix``_awsize = 0;                                                             \
    assign bus_prefix``_awburst = 0;                                                            \
    assign bus_prefix``_awcache = 0;                                                            \
    assign bus_prefix``_wlast = 0

`define AXI4_TERMINATE_UNUSED( port_prefix )                                                    \
    `ifdef AXI_MACROS_USE_UPPERCASE_CONNECT `AXI4_UC_TERMINATE_UNUSED( port_prefix )            \
    `else `AXI4_LC_TERMINATE_UNUSED( port_prefix )                                              \
    `endif

`define AXI4_UC_TERMINATE_UNUSED( port_prefix )                                                 \
    .port_prefix``_ARPROT(0),                                                                   \
    .port_prefix``_ARQOS(0),                                                                    \
    .port_prefix``_AWPROT(0),                                                                   \
    .port_prefix``_AWQOS(0),                                                                    \
    .port_prefix``_AWLOCK(0),                                                                   \
    .port_prefix``_ARLOCK(0)

`define AXI4_LC_TERMINATE_UNUSED( port_prefix )                                                 \
    .port_prefix``_arprot(0),                                                                   \
    .port_prefix``_arqos(0),                                                                    \
    .port_prefix``_awprot(0),                                                                   \
    .port_prefix``_awqos(0),                                                                    \
    .port_prefix``_awlock(0),                                                                   \
    .port_prefix``_arlock(0)
    
/////// AXI4-Stream stuff. No user signals. NO_FRAMING means no _tlast.
//
// Like before if AXI_MACROS_USE_UPPERCASE_CONNECT, port connections are uppercase.
// AXI4S_DEFINE_NO_FRAMING and AXI4S_CONNECT_NO_FRAMING exist so that it's obvious that a
// connection isn't a framed connection (with TLAST).
`define AXI4S_DEFINE_NO_FRAMING(name, data_width)                                               \
    wire [ data_width - 1:0] name``_tdata;                                                      \
    wire name``_tvalid;                                                                         \
    wire name``_tready
    
`define AXI4S_DEFINE(name, data_width)                                                          \
    `AXI4S_DEFINE_NO_FRAMING(name, data_width);                                                 \
    wire name``_tlast

`define AXI4S_CONNECT( port_prefix, bus_prefix )                                                \
    `ifdef AXI_MACROS_USE_UPPERCASE_CONNECT `AXI4S_CONNECT_UC( port_prefix, bus_prefix )        \
    `else `AXI4S_CONNECT_LC( port_prefix, bus_prefix )                                          \
    `endif    

`define AXI4S_CONNECT_NO_FRAMING( port_prefix, bus_prefix )                                         \
    `ifdef AXI_MACROS_USE_UPPERCASE_CONNECT `AXI4S_CONNECT_UC_NO_FRAMING( port_prefix, bus_prefix ) \
    `else `AXI4S_CONNECT_LC_NO_FRAMING( port_prefix, bus_prefix )                                   \
    `endif

`define AXI4S_CONNECT_LC_NO_FRAMING( port_prefix, bus_prefix )                                  \
    .port_prefix``_tdata(bus_prefix``_tdata),                                                   \
    .port_prefix``_tready(bus_prefix``_tready),                                                 \
    .port_prefix``_tvalid(bus_prefix``_tvalid)

`define AXI4S_CONNECT_LC( port_prefix, bus_prefix )                                             \
    `AXI4S_CONNECT_LC_NO_FRAMING( port_prefix, bus_prefix ),                                    \
    .port_prefix``_tlast(bus_prefix``_tlast)

`define AXI4S_CONNECT_UC_NO_FRAMING( port_prefix, bus_prefix )                                  \
    .port_prefix``_TDATA(bus_prefix``_tdata),                                                   \
    .port_prefix``_TREADY(bus_prefix``_tready),                                                 \
    .port_prefix``_TVALID(bus_prefix``_tvalid)

`define AXI4S_CONNECT_UC( port_prefix, bus_prefix )                                             \
    `AXI4S_CONNECT_UC_NO_FRAMING( port_prefix, bus_prefix ),                                    \
    .port_prefix``_TLAST(bus_prefix``_tlast)

//////// AXI ILA stuff.
// Xilinx is the DUMBEST COMPANY ON THE PLANET.
`define AXI4_ILA_CONNECT( axi_prefix )                                                          \
                                     .probe1( axi_prefix``_awaddr ),                            \
                                     .probe11( axi_prefix``_awvalid ),                          \
                                     .probe12( axi_prefix``_awready ),                          \
                                     .probe21( axi_prefix``_awlen ),                            \
                                     .probe23( axi_prefix``_awsize ),                           \
                                     .probe24( axi_prefix``_awburst ),                          \
                                     .probe32( axi_prefix``_awcache ),                          \
                                     .probe0( axi_prefix``_wready ),                            \
                                     .probe7( axi_prefix``_wvalid ),                            \
                                     .probe14( axi_prefix``_wdata ),                            \
                                     .probe15( axi_prefix``_wstrb ),                            \
                                     .probe43( axi_prefix``_wlast ),                            \
                                     .probe3( axi_prefix``_bvalid ),                            \
                                     .probe4( axi_prefix``_bready ),                            \
                                     .probe2( axi_prefix``_bresp ),                             \
                                     .probe5( axi_prefix``_araddr ),                            \
                                     .probe9( axi_prefix``_arready ),                           \
                                     .probe8( axi_prefix``_arvalid ),                           \
                                     .probe27( axi_prefix``_arlen ),                            \
                                     .probe28( axi_prefix``_arsize ),                           \
                                     .probe29( axi_prefix``_arburst ),                          \
                                     .probe31( axi_prefix``_arcache ),                          \
                                     .probe6( axi_prefix``_rready ),                            \
                                     .probe16( axi_prefix``_rvalid ),                           \
                                     .probe10( axi_prefix``_rdata ),                            \
                                     .probe13( axi_prefix``_rresp),                             \
                                     .probe41( axi_prefix``_rlast )
// OMG I hate you Xilinx
// used: 0 1 2 3 4 5 6 7 8 9 10 11 12
//       14 15 16
//       21
//       23 24 
//       27 28 29
//       31 32
//       41
//       43
`define AXI4_ILA_CONNECT_UNUSED                                                                 \
                                     .probe17(0),.probe18(0),.probe19(0),           \
                                     .probe20(0),.probe22(0),.probe25(0),.probe26(0),           \
                                     .probe30(0),.probe33(0),.probe34(0),.probe35(0),           \
                                     .probe36(0),.probe37(0),.probe38(0),.probe39(0),           \
                                     .probe40(0),.probe42(0)
                                     
                                         