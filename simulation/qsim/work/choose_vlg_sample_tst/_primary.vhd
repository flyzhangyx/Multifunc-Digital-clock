library verilog;
use verilog.vl_types.all;
entity choose_vlg_sample_tst is
    port(
        dig1            : in     vl_logic_vector(5 downto 0);
        dig2            : in     vl_logic_vector(5 downto 0);
        switch          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end choose_vlg_sample_tst;
