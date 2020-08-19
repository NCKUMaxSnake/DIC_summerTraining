wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/max.chen/DIC_1/DIC_HW4/HW4.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/rc4"
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/rc4/Sbox\[0:63\]} \
{/testfixture/rc4/cipher_out\[7:0\]} \
{/testfixture/rc4/clk} \
{/testfixture/rc4/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/rc4/Sbox\[0:63\]} \
{/testfixture/rc4/cipher_out\[7:0\]} \
{/testfixture/rc4/clk} \
{/testfixture/rc4/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/rc4"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/rc4/Sbox\[0:63\]} \
{/testfixture/rc4/cipher_out\[7:0\]} \
{/testfixture/rc4/clk} \
{/testfixture/rc4/rst} \
{/testfixture/rc4/cur_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/rc4/Sbox\[0:63\]} \
{/testfixture/rc4/cipher_out\[7:0\]} \
{/testfixture/rc4/clk} \
{/testfixture/rc4/rst} \
{/testfixture/rc4/cur_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/rc4/clk} \
{/testfixture/rc4/i_new\[5:0\]} \
{/testfixture/rc4/j_new\[5:0\]} \
{/testfixture/rc4/cur_state\[3:0\]} \
{/testfixture/rc4/Sbox\[0:63\]} \
{/testfixture/rc4/cipher_out\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/rc4/clk} \
{/testfixture/rc4/i_new\[5:0\]} \
{/testfixture/rc4/j_new\[5:0\]} \
{/testfixture/rc4/cur_state\[3:0\]} \
{/testfixture/rc4/Sbox\[0:63\]} \
{/testfixture/rc4/cipher_out\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/rc4"
wvGetSignalSetScope -win $_nWave1 "/testfixture/rc4"
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/rc4/clk} \
{/testfixture/rc4/i_new\[5:0\]} \
{/testfixture/rc4/j_new\[5:0\]} \
{/testfixture/rc4/plain_in_valid} \
{/testfixture/rc4/cur_state\[3:0\]} \
{/testfixture/rc4/Sbox\[0:63\]} \
{/testfixture/rc4/cipher_out\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 308385.252586 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 309736.321848 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 307106.240352 -snap {("G2" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectGroup -win $_nWave1 {G2}
wvSetCursor -win $_nWave1 313681.335955 -snap {("G1" 7)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetCursor -win $_nWave1 308985.019203 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 309309.275825 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 304319.326686 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 309507.432650 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 305400.182095 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 305274.082298 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 302788.114856 -snap {("G1" 0)}
wvSetCursor -win $_nWave1 302896.200397 -snap {("G1" 0)}
wvSetCursor -win $_nWave1 302878.186140 -snap {("G1" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 304661.597566 -snap {("G2" 0)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/rc4/clk} \
{/testfixture/rc4/cur_state\[3:0\]} \
{/testfixture/rc4/cipher_write} \
{/testfixture/rc4/plain_read} \
{/testfixture/rc4/i_new\[5:0\]} \
{/testfixture/rc4/j_new\[5:0\]} \
{/testfixture/rc4/plain_in_valid} \
{/testfixture/rc4/Sbox\[0:63\]} \
{/testfixture/rc4/cipher_out\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/rc4/clk} \
{/testfixture/rc4/cur_state\[3:0\]} \
{/testfixture/rc4/cipher_write} \
{/testfixture/rc4/plain_read} \
{/testfixture/rc4/i_new\[5:0\]} \
{/testfixture/rc4/j_new\[5:0\]} \
{/testfixture/rc4/plain_in_valid} \
{/testfixture/rc4/Sbox\[0:63\]} \
{/testfixture/rc4/cipher_out\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 317127.463285 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 302840.356201 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 302912.413228 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 301903.614846 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 311451.170961 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetCursor -win $_nWave1 300919.361982 -snap {("G2" 0)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/rc4/clk} \
{/testfixture/rc4/cur_state\[3:0\]} \
{/testfixture/rc4/cipher_write} \
{/testfixture/rc4/plain_read} \
{/testfixture/rc4/plain_in\[7:0\]} \
{/testfixture/rc4/i_new\[5:0\]} \
{/testfixture/rc4/j_new\[5:0\]} \
{/testfixture/rc4/plain_in_valid} \
{/testfixture/rc4/Sbox\[0:63\]} \
{/testfixture/rc4/cipher_out\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/rc4/clk} \
{/testfixture/rc4/cur_state\[3:0\]} \
{/testfixture/rc4/cipher_write} \
{/testfixture/rc4/plain_read} \
{/testfixture/rc4/plain_in\[7:0\]} \
{/testfixture/rc4/i_new\[5:0\]} \
{/testfixture/rc4/j_new\[5:0\]} \
{/testfixture/rc4/plain_in_valid} \
{/testfixture/rc4/Sbox\[0:63\]} \
{/testfixture/rc4/cipher_out\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 299490.831415 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 299436.788645 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 305655.310099 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectGroup -win $_nWave1 {G2}
wvSelectGroup -win $_nWave1 {G2}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 308800.599340 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 311005.544375 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 305349.067733 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 301367.916976 -snap {("G1" 7)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/rc4/clk} \
{/testfixture/rc4/cur_state\[3:0\]} \
{/testfixture/rc4/cipher_write} \
{/testfixture/rc4/plain_read} \
{/testfixture/rc4/plain_in\[7:0\]} \
{/testfixture/rc4/temp\[5:0\]} \
{/testfixture/rc4/i_new\[5:0\]} \
{/testfixture/rc4/j_new\[5:0\]} \
{/testfixture/rc4/plain_in_valid} \
{/testfixture/rc4/Sbox\[0:63\]} \
{/testfixture/rc4/cipher_out\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvCollapseGroup -win $_nWave1 "G2"
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/rc4/clk} \
{/testfixture/rc4/cur_state\[3:0\]} \
{/testfixture/rc4/cipher_write} \
{/testfixture/rc4/plain_read} \
{/testfixture/rc4/plain_in\[7:0\]} \
{/testfixture/rc4/temp\[5:0\]} \
{/testfixture/rc4/i_new\[5:0\]} \
{/testfixture/rc4/j_new\[5:0\]} \
{/testfixture/rc4/plain_in_valid} \
{/testfixture/rc4/Sbox\[0:63\]} \
{/testfixture/rc4/cipher_out\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvCollapseGroup -win $_nWave1 "G2"
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 313459.086154 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 311783.760269 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 312738.515881 -snap {("G1" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 313044.758247 -snap {("G1" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 314348.990440 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 312943.878408 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 314799.346861 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 316096.373352 -snap {("G1" 11)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 307971.943526 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 322995.833714 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 310726.323394 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 306402.901757 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 307808.013789 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 321516.863229 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 324453.187091 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 308798.797914 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 311050.580016 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 312311.577994 -snap {("G1" 3)}
wvZoom -win $_nWave1 315067.759287 315355.987396
wvResizeWindow -win $_nWave1 45 180 1681 704
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 311028.160980 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 305441.183078 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 305909.365583 -snap {("G1" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 308379.511001 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 314216.186240 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 311438.303373 -snap {("G1" 3)}
wvSelectGroup -win $_nWave1 {G2}
wvSelectGroup -win $_nWave1 {G2}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 314684.368746 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 314778.005247 -snap {("G2" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvGetSignalOpen -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 312312.244050 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 313779.215902 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 308847.693507 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 308629.208337 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 300638.893571 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 305944.961971 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 309034.966509 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 306943.751317 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 299733.740727 -snap {("G1" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 317774.373285 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 309284.663846 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 306631.629646 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 307786.479827 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetCursor -win $_nWave1 298828.587882 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 309034.966509 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 308473.147502 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 308285.874500 -snap {("G1" 8)}
