library verilog;
use verilog.vl_types.all;
entity timedelay_vlg_check_tst is
    port(
        delay           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end timedelay_vlg_check_tst;
