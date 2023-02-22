library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for mux_3bit_4to1
------------------------------------------------------------
entity comparator_2bit is
    port(
        b_i           : in  std_logic_vector(1 downto 0);
        a_i           : in  std_logic_vector(1 downto 0);
        B_less_A_o    : out std_logic  -- B is less than A
    );
end entity comparator_2bit;

------------------------------------------------------------
-- Architecture body for 2-bit binary comparator
------------------------------------------------------------
architecture Behavioral of comparator_2bit is
begin
--    B_greater_A_o <= -- WRITE "GREATER" ASSIGNMENT HERE
--    B_equals_A_o  <= -- WRITE "EQUALS" ASSIGNMENT HERE
    B_less_A_o    <= '1' when (b_i < a_i) else '0';

end architecture Behavioral;
