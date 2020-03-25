library verilog;
use verilog.vl_types.all;
entity chooseseg is
    port(
        timeseg         : out    vl_logic_vector(6 downto 0);
        seg2            : in     vl_logic_vector(6 downto 0);
        swi             : in     vl_logic;
        seg1            : in     vl_logic_vector(6 downto 0)
    );
end chooseseg;
