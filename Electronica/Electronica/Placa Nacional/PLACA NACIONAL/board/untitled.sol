%!PS-Adobe-3.0 EPSF-3.0
%%Title: EAGLE Drawing C:/Users/seesg/Google Drive/ROBORREGOS/Placa/PLACA NACIONAL (1)/board/untitled.brd
%%Creator: EAGLE
%%Pages: 1
%%BoundingBox: 0 0 546 517
%%EndComments

% Coordinate transfer:

/EU { 254 div 0.072 mul } def
/inch { 72 mul } def

% Linestyle:

1 setlinecap
1 setlinejoin

% Drawing functions:

/l {  % draw a line
   /lw exch def
   /y2 exch def
   /x2 exch def
   /y1 exch def
   /x1 exch def
   newpath
   x1 EU y1 EU moveto
   x2 EU y2 EU lineto
   lw EU setlinewidth
   stroke
   } def

/h {  % draw a hole
   /d  exch def
   /y  exch def
   /x  exch def
   d 0 gt {
     newpath
     x EU y EU d 2 div EU 0 360 arc
     currentgray dup
     1 exch sub setgray
     fill
     setgray
     } if
   } def

/b {  % draw a bar
   /an exch def
   /y2 exch def
   /x2 exch def
   /y1 exch def
   /x1 exch def
   /w2 x2 x1 sub 2 div EU def
   /h2 y2 y1 sub 2 div EU def
   gsave
   x1 x2 add 2 div EU y1 y2 add 2 div EU translate
   an rotate
   newpath
   w2     h2     moveto
   w2 neg h2     lineto
   w2 neg h2 neg lineto
   w2     h2 neg lineto
   closepath
   fill
   grestore
   } def

/c {  % draw a circle
   /lw exch def
   /rd exch def
   /y  exch def
   /x  exch def
   newpath
   lw EU setlinewidth
   x EU y EU rd EU 0 360 arc
   stroke
   } def

/a {  % draw an arc
   /lc exch def
   /ae exch def
   /as exch def
   /lw exch def
   /rd exch def
   /y  exch def
   /x  exch def
   lw rd 2 mul gt {
     /rd rd lw 2 div add 2 div def
     /lw rd 2 mul def
     } if
   currentlinecap currentlinejoin
   lc setlinecap 0 setlinejoin
   newpath
   lw EU setlinewidth
   x EU y EU rd EU as ae arc
   stroke
   setlinejoin setlinecap
   } def

/p {  % draw a pie
   /d exch def
   /y exch def
   /x exch def
   newpath
   x EU y EU d 2 div EU 0 360 arc
   fill
   } def

/edge { 0.20710678119 mul } def

/o {  % draw an octagon
   /an exch def
   /dy exch def
   /dx exch def
   /y  exch def
   /x  exch def
   gsave
   x EU y EU translate
   an dx dy lt { 90 add /dx dy /dy dx def def } if rotate
   newpath
      0 dx 2 div sub EU                    0 dy edge  add EU moveto
      0 dx dy sub 2 div sub dy edge sub EU 0 dy 2 div add EU lineto
      0 dx dy sub 2 div add dy edge add EU 0 dy 2 div add EU lineto
      0 dx 2 div add EU                    0 dy edge  add EU lineto
      0 dx 2 div add EU                    0 dy edge  sub EU lineto
      0 dx dy sub 2 div add dy edge add EU 0 dy 2 div sub EU lineto
      0 dx dy sub 2 div sub dy edge sub EU 0 dy 2 div sub EU lineto
      0 dx 2 div sub EU                    0 dy edge  sub EU lineto
   closepath
   fill
   grestore
   } def

670001 60000 670001 670001 4064 l
80000 0 1820000 0 4064 l
670001 60000 1230000 60000 4064 l
1230000 60000 1230000 349999 4064 l
940001 349999 1230000 349999 4064 l
940001 349999 940001 670001 4064 l
670001 670001 940001 670001 4064 l
80000 0 80000 210000 4064 l
0 210000 80000 210000 4064 l
0 210000 0 1710000 4064 l
0 1710000 80000 1710000 4064 l
80000 1710000 80000 1810000 4064 l
80000 1810000 1820000 1810000 4064 l
1820000 1810000 1820000 1710000 4064 l
1820000 1710000 1899999 1710000 4064 l
1899999 1710000 1899999 1422400 4064 l
1899999 838200 1899999 210000 4064 l
1899999 210000 1820000 210000 4064 l
1820000 210000 1820000 0 4064 l
140000 1750000 16000 0 c
339999 1750000 16000 0 c
1570000 1750000 16000 0 c
1760000 1750000 16000 0 c
1570000 60000 16000 0 c
1760000 60000 16000 0 c
140000 60000 16000 0 c
339999 60000 16000 0 c
1899999 1422400 1282700 1422400 4064 l
1282700 1422400 1282700 838200 4064 l
1282700 838200 1899999 838200 4064 l
101600 1790700 368300 1790700 4064 l
368300 1790700 368300 1714500 4064 l
368300 1714500 101600 1714500 4064 l
101600 1714500 101600 1790700 4064 l
101600 1716278 368300 1716278 4064 l
101600 1719961 368300 1719961 4064 l
101600 1723644 368300 1723644 4064 l
101600 1727327 368300 1727327 4064 l
101600 1731010 368300 1731010 4064 l
101600 1734693 368300 1734693 4064 l
101600 1738376 368300 1738376 4064 l
101600 1742059 368300 1742059 4064 l
101600 1745742 368300 1745742 4064 l
101600 1749425 368300 1749425 4064 l
101600 1753108 368300 1753108 4064 l
101600 1756791 368300 1756791 4064 l
101600 1760474 368300 1760474 4064 l
101600 1764157 368300 1764157 4064 l
101600 1767840 368300 1767840 4064 l
101600 1771523 368300 1771523 4064 l
101600 1775206 368300 1775206 4064 l
101600 1778889 368300 1778889 4064 l
101600 1782572 368300 1782572 4064 l
101600 1786255 368300 1786255 4064 l
101600 1789938 368300 1789938 4064 l
1536700 1790700 1803400 1790700 4064 l
1803400 1790700 1803400 1714500 4064 l
1803400 1714500 1536700 1714500 4064 l
1536700 1714500 1536700 1790700 4064 l
1536700 1716278 1803400 1716278 4064 l
1536700 1719961 1803400 1719961 4064 l
1536700 1723644 1803400 1723644 4064 l
1536700 1727327 1803400 1727327 4064 l
1536700 1731010 1803400 1731010 4064 l
1536700 1734693 1803400 1734693 4064 l
1536700 1738376 1803400 1738376 4064 l
1536700 1742059 1803400 1742059 4064 l
1536700 1745742 1803400 1745742 4064 l
1536700 1749425 1803400 1749425 4064 l
1536700 1753108 1803400 1753108 4064 l
1536700 1756791 1803400 1756791 4064 l
1536700 1760474 1803400 1760474 4064 l
1536700 1764157 1803400 1764157 4064 l
1536700 1767840 1803400 1767840 4064 l
1536700 1771523 1803400 1771523 4064 l
1536700 1775206 1803400 1775206 4064 l
1536700 1778889 1803400 1778889 4064 l
1536700 1782572 1803400 1782572 4064 l
1536700 1786255 1803400 1786255 4064 l
1536700 1789938 1803400 1789938 4064 l
101600 101600 368300 101600 4064 l
368300 101600 368300 25400 4064 l
368300 25400 101600 25400 4064 l
101600 25400 101600 101600 4064 l
101600 25781 368300 25781 4064 l
101600 29464 368300 29464 4064 l
101600 33147 368300 33147 4064 l
101600 36830 368300 36830 4064 l
101600 40513 368300 40513 4064 l
101600 44196 368300 44196 4064 l
101600 47879 368300 47879 4064 l
101600 51562 368300 51562 4064 l
101600 55245 368300 55245 4064 l
101600 58928 368300 58928 4064 l
101600 62611 368300 62611 4064 l
101600 66294 368300 66294 4064 l
101600 69977 368300 69977 4064 l
101600 73660 368300 73660 4064 l
101600 77343 368300 77343 4064 l
101600 81026 368300 81026 4064 l
101600 84709 368300 84709 4064 l
101600 88392 368300 88392 4064 l
101600 92075 368300 92075 4064 l
101600 95758 368300 95758 4064 l
101600 99441 368300 99441 4064 l
1524000 101600 1790700 101600 4064 l
1790700 101600 1790700 25400 4064 l
1790700 25400 1524000 25400 4064 l
1524000 25400 1524000 101600 4064 l
1524000 25781 1790700 25781 4064 l
1524000 29464 1790700 29464 4064 l
1524000 33147 1790700 33147 4064 l
1524000 36830 1790700 36830 4064 l
1524000 40513 1790700 40513 4064 l
1524000 44196 1790700 44196 4064 l
1524000 47879 1790700 47879 4064 l
1524000 51562 1790700 51562 4064 l
1524000 55245 1790700 55245 4064 l
1524000 58928 1790700 58928 4064 l
1524000 62611 1790700 62611 4064 l
1524000 66294 1790700 66294 4064 l
1524000 69977 1790700 69977 4064 l
1524000 73660 1790700 73660 4064 l
1524000 77343 1790700 77343 4064 l
1524000 81026 1790700 81026 4064 l
1524000 84709 1790700 84709 4064 l
1524000 88392 1790700 88392 4064 l
1524000 92075 1790700 92075 4064 l
1524000 95758 1790700 95758 4064 l
1524000 99441 1790700 99441 4064 l
