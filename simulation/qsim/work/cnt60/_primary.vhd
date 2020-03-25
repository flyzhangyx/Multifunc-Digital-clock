library verilog;
use verilog.vl_types.all;
entity cnt60 is
    port(
        carry           : out    vl_logic;
        shi             : out    vl_logic_vector(3 downto 0);
        ge              : out    vl_logic_vector(3 downto 0);
        clik            : in     vl_logic;
        \star/stop\     : in     vl_logic;
        clear           : in     vl_logic
    );
end cnt60;
