wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/max.chen/DIC/DIC_HW3/HW3.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/top/X\[7:0\]} \
{/test/top/Y\[9:0\]} \
{/test/top/avg\[11:0\]} \
{/test/top/clk} \
{/test/top/data\[0:8\]} \
{/test/top/flag\[8:0\]} \
{/test/top/i\[31:0\]} \
{/test/top/reset} \
{/test/top/sum\[11:0\]} \
{/test/top/tmp_sum\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/top/X\[7:0\]} \
{/test/top/Y\[9:0\]} \
{/test/top/avg\[11:0\]} \
{/test/top/clk} \
{/test/top/data\[0:8\]} \
{/test/top/flag\[8:0\]} \
{/test/top/i\[31:0\]} \
{/test/top/reset} \
{/test/top/sum\[11:0\]} \
{/test/top/tmp_sum\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvResizeWindow -win $_nWave1 1939 219 1378 403
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 32363.127505 -snap {("G1" 6)}
wvResizeWindow -win $_nWave1 547 305 1378 403
wvSetCursor -win $_nWave1 37703.224803 -snap {("G1" 6)}
wvResizeWindow -win $_nWave1 426 313 1378 403
wvResizeWindow -win $_nWave1 426 313 1378 403
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 114519.012589 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 115029.868077 -snap {("G1" 7)}
wvResizeWindow -win $_nWave1 471 384 1378 672
wvSelectGroup -win $_nWave1 {G2}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/top"
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/top/clk} \
{/test/top/reset} \
{/test/top/out_flag\[7:0\]} \
{/test/top/out_value\[0:7\]} \
{/test/top/X\[7:0\]} \
{/test/top/avg\[11:0\]} \
{/test/top/data\[0:8\]} \
{/test/top/flag\[8:0\]} \
{/test/top/sum\[11:0\]} \
{/test/top/tmp_sum\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/top/clk} \
{/test/top/reset} \
{/test/top/out_flag\[7:0\]} \
{/test/top/out_value\[0:7\]} \
{/test/top/X\[7:0\]} \
{/test/top/avg\[11:0\]} \
{/test/top/data\[0:8\]} \
{/test/top/flag\[8:0\]} \
{/test/top/sum\[11:0\]} \
{/test/top/tmp_sum\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 471 384 1378 672
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetCursor -win $_nWave1 115258.458587 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 119329.913885 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 115320.222004 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 110853.048498 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 123124.320297 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 122074.803630 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 120406.341236 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 119895.038244 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 119518.288671 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 119383.735253 -snap {("G1" 9)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/top/clk} \
{/test/top/reset} \
{/test/top/X\[7:0\]} \
{/test/top/avg\[11:0\]} \
{/test/top/data\[0:8\]} \
{/test/top/flag\[8:0\]} \
{/test/top/sum\[11:0\]} \
{/test/top/tmp_sum\[11:0\]} \
{/test/top/out_flag\[7:0\]} \
{/test/top/out_value\[0:7\]} \
{/test/top/Y\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/top/clk} \
{/test/top/reset} \
{/test/top/X\[7:0\]} \
{/test/top/avg\[11:0\]} \
{/test/top/data\[0:8\]} \
{/test/top/flag\[8:0\]} \
{/test/top/sum\[11:0\]} \
{/test/top/tmp_sum\[11:0\]} \
{/test/top/out_flag\[7:0\]} \
{/test/top/out_value\[0:7\]} \
{/test/top/Y\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 110032.272643 -snap {("G2" 0)}
