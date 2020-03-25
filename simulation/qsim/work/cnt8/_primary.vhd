library verilog;
use verilog.vl_types.all;
entity cnt8 is
    port(
        carry           : out    vl_logic;
        clock           : in     vl_logic;
        q               : out    vl_logic_vector(2 downto 0)
    );
end cnt8;
