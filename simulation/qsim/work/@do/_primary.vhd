library verilog;
use verilog.vl_types.all;
entity Do is
    port(
        clik_250hz      : out    vl_logic;
        clik            : in     vl_logic
    );
end Do;
