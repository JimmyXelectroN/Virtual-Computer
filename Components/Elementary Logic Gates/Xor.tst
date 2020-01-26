// Greatman Okonkwo
// Janaury 24, 2020

load Xor.hdl,
compare-to Xor.cmp,
output-file Xor.out,
output-list a b out;

set a 0, set b 0, eval, output;
set a 0, set b 1, eval, output;
set a 1, set b 0, eval, output;
set a 1, set b 1, eval, output;

