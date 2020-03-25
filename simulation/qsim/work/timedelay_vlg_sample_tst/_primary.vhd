library verilog;
use verilog.vl_types.all;
entity timedelay_vlg_sample_tst is
    port(
        clr             : in     vl_logic;
        hz              : in     vl_logic;
        stopalarm       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end timedelay_vlg_sample_tst;
