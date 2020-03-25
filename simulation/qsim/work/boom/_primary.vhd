library verilog;
use verilog.vl_types.all;
entity boom is
    port(
        delay           : out    vl_logic;
        stopalarm       : in     vl_logic;
        clr             : in     vl_logic;
        hz              : in     vl_logic
    );
end boom;
