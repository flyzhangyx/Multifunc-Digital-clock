library verilog;
use verilog.vl_types.all;
entity chooseseg_vlg_check_tst is
    port(
        timeseg         : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end chooseseg_vlg_check_tst;
