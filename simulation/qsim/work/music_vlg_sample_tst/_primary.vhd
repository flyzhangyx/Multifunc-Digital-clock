library verilog;
use verilog.vl_types.all;
entity music_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end music_vlg_sample_tst;
