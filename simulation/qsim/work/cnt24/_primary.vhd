library verilog;
use verilog.vl_types.all;
entity cnt24 is
    port(
        ge              : out    vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        shi             : out    vl_logic_vector(3 downto 0);
        key0            : in     vl_logic
    );
end cnt24;
