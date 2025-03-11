pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
-- axlan 2019
-- 2019-10-25 ... 2019-10-27

#include main.lua

#include logo.lua
#include starfield.lua
#include text.lua

__gfx__
00000000500000505677776557650000056665000556555005675675567777650000000056666550055655500000000000000000000000000000000000000000
00000000750005756777765057650000567777505677676556777775677776500000000067777775567767650000000000000000000000000000000000000000
00700700760505757655500056750000675550005765567557757575765550000000000077676550576556750000000000000000000000000000000000000000
00077000675656757766000056750000675005555750057567505575776600000000000066576500575005750000000000000000000000000000000000000000
00077000575757757777500057655550675056755750567577505675777750000000000000576500575056750000000000000000000000000000000000000000
00700700577757607655000057766775567557605655576577505675765500000000000000576500565557650000000000000000000000000000000000000000
00000000576776506777765056677665056776500567775066500565677776500000000000575000056777500000000000000000000000000000000000000000
00000000050550000555550005555550005555000055550055000050055555000000000000050000005555000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
05655500555555000566650067777500567777650567775056777775675057650055755000056750676567755765000005675675056500600556555000677750
56777750777776505677775056756750677776505677777567767750765006750567776500005760675776505765000056777775057505755677676506765775
67765575675557506755500057655675765550005766555077655500676555750055755000005675577650005675000057757575567656755765567567755775
67755675677775006750055557500575776600007755500067505550577777750005750000000575577755005675000067505575575757505750057567777750
77777675675576006750567557505675777750006777650057557765577666750055750006005675575676505765555077505675675767505750567567655500
77765575675567505675576067567750765500007765500056655575576506750565765067556760775567655776677577505675765677505655576577500000
67600675777777500567765077776500677776507750000005777750675007655677777556777500665056505667766566500565750575000567775076500000
05000050555555000055550055555000055555005500000000555500050005500555555005555000550005000555555055000050500050000055550055000000
05777500677776505677750056666550676505755650055050000050750056657500567567777650000000000000000006777765055655500056750000677750
57757650766657756765676567777775776505757765567575000575675567506755576556666765000000000000000067666675567767650567750006765775
67556765765557757655550077676550775005756775576576050575577775005676575005557650000000000000000000005750576556750056750067755775
67556750777777505777650066576500675056755675675067565675057600000567760005567500000000000000000005667500575005750006750006777770
67567650775577500555765000576500675057650575765057575775067750000057650056765000000000000000000006765000575056750057650000655570
57776750675567505655676500576500575557500577750057775760675675000576500067555550000000000000000067555550565557650057665000056750
06775765567557756777765000575000567776500567500057677650765576505765000077777775000000000000000067777770056777500577776500056750
05550550055005505555550000050000055555000055000005055000550055000550000055555550000000000000000055555550005555000055555000567500
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000011111000000000000000000000100000000000011111000000011111000002222220000000022222000000000002222220000000
0000000000000000000000001ddd1000000000000000000001d1000000000001ddd100000001ddd100022eeeeee220000002eee200000000022eeeeee2200000
0000000000000000000000001ccd1000000000000000000001cd100000000001ccd100000001ccd1002ee888888ee200000288e2000000002ee888888ee20000
0000000000000000000000001ccd1000000000000000000001cd100000000001ccdd10000001ccd102e8888888888e20000288e200000002e8888888888e2000
0000000000000000000000001ccd100000000000000000001cccd10000000001ccccd1000001ccd102e8822222288e20000288e200000002e8822222288e2000
0000000000000000000000001ccd100000000000000000001cccd10000000001ccccd1000001ccd102882000000288e2000288e200000002882000000288e200
0000000000000000000000001ccd10000000000000000001ccdccd1000000001ccccd1000001ccd102882000000288e2000288e200000002882000000288e200
0000000000000000000000001ccd10000000000000000001ccdccd1000000001ccdccd100001ccd1002200000000288e200288e2000000002200000000288e20
0000000000000000000000001ccd10000000000000000001ccdccd1000000001ccdccd100001ccd1000000000000288e200288e2000000000000000000288e20
0000000000000000000000001ccd1000000000000000001ccd11ccd100000001ccdccd100001ccd1000000000000288e200288e2000000000000000000288e20
0000000000000000000000001ccd1000000000000000001ccd11ccd100000001ccd1ccd10001ccd10000000000000288e20288e20000000000000000000288e2
0000000000000000000000001ccd1000000000000000001ccd11ccd100000001ccd1ccd10001ccd10000000000000288e20288e20000000000000000000288e2
0000000000000000000000001ccd100000000000000001ccd1001ccd10000001ccd1ccd10001ccd10000000000000288e20288e20000000000000000000288e2
0000000000000000000000001ccd100000000000000001ccd1001ccd10000001ccd11ccd1001ccd1000000000000288e200288e2000000000000000000288e20
0000000000000000000000001ccd100000000000000001ccd1001ccd10000001ccd11ccd1001ccd1000000000000288e200288e2000000000000000000288e20
0000111100000011000011001ccd10000000000000001ccd100001ccd1000001ccd11ccd1001ccd1000000000000288e200288e2000000000000000000288e20
0001cccc100001cd1001cd101ccd10000000000000001ccd100001ccd1000001ccd101ccd101ccd100000000000288e2000288e200000000000000000288e200
001cddddc10001cd1001cd101ccd10000000000000001ccd111111ccd1000001ccd101ccd101ccd100000000000288e2000288e200000000000000000288e200
01cd1111dc10001cd11cd1001ccd1000000000000001ccdddddddddccd100001ccd101ccd101ccd10000000000288e20000288e20000000000000000288e2000
001100001dc1001cd11cd1001ccd1000000000000001cccccccccccccd100001ccd1001ccd11ccd10000000000288e20000288e20000000000000000288e2000
000001111dc10001cdcd10001ccd1000000000000001cccccccccccccd100001ccd1001ccd11ccd1000000000288e200000288e2000000000000000288e20000
00011cccccc10001cdcd10001ccd100000000000001ccd1111111111ccd10001ccd1001ccd11ccd100000000288e2000000288e200000000000000288e200000
001ccdddddc100001cd100001ccd100000000000001ccd1000000001ccd10001ccd10001ccd1ccd10000000288e20000000288e20000000000000288e2000000
01ccd1111dc100001cd100001ccd100000000000001ccd1000000001ccd10001ccd10001ccd1ccd1000000288e200000000288e2000000000000288e20000000
1ccd10001dc10001cdcd10001ccd10000000000001ccd100000000001ccd1001ccd10001ccd1ccd100000288e2000000000288e200000000000288e200000000
1cd10001dc100001cdcd10001ccd10000000000001ccd100000000001ccd1001ccd100001ccdccd10000288e20000000000288e20000000000288e2000000000
1cd10001dc10001cd11cd1001ccd11111111111001ccd100000000001ccd1001ccd100001ccdccd1000288e222222222220288e2000000000000000000000000
01cd111dcdc1001cd11cd1001ccddddddddddd101ccd10000000000001ccd101ccd100001ccdccd100288eeeeeeeeeeee20288e2000000000000000000000000
01ccdddd11c111cd1001cd101ccccccccccccd101ccd10000000000001ccd101ccd1000001ccccd10288888888888888e20288e2000000000000000000000000
0011cccc11dc11cd1001cd101ccccccccccccd101ccd10000000000001ccd101ccd1000001ccccd10288888888888888e20288e2000000000000000000000000
00001111001100110000110011111111111111101111100000000000011111011111000001111111022222222222222222022222000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000111110000000000000000000001000000000000111110000000111110000022222200000000002222200000222220000002222220000000
000000000000000001ddd1000000000000000000001d1000000000001ddd100000001ddd100022eeeeee22000000002eeee200002eee2000022eeeeee2200000
000000000000000001ccd1000000000000000000001cd100000000001ccd100000001ccd1002ee888888ee20000002e8888e2000288e20002ee888888ee20000
000000000000000001ccd1000000000000000000001cd100000000001ccdd10000001ccd102e8888888888e200002e888888e200288e200028888888888e2000
000000000000000001ccd100000000000000000001cccd10000000001ccccd1000001ccd102e8822222288e20000288822888e20288e200028822222288e2000
000000000000000001ccd100000000000000000001cccd10000000001ccccd1000001ccd102882000000288e2000288e20288e20288e200288e200000288e200
000000000000000001ccd10000000000000000001ccdccd1000000001ccccd1000001ccd102882000000288e2000288e20288e20288e200288e200000288e200
000000000000000001ccd10000000000000000001ccdccd1000000001ccdccd100001ccd1002200000000288e200288e20288e20288e20288e20000000288e20
011000000000011001ccd10000000000000000001ccdccd1000000001ccdccd100001ccd1000000000000288e200288e20288e20288e20288e20000000288e20
1dd1100000011dd101ccd1000000000000000001ccd11ccd100000001ccdccd100001ccd1000000000000288e200288e20288e20288e20288e20000000288e20
1ccdd110011ddcc101ccd1000000000000000001ccd11ccd100000001ccd1ccd10001ccd10000000000000288e20288e20288e20288e200288e20000022888e2
011ccdd11ddcc11001ccd1000000000000000001ccd11ccd100000001ccd1ccd10001ccd10000000000000288e20288e20288e20288e200288e220022ee888e2
00011ccddcc1100001ccd100000000000000001ccd1001ccd10000001ccd1ccd10001ccd10000000000000288e20288e20288e20288e2000288ee22ee88888e2
00011ddccdd1100001ccd100000000000000001ccd1001ccd10000001ccd11ccd1001ccd1000000000000288e200288e20288e20288e200028888ee888888e20
011ddcc11ccdd11001ccd100000000000000001ccd1001ccd10000001ccd11ccd1001ccd1000000000000288e200288e20288e20288e20000228888882288e20
1ddcc110011ccdd101ccd10000000000000001ccd100001ccd1000001ccd11ccd1001ccd1000000000000288e200288e20288e20288e20000002288222288e20
1cc1100000011cc101ccd10000000000000001ccd100001ccd1000001ccd101ccd101ccd100000000000288e2000288e20288e20288e2000000002200288e200
011000000000011001ccd10000000000000001ccd111111ccd1000001ccd101ccd101ccd100000000000288e2000288e20288e20288e2000000000000288e200
000000000000011001ccd1000000000000001ccdddddddddccd100001ccd101ccd101ccd10000000000288e20000288e20288e20288e2000000000000288e200
00001111110011c101ccd1000000000000001cccccccccccccd100001ccd1001ccd11ccd10000000000288e20000288e20288e20288e200000000000088e2000
0001cccccc11ccd101ccd1000000000000001cccccccccccccd100001ccd1001ccd11ccd1000000000288e200000288e20288e20288e200000000000088e2000
001cddcdddccd11001ccd100000000000001ccd1111111111ccd10001ccd1001ccd11ccd100000000288e2000000288e20288e20288e200000000000088e2000
01cd11cd11ddc11001ccd100000000000001ccd1000000001ccd10001ccd10001ccd1ccd10000000288e20000000288e20288e20288e20000000000288e20000
1cd101cd1011ddc101ccd100000000000001ccd1000000001ccd10001ccd10001ccd1ccd1000000288e200000000288e20288e20288e20000000000288e20000
1cd101cd10001dc101ccd10000000000001ccd100000000001ccd1001ccd10001ccd1ccd100000288e2000000000288e20288e20288e20000000000288e20000
1cd101cd10001dc101ccd10000000000001ccd100000000001ccd1001ccd100001ccdccd10000288e20000000000288e20288e20288e2000000000288e200000
1cd1001cd1001dc101ccd11111111111001ccd100000000001ccd1001ccd100001ccdccd1000288e222222222220288e22e88e20288e2000000000288e200000
01cd101ccd11dc1001ccddddddddddd101ccd10000000000001ccd101ccd100001ccdccd100288eeeeeeeeeeee202888ee888e20288e2000000000288e200000
001c1001ccddcc1001ccccccccccccd101ccd10000000000001ccd101ccd1000001ccccd10288888888888888e2002888888e200288e200000000288e2000000
000100001ccc110001ccccccccccccd101ccd10000000000001ccd101ccd1000001ccccd10288888888888888e200028888e2000288e200000000288e2000000
00000000011100000111111111111111011111000000000000111110111110000011111110222222222222222220000222220000222220000000022222000000
