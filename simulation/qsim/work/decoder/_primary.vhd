library verilog;
use verilog.vl_types.all;
entity decoder is
    port(
        seg             : out    vl_logic_vector(6 downto 0);
        d               : in     vl_logic_vector(3 downto 0)
    );
end decoder;
