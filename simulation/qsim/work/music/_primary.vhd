library verilog;
use verilog.vl_types.all;
entity music is
    port(
        music           : out    vl_logic;
        clk             : in     vl_logic
    );
end music;
