library verilog;
use verilog.vl_types.all;
entity alarnswitch is
    port(
        \out\           : out    vl_logic;
        alarmon         : in     vl_logic;
        \500hz\         : in     vl_logic;
        clr1            : in     vl_logic
    );
end alarnswitch;
