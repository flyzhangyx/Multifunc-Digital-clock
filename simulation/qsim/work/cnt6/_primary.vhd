library verilog;
use verilog.vl_types.all;
entity cnt6 is
    port(
        q               : out    vl_logic_vector(2 downto 0);
        clock           : in     vl_logic
    );
end cnt6;
