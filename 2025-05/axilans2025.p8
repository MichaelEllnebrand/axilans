pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
-- axilans 2025
-- 2025-05-09 ... 2025-05-11

#include main.lua

#include ..\common\starfield_sideways.lua
#include ..\common\text.lua

#include bars.lua
#include logo.lua

__gfx__
40000000000033333000000000000000000000000033333333300000000000033333033333300000033333333300000000000000000333333000000000000000
50000000003332233300000000300000000003333333332222300000000333333223333223330033333322222330000033333333303333333333300000000000
60000000033222222330000003333000000333222222222222333000333322222223322222233332222222222230000332222222333222222222333000000000
70000000332222222233000033223300000322222222222222323303332222222223222222223322222222222233003322222222233222222222223330000000
70000000322222222223300332223300003322222222222222322333222222222233222222222332222222222223003222222222223322222222222233000000
60000003322222222222303322222330033222222222222222322332222222222232222222222232222222222223033222222222223322222222222223100000
50000003222222222222333222222230032222222222222223322322222222222232222222222233222222222223332222222222222322222222222223110000
40000033222222222222233222222233032222222222222223223322222222222232222222222233322222222222332222222222222332222222222223110000
80000032222222222222223222222223332222222222222223333322222222222332222222222223322222222222322222222222222332222222222231110000
90000032222222222222223322222222332222222222222233111333222222222332222222222222332222222222322222222222223322222222222331100000
a0000332222222222222223322222222232222222222222231113333222222222322222222222222332222222222222222222222223322222222222311100000
b0000332222222222222222332222222222222222222222331133323222222222322222222222222333222222222222222222222223222333222223111000000
b0000322222222222222222232222222222222222222222333332223322222223322222222222222233222222222222222222222233222223332231110000000
a0000322222222222222222232222222222222222222223322222223322222223322222222222222223222222222222222222222232222222233331110000000
90000322222222222222222233222222222222222222223222222223322222223222222222222222223322222222222222222222232222222222331100000000
80000322222222222222222223332222222222222222233222222223322222223222222232222222222332222222222222222222232222222222233100000000
c0003322222223322222222223133322222222222222333222222223322222233222222313222222222332222222222222222222232222222222223100000000
d0003322222231322222222223113322222222222223313222222223322222233222223311322222222332222222222222222222332222222222222310000000
e0003322222311132222222223333222222222222233113222222223222222233333333111322222222332222222222222222222333222222222222330000000
f0003322222311332222222222332222222222222231113222222223222222233333333333222222222232222222222222222222323322222222222231000000
f0003222222333222222222222322222222222222223333222222223222222222222233222222222222232222222222222222222322332222222222231100000
e0003222222222222222222222332222222222222222233222222233222222222222223222222222222233222222222222222223322222222222222231100000
d0003222222222332222222222332222222222222222223322222233222222222222223222222222222233222232222222222223322222222222222231100000
c0033222222223333222222222332222222222222222222332222232222222222222223233322222222233222232222222222223322222222222222311100000
00033222222233113322222222332222222232222222222232222332222222222222223331332222222223222233222222222223222222222222223311000000
00333222222231111322222222232222222333222222222332222332222222222222223111132222222223222233222222222223222222222222223111000000
00332222222331101322222222232222223313322222223322223333222222222222223110132222222223222233322222222223222222222222331110000000
03322222223331001132222222232222233111333222233222223111332222222222233100113222222223222231322222222233222222222233311100000000
03322222233311000133222222333222331111113333332222233111133222222233331100013322222223222331332222222233222222223331111000000000
03333333333111000113333333313333311100111113333333333101113333333333311100011333333333333311133322233311333333331111110000000000
01111111111110000011111111111111111000001111111113331100111111111111111000001111111111111111111133331111111111111111000000000000
00111111111000000001111111110001110000000001111111111000111111111111100000000111111111111110011111111110001111111000000000000000
00000000000077777000000000000000000000000077777777700000000000077777077777700000077777777700000000000000000777777000000000000000
00000000007773377700000000700000000007777777777333700000000777777337777337770077777733333770000077777777707777777777700000000000
00000000077333333770000007777000000777333333333333777000777733333337733333377773333333333370000773333333777333333333777000000000
00000000773333333377000077337700000733333333333333737707773333333337333333337733333333333377007733333333377333333333337770000000
00000000733333333337700773337700007733333333333333733777333333333377333333333773333333333337007333333333337733333333333377000000
00000007733333333333707733333770077333333333333333733773333333333373333333333373333333333337707333333333337733333333333337500000
00000007333333333333777333333370073333333333333337733733333333333373333333333377333333333337777333333333337733333333333337550000
00000077333333333333377333333377073333333333333337337733333333333373333333333377733333333333773333333333337773333333333337550000
00000073333333333333337333333337773333333333333337777733333333333773333333333337733333333333773333333333337773333333333375550000
00000073333333333333337733333333773333333333333377555777333333333773333333333333773333333333733333333333337733333333333775500000
00000773333333333333337733333333373333333333333375557777333333333733333333333333773333333333333333333333337733333333333755500000
00000773333333333333333773333333333333333333333775577737333333333733333333333333777333333333333333333333337333777333337555000000
00000733333333333333333373333333333333333333333777773337733333337733333333333333377333333333333333333333377333337773375550000000
00000733333333333333333373333333333333333333337733333337733333337733333333333333337373333333333333333333373333333377775550000000
00000733333333333333333377333333333333333333337333333337733333337333333333333333337773333333333333333333373333333333775500000000
00000733333333333333333337773333333333333333377333333337733333337333333373333333333773333333333333333333373333333333377500000000
00007733333337733333333337577733333333333333777333333337733333377333333757333333333773333333333333333333373333333333337500000000
00007733333375733333333337557733333333333337757333333337733333377333337755733333333773333333333333333333773333333333333750000000
00007733333755573333333337777333333333333377557333333337333333377777777555733333333773333333333333333333777333333333333770000000
00007733333755773333333333773333333333333375557333333337333333377777777777333333333373333333333333333333737733333333333375000000
00007333333777333333333333733333333333333337777333333337333333333333377333333333333373333333333333333333733773333333333375500000
00007333333333333333333333773333333333333333377333333377333333333333337333333333333377333333333333333337733333333333333375500000
00007333333333773333333333773333333333333333337733333377333333333333337333333333333377333373333333333337733333333333333375500000
00077333333337777333333333773333333333333333333773333373333333333333337377733333333377333373333333333337733333333333333755500000
00077333333377557733333333773333333373333333333373333773333333333333337775773333333337333377333333333337333333333333337755000000
00777333333375555733333333373333333777333333333773333773333333333333337555573333333337333377333333333337333333333333337555000000
00773333333775505733333333373333337757733333337733337777333333333333337550573333333337333377733333333337333333333333775550000000
07733333337775005573333333373333377555777333377333337555773333333333377500557333333337333375733333333377333333333377755500000000
07733333377755000577333333777333775555557777773333377555577333333377775500057733333337333775773333333377333333337775555000000000
07777777777555000557777777757777755500555557777777777505557777777777755500055777777777777755577733377755777777775555550000000000
05555555555550000055755555555555555000005555555557775500555555555555555000005555555555555555555577775555555555555555000000000000
00555555555000000005555555550005550000000005555555555000555555555555500000000555555555555550055555555550005555555000000000000000
