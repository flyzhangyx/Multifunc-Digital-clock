library verilog;
use verilog.vl_types.all;
entity cntall_vlg_sample_tst is
    port(
        clearall        : in     vl_logic;
        clk             : in     vl_logic;
        h               : in     vl_logic;
        min             : in     vl_logic;
        pause_h         : in     vl_logic;
        pause_min       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end cntall_vlg_sample_tst;
