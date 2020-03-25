library verilog;
use verilog.vl_types.all;
entity dig_select is
    port(
        dig             : out    vl_logic_vector(5 downto 0);
        add             : in     vl_logic_vector(2 downto 0)
    );
end dig_select;
