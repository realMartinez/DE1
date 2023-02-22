library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for mux_3bit_4to1
------------------------------------------------------------
entity mux_3bit_4to1 is
    port(
        sel           : in  std_logic_vector(1 downto 0);
        f_o           : in  std_logic_vector(2 downto 0);
        d_i           : in  std_logic_vector(2 downto 0);
        c_i           : in  std_logic_vector(2 downto 0);
        b_i           : in  std_logic_vector(2 downto 0);
        a_i           : in  std_logic_vector(2 downto 0)
    );
end entity mux_3bit_4to1;

------------------------------------------------------------
-- Architecture body for 2-bit binary comparator
------------------------------------------------------------
architecture Behavioral of mux_3bit_4to1 is
begin

case sel is 
    when "00" => f_o <= a_i;
    when "01" => f_o <= b_i;
    when "10" => f_o <= c_i;
    when "11" => f_o <= d_i;
end case;


end architecture Behavioral;
