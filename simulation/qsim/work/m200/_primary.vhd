library verilog;
use verilog.vl_types.all;
entity m200 is
    port(
        carry           : out    vl_logic;
        CLOCK1          : in     vl_logic
    );
end m200;
