library ieee
use ieee.std_logic_1164.all;

entity memoryCell is
  port (
    CLK   : in std_logic;
    D   : in std_logic;
    RESET : in std_logic;
    WE: in std_logic; -- write enable
    OE: in std_logic; -- output enable
    Q  : out std_logic;
    QNOT: out std_logic
    DOUT: out std_logic -- output of tristate buffer stage
  ) ;
end memoryCell

architecture mem of memoryCell is

    signal temp_D: std_logic;
    begin
        temp_D <= ((not WE) and Q) or (WE and D);
        dff_inst: dff
        PORT(
            CLK  => CLK ;
            D => temp_D;
            RESET => RESET;
            Q => Q;
            QNOT => QNOT
        );

        tri_inst: tristate
        PORT(
            A => Q; 
            EN => OE;
            Y => DOUT
        );
end architecture