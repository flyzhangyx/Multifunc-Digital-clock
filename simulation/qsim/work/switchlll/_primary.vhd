library verilog;
use verilog.vl_types.all;
entity switchlll is
    port(
        key_out         : out    vl_logic;
        clk_500hz       : in     vl_logic;
        key_in          : in     vl_logic
    );
end switchlll;
