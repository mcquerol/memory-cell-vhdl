library ieee
use ieee.std_logic_1164.all;

entity dff is
  port (
    CLK   : in std_logic;
    D   : in std_logic;
    RESET : in std_logic;
    Q  : out std_logic;
    QNOT: out std_logic
  );
end dff;

architecture behv of dff is
begin

  process(CLK, RESET)
  begin
    if (RESET = '1') then
      Q <= '0';
      QNOT <= '1';
    elsif rising_edge(CLK) then
      Q <= D;
      QNOT <= not D;
    end if;
  end process;

end behv;
