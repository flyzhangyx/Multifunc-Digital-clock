library verilog;
use verilog.vl_types.all;
entity chooseseg_vlg_sample_tst is
    port(
        seg1            : in     vl_logic_vector(6 downto 0);
        seg2            : in     vl_logic_vector(6 downto 0);
        swi             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end chooseseg_vlg_sample_tst;
