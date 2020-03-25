library verilog;
use verilog.vl_types.all;
entity choose is
    port(
        outputdig       : out    vl_logic_vector(5 downto 0);
        dig1            : in     vl_logic_vector(5 downto 0);
        switch          : in     vl_logic;
        dig2            : in     vl_logic_vector(5 downto 0)
    );
end choose;
