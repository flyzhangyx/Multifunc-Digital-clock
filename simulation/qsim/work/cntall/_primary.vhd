library verilog;
use verilog.vl_types.all;
entity cntall is
    port(
        h_one           : out    vl_logic_vector(3 downto 0);
        clearall        : in     vl_logic;
        pause_h         : in     vl_logic;
        h               : in     vl_logic;
        pause_min       : in     vl_logic;
        min             : in     vl_logic;
        clk             : in     vl_logic;
        h_ten           : out    vl_logic_vector(3 downto 0);
        min_one         : out    vl_logic_vector(3 downto 0);
        min_ten         : out    vl_logic_vector(3 downto 0);
        sec_one         : out    vl_logic_vector(3 downto 0);
        sec_ten         : out    vl_logic_vector(3 downto 0)
    );
end cntall;
