\d .memo
C:100h;P:`cache;ac:(0#`)!();cc:(0#`)!0#0h;fs:,:[::]!,(::);et:2!,`f`a`r!(`;::;::)

fn:{$[-11=@x;$[`~*`\:x;x;`/:(."\\d"),x];x]};ns:{$[-11=@x;(x[1]in`,!`)&2=#x:`\:x;0b]};sp:{`/:'0 2_`\:x};ws:{$[(~@x)|11=abs@@x;,x;x]}
sc:{?[x;,(=;`f;ws y);0b;()]};tc:{![x;,(within;`i;(enlist;1;(+;-:1+cc x;(#:;`i))));0b;0#`]};ec:{![x;,(=;`f;ws y);0b;0#`]};ed:{![x;();0b;,y]}
f:{'[{[c;f;n;a]r:?[c;((=;`f;ws n);(~\:;`a;ws a));0b;()];$[#r;**. r;[.[c;();,;(n;a;r:f . a)];tc c;r]]}[x;y;z];enlist]};df:.*..:

init:{d:$[^x;."\\d";$[ns x;x;'`type]];c:0h|$[^y;C;y];n:.Q.dd[dp]$[@!dp:`/:d,P;-1+#!dp;0];cc[n]:c;ac[d],:n;.[n;();:;et]}
mk:{y:$[^y;`;y];fz:fn z;fxy:$[-11=@x;(. x;fn x^y);(x;fn y)];if[^fxy 1;'"null name"];c:$[^fz;$[(d:."\\d")in!ac;:/ac d;'`init];$[fz in,/ac;fz;'`type]];fs[fn x]:fxy 1;.[fxy 1;();:;f . c,fxy]}
rm:{k:fs?fx:fn x;f0:df fx;ec . f0 1 3;fs _:k;$[k~fx;.[f0 3;();:;f0 2];ed . sp fx];k}
mv:{if[~(fy:fn y)in,/ac;'`type];f0:df fn x;.[fy;();,;sc . f0 1 3];tc fy;ec . f0 1 3;.[f0 3;();:;f . fy,f0 2 3]}

initns:init[;::];initcap:init[::]
mkmut:mk[;::;::];mknew:mk[;;::]

cap:{$[^sz:cc fn x;'x;sz]}
rs:{$[(fx:fn x)in,/ac;cc[fx]:0h|y;'`type];tc fx}
