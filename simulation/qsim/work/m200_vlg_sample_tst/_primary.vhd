library verilog;
use verilog.vl_types.all;
entity m200_vlg_sample_tst is
    port(
        CLOCK1          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end m200_vlg_sample_tst;
