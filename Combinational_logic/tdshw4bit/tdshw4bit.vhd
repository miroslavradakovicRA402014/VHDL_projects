----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:48:37 08/03/2017 
-- Design Name: 
-- Module Name:    tdshw4bit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tdshw4bit is
    Port ( iSEL : in  STD_LOGIC_VECTOR (2 downto 0);
           iX : in  STD_LOGIC_VECTOR (3 downto 0);
           oY : out  STD_LOGIC_VECTOR (3 downto 0));
end tdshw4bit;

architecture Behavioral of tdshw4bit is

begin
	--Shifting
	process (iSEL,iX) begin
		case (iSEL) is
			when "000" => oY <= oY;
			when "001" => oY <= oY(2 downto 0) & '0';
			when "010" => oY <= oY(1 downto 0) & "00";
			when "011" => oY <= oY(0) & "000";
			when "100" => oY <= oY;
			when "101" => oY <= '0' & oY(3 downto 1);
			when "110" => oY <= "00" & oY(3 downto 2);
			when others => oY <= "000" & oY(3);
		end case;
	end process;

end Behavioral;

