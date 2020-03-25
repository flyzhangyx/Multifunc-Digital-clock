library verilog;
use verilog.vl_types.all;
entity cntall_vlg_check_tst is
    port(
        h_one           : in     vl_logic_vector(3 downto 0);
        h_ten           : in     vl_logic_vector(3 downto 0);
        min_one         : in     vl_logic_vector(3 downto 0);
        min_ten         : in     vl_logic_vector(3 downto 0);
        sec_one         : in     vl_logic_vector(3 downto 0);
        sec_ten         : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end cntall_vlg_check_tst;
