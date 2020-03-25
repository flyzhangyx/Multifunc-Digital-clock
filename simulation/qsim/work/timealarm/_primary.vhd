library verilog;
use verilog.vl_types.all;
entity timealarm is
    port(
        alarmlight      : out    vl_logic;
        \alon/off\      : in     vl_logic;
        alarm           : out    vl_logic;
        \1min_ten\      : in     vl_logic_vector(3 downto 0);
        min_ten         : in     vl_logic_vector(3 downto 0);
        aclimb500hz     : in     vl_logic;
        actrclear       : in     vl_logic;
        ldtime          : in     vl_logic;
        min_one         : in     vl_logic_vector(3 downto 0);
        \1min_one\      : in     vl_logic_vector(3 downto 0);
        \1h_one\        : in     vl_logic_vector(3 downto 0);
        h_one           : in     vl_logic_vector(3 downto 0);
        \1h_ten\        : in     vl_logic_vector(3 downto 0);
        h_ten           : in     vl_logic_vector(3 downto 0)
    );
end timealarm;
