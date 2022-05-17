`ifndef _MEM_AXI_VH_
 `define _MEM_AXI_VH_

// These are ONLY for the FMN AXI links, which
// all have a fixed addr/burst/cache/etc. all that
// crap.

// Allow us to generate macros which avoid [0:0]'s
// to avoid pissing off domain crossings.
    `define MULTIPORT_NO_SPECIFIER

    `define MULTIPORTAXI1 1
    
    `define MULTIPORT( width , multiplier )     \
    `ifdef MULTIPORTAXI``width                  \
        `ifdef MULTIPORTAXI``multiplier         \
            `MULTIPORT_NO_SPECIFIER             \
        `else                                   \
            [ multiplier - 1 : 0 ]              \
        `endif                                  \
    `else                                       \
        [ width*multiplier - 1 : 0 ]            \
    `endif

    // Allows us to write one specifier for the interface,
    // and select the terminator type (either TERM_PORT or TERM_LINE ).
    
    `define AXIM_TERM_PORT ,
    
    `define AXIM_TERM_LINE ;
    
//    `define AXIM_TERMINATE_PORT(x) x ,
    
//    `define AXIM_TERMINATE_LINE(x) x ;
    
//    `ifdef  AXIM_TERM_LINE 
//        `undef AXIM_TERM_LINE 
//     `endif

//    `define AXIM_TERM_PORT 1

//    `define AXIM_LINE( x , term )               \
//      `ifdef AXIM_``term                        \
//        `AXIM_TERMINATE_PORT( x )               \
//      `else                                     \
//        `AXIM_TERMINATE_LINE( x )               \
//      `endif

//    `define AXIM_BUILD3( x , y , z ) x y z

//    `define AXIM_BUILD1( x ) x

    `define AXIM_BUILDO( type , width , multiplier , name )         \
        type `MULTIPORT( width , multiplier ) name 
           
// htype = output for M, input for S
// ttype = input for M, output for S

// Heavy use of macros to simplify things and avoid typos.
// Readys are ALWAYS first because they're the oddballs in a channel.

// Addrs are host-to-target (ready = tttype, all others = htype)
    `define AXIM_ADDRDEF(  htype, ttype, term, name , multiplier )    \
`AXIM_BUILDO( ttype ,  1 , multiplier , name``ready    ) `AXIM_``term \
`AXIM_BUILDO( htype , 32 , multiplier , name``addr     ) `AXIM_``term \
`AXIM_BUILDO( htype ,  2 , multiplier , name``burst    ) `AXIM_``term \
`AXIM_BUILDO( htype ,  4 , multiplier , name``cache    ) `AXIM_``term \
`AXIM_BUILDO( htype ,  8 , multiplier , name``len      ) `AXIM_``term \
`AXIM_BUILDO( htype ,  3 , multiplier , name``prot     ) `AXIM_``term \
`AXIM_BUILDO( htype ,  3 , multiplier , name``size     ) `AXIM_``term \
`AXIM_BUILDO( htype ,  1 , multiplier , name``valid    )


// B channel is target-to-host (ready = htype, all others = ttype)
// R channel is target-to-host (ready = htype, all others = ttype)
// W channel is host-to-target (ready = ttype, all others = htype)

// Channels have
`define AXIM_DEF( name , multiplier , htype, ttype , term  )            \
`AXIM_ADDRDEF( htype , ttype , term ,  name``ar , multiplier ) `AXIM_``term \
`AXIM_ADDRDEF( htype , ttype , term ,  name``aw , multiplier ) `AXIM_``term \
`AXIM_BUILDO( htype , 1  , multiplier , name``bready         ) `AXIM_``term \
`AXIM_BUILDO( ttype , 2  , multiplier , name``bresp          ) `AXIM_``term \
`AXIM_BUILDO( ttype , 1  , multiplier , name``bvalid         ) `AXIM_``term \
`AXIM_BUILDO( htype , 1  , multiplier , name``rready         ) `AXIM_``term \
`AXIM_BUILDO( ttype , 512, multiplier , name``rdata          ) `AXIM_``term \
`AXIM_BUILDO( ttype , 2  , multiplier , name``rresp          ) `AXIM_``term \
`AXIM_BUILDO( ttype , 1  , multiplier , name``rlast          ) `AXIM_``term \
`AXIM_BUILDO( ttype , 1  , multiplier , name``rvalid         ) `AXIM_``term \
`AXIM_BUILDO( ttype , 1  , multiplier , name``wready         ) `AXIM_``term \
`AXIM_BUILDO( htype , 512, multiplier , name``wdata          ) `AXIM_``term \
`AXIM_BUILDO( htype , 1  , multiplier , name``wlast          ) `AXIM_``term \
`AXIM_BUILDO( htype , 64 , multiplier , name``wstrb          ) `AXIM_``term \
`AXIM_BUILDO( htype , 1  , multiplier , name``wvalid         )

    `define M_AXIM_PORT( name , multiplier )    \
        `AXIM_DEF( name , multiplier , output , input , TERM_PORT )
    
    `define S_AXIM_PORT( name , multiplier )    \
        `AXIM_DEF( name , multiplier , input , output , TERM_PORT )
    
    `define AXIM_DECLARE( name , multiplier )       \
        `AXIM_DEF( name , multiplier , wire , wire , TERM_LINE )

//    // the connect macro needs to generate something like
//    // .s_axi_araddr ( wire_araddr [ 32 * idx +: 32 ] )
//    // which is really just
//    // . port araddr ( name araddr suffix )
//    // We again need to magicify the suffix, but it's easier this time: we just need
//    // a pair of magic tokens for "array" and "no suffix"
    `define AXIMV_SUFFIX_INDEX 1    
    `define AXIM_SUFFIX_NONE 1
    
    `define AXIM_NO_SUFFIX

    // pass INDEX if we end each connect with [ idx ]  (array)
    // pass VECTOR if we end each connect with [ width * idx +: width ] (vector)
    // pass NONE if no suffix

    `define AXIM_SUFFIX( width , idx , type )   \
        `ifdef AXIMV_SUFFIX_``type              \
            [ idx ]                             \
        `else                                   \
            `ifdef AXIM_SUFFIX_``type           \
                `AXIM_NO_SUFFIX                 \
            `else                               \
                [ width * idx +: width ]        \
            `endif                              \
        `endif

    `define AXIM_ADDR_CONNECTANY( port , name , idx , type)             \
        .``port``addr ( name``addr  `AXIM_SUFFIX( 32, idx , type   )),  \
        .``port``burst( name``burst `AXIM_SUFFIX(  2, idx , type   )),  \
        .``port``cache( name``cache `AXIM_SUFFIX(  4, idx , type   )),  \
        .``port``len  ( name``len   `AXIM_SUFFIX(  8, idx , type   )),  \
        .``port``prot ( name``prot  `AXIM_SUFFIX(  3, idx , type   )),  \
        .``port``ready( name``ready `AXIM_SUFFIX(  1, idx , type   )),  \
        .``port``size ( name``size  `AXIM_SUFFIX(  3, idx , type   )),  \
        .``port``valid( name``valid `AXIM_SUFFIX(  1, idx , type   ))

    `define AXIM_CONNECTB( port, name , idx , type )                    \
                            .``port``bready     ( name``bready  `AXIM_SUFFIX( 1  , idx , type )),   \
                            .``port``bresp      ( name``bresp   `AXIM_SUFFIX( 2  , idx , type )),   \
                            .``port``bvalid     ( name``bvalid  `AXIM_SUFFIX( 1  , idx , type ))

    `define AXIM_CONNECTW( port, name, idx, type )                                                  \
                            .``port``wdata      ( name``wdata   `AXIM_SUFFIX( 512, idx , type )),   \
                            .``port``wlast      ( name``wlast   `AXIM_SUFFIX( 1  , idx , type )),   \
                            .``port``wready     ( name``wready  `AXIM_SUFFIX( 1  , idx , type )),   \
                            .``port``wstrb      ( name``wstrb   `AXIM_SUFFIX( 64 , idx , type )),   \
                            .``port``wvalid     ( name``wvalid  `AXIM_SUFFIX( 1  , idx , type ))


    `define AXIM_CONNECTR( port , name, idx, type)                      \
                            .``port``rdata      ( name``rdata   `AXIM_SUFFIX( 512, idx , type )),   \
                            .``port``rlast      ( name``rlast   `AXIM_SUFFIX( 1  , idx , type )),   \
                            .``port``rready     ( name``rready  `AXIM_SUFFIX( 1  , idx , type )),   \
                            .``port``rvalid     ( name``rvalid  `AXIM_SUFFIX( 1  , idx , type )),   \
                            .``port``rresp      ( name``rresp   `AXIM_SUFFIX( 2  , idx , type ))

    
    `define AXIM_CONNECTANY( port , name , idx , type )                 \
        `AXIM_ADDR_CONNECTANY( port``ar         , name``ar      , idx , type ),                     \
        `AXIM_ADDR_CONNECTANY( port``aw         , name``aw      , idx , type ),                     \
        `AXIM_CONNECTB( port, name, idx, type ),                                                    \
        `AXIM_CONNECTW( port, name, idx, type ),                                                    \
        `AXIM_CONNECTR( port, name, idx, type )



    `define CONNECT_AXIM_W( port , name ) \
        `AXIM_ADDR_CONNECTANY( port``ar         , name``ar      , 0 , NONE ),                     \
        `AXIM_ADDR_CONNECTANY( port``aw         , name``aw      , 0 , NONE ),                     \
        `AXIM_CONNECTB( port, name, 0 , NONE ),                                                    \
        `AXIM_CONNECTW( port, name, 0 , NONE )

    `define CONNECT_AXIM( port , name ) \
        `AXIM_CONNECTANY( port , name , 0 , NONE )

    
    `define CONNECT_AXIM_INDEX( port , name , idx )   \
        `AXIM_CONNECTANY( port , name , idx , INDEX )
    
    `define CONNECT_AXIM_VEC( port , name , idx )   \
        `AXIM_CONNECTANY( port , name , idx , VECTOR )

    `define AXIM_DEFINE_ASSIGN 1

    `define AXIM_NO_ADDR( name )            \
        assign name``addr = {32{1'b0}};     \
        assign name``burst = {2{1'b0}};     \
        assign name``cache = {4{1'b0}};     \
        assign name``len = {8{1'b0}};       \
        assign name``prot = {3{1'b0}};      \
        assign name``size = {3{1'b0}};      \
        assign name``valid = 1'b0

    `define AXIM_NO_READS( name )           \
        `AXIM_NO_ADDR( name``ar );          \
        assign name``rready = 1'b1        

    `define AXIM_NO_WRITES( name )          \
        `AXIM_NO_ADDR( name``aw );          \
        assign name``wdata = 0;             \
        assign name``wstrb = 0;             \
        assign name``wvalid = 0;            \
        assign name``wlast = 0;             \
        assign name``bready = 1'b1
    
`endif

`ifdef AXIM_DEFINE_ASSIGN
    `undef AXIM_DEFINE_ASSIGN

    `define AXIM_CLEAR_ASSIGN   \
        `undef AXIM_BUILD_FROM  \
        `undef AXIM_BUILD_TO    \
        `undef ASSIGN_AXIM      \
        `define AXIM_DEFINE_ASSIGN 1

    `define AXIM_RESET_ASSIGN   \
        `undef AXIM_CUSTOM_BUILD
        `undef AXIM_BUILD_FROM
        `undef AXIM_BUILD_TO
        `undef ASSIGN_AXIM
        `define AXIM_DEFINE_ASSIGN 1

    // This part can be multiply included if you undef ASSIGN_AXIM, AXIM_BUILD_FROM, AXIM_BUILD_TO, define AXIM_DEFINE_ASSIGN,
    // and re-include it. 
    // This wackadoodle nonsense is needed, sadly.
    // Assigning is tricky because in some cases we just want a concatenation
    // (assign bus A to bus B) in others, we want repeated concatenation
    // (assign a 3-vectored bus D from { A, B, C }
    // If you want to do this, for instance, we do
    // `define AXIM_CUSTOM_BUILD
    // `define AXIM_BUILD_FROM( x , y ) { A``y , B``y, C``y }
    // `define AXIM_BUILD_TO( x , y ) D``y
    // Note that the 'x' term here in both cases is just a placeholder.
    // Then you can do `ASSIGN_AXIM( D , { A , B , C } }
    // and again, the actual values passed are just placeholders for readability.
    // This would expand into
    // assign { A_arready , B_arready , C_arready } = D_arready;
    // assign D_arvalid = { A_arvalid, B_arvalid, C_arvalid }
    // etc.
        
    `ifndef AXIM_CUSTOM_BUILD
        `define AXIM_BUILD_FROM( x , y ) x``y
        
        `define AXIM_BUILD_TO( x , y ) x``y
    `endif
    
    `define ASSIGN_AXIM( to , from )                                               \
        assign `AXIM_BUILD_FROM(from,   arready)  = `AXIM_BUILD_TO(   to,    arready); \
        assign `AXIM_BUILD_TO(  to ,    araddr )  = `AXIM_BUILD_FROM( from , araddr);  \
        assign `AXIM_BUILD_TO(  to ,    arburst)  = `AXIM_BUILD_FROM( from , arburst); \
        assign `AXIM_BUILD_TO(  to ,    arcache)  = `AXIM_BUILD_FROM( from , arcache); \
        assign `AXIM_BUILD_TO(  to ,    arlen  )  = `AXIM_BUILD_FROM( from , arlen);   \
        assign `AXIM_BUILD_TO(  to ,    arprot )  = `AXIM_BUILD_FROM( from , arprot);  \
        assign `AXIM_BUILD_TO(  to ,    arsize )  = `AXIM_BUILD_FROM( from , arsize);  \
        assign `AXIM_BUILD_TO(  to ,    arvalid)  = `AXIM_BUILD_FROM( from , arvalid); \
        assign `AXIM_BUILD_FROM(from,   awready)  = `AXIM_BUILD_TO(   to,    awready); \
        assign `AXIM_BUILD_TO(  to ,    awaddr )  = `AXIM_BUILD_FROM( from , awaddr);  \
        assign `AXIM_BUILD_TO(  to ,    awburst)  = `AXIM_BUILD_FROM( from , awburst); \
        assign `AXIM_BUILD_TO(  to ,    awcache)  = `AXIM_BUILD_FROM( from , awcache); \
        assign `AXIM_BUILD_TO(  to ,    awlen  )  = `AXIM_BUILD_FROM( from , awlen);   \
        assign `AXIM_BUILD_TO(  to ,    awprot )  = `AXIM_BUILD_FROM( from , awprot);  \
        assign `AXIM_BUILD_TO(  to ,    awsize )  = `AXIM_BUILD_FROM( from , awsize);  \
        assign `AXIM_BUILD_TO(  to ,    awvalid)  = `AXIM_BUILD_FROM( from , awvalid); \
        assign `AXIM_BUILD_TO(  to ,    bready ) = `AXIM_BUILD_FROM(from,bready);       \
        assign `AXIM_BUILD_FROM(from ,  bresp ) = `AXIM_BUILD_TO( to, bresp );                                     \
        assign `AXIM_BUILD_FROM(from ,  bvalid ) = `AXIM_BUILD_TO( to , bvalid);                                   \
        assign `AXIM_BUILD_TO(  to ,    rready ) = `AXIM_BUILD_FROM( from , rready );                                   \
        assign `AXIM_BUILD_FROM(from ,  rdata ) = `AXIM_BUILD_TO( to , rdata);                                     \
        assign `AXIM_BUILD_FROM(from ,  rresp ) = `AXIM_BUILD_TO( to , rresp);                                     \
        assign `AXIM_BUILD_FROM(from ,  rlast ) = `AXIM_BUILD_TO( to , rlast);                                     \
        assign `AXIM_BUILD_FROM(from ,  rvalid) = `AXIM_BUILD_TO( to , rvalid);                                   \
        assign `AXIM_BUILD_FROM(from ,  wready) = `AXIM_BUILD_TO( to , wready);                                   \
        assign `AXIM_BUILD_TO(  to ,    wdata  ) = `AXIM_BUILD_FROM( from, wdata);                                     \
        assign `AXIM_BUILD_TO(  to ,    wstrb  ) = `AXIM_BUILD_FROM( from, wstrb);                                     \
        assign `AXIM_BUILD_TO(  to ,    wlast  ) = `AXIM_BUILD_FROM( from, wlast);                                     \
        assign `AXIM_BUILD_TO(  to ,    wvalid ) = `AXIM_BUILD_FROM( from, wvalid )


`endif
