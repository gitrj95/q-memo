\d .memo
cap:100;p:`cache;ac:()!();fs:enlist[::]!enlist(::);et:2!,`f`a`r!(`;::;::)

fn:{$[-11=@x;$[`~*`\:x;x;`/:(."\\d"),x];x]};ns:{(x[1]in`,!`)&2=#x:`\:x};ws:{$[11=abs@@x;,x;x]}
sc:{?[x;,(=;`f;ws y);0b;()]};tc:{![x;,(within;`i;(enlist;1;(+;-:1+cap;(#:;`i))));0b;0#`]};ec:{![x;,(=;`f;ws y);0b;0#`]};ed:{![."\\d";();0b;,x]}
f:{'[{[c;f;n;a]r:?[c;((=;`f;ws n);(~\:;`a;ws a));0b;()];$[#r;**. r;[.[c;();,;(n;a;r:f . a)];tc c;r]]}[x;y;z];enlist]};df:.*..:

init:{d:$[^x;."\\d";$[ns x;x;'x]];i:0;while[~()~!n:.Q.dd/d,p,i;i+:1];ac[d],:n;.[n;();:;et]}
mk:{a:$[-11=@y;$[-11=@x;(. x;x^y);(99<@x)&~^y;(x;y);'`type];'`type];d:."\\d";if[~d in!ac;'`init];c:(:/ac d);fs[fn x]:fn a 1;.[:/a;();:;f . c,a]}
rm:{if[~-11=@x;'`type];$[-11=@l:fs?fx:fn x;$[l~fx;[f0:df l;ec . f0 1 3;fs _:l;.[:/f0;();:;f0 2]];[ec . df[x]1 3;fs _:l;ed x;l]];[ec[df[x]1;x];fs _:l;ed x;l]]}
mv:{if[~11=@x,y;'`type];f0:df x;.[y;();,;sc . f0 1 3];tc y;ec . f0 1 3;.[f0 3;();:;f . y,f0 2 3]}
