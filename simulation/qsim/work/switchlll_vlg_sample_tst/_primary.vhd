library verilog;
use verilog.vl_types.all;
entity switchlll_vlg_sample_tst is
    port(
        clk_500hz       : in     vl_logic;
        key_in          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end switchlll_vlg_sample_tst;
