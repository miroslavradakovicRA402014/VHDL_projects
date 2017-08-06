----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:10:33 08/03/2017 
-- Design Name: 
-- Module Name:    shw4bit - Behavioral 
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

entity shw4bit is
    Port ( iSEL : in  STD_LOGIC_VECTOR (2 downto 0);
           iX : in  STD_LOGIC_VECTOR (3 downto 0);
			  iEN : in std_logic;
           oY : out  STD_LOGIC_VECTOR (3 downto 0));
end shw4bit;

architecture Behavioral of shw4bit is

begin

	--Shifting
	process (iEN,iX,iSEL) begin
		if (iEN = '0') then 
			--Shifting disabled
			oY <= "0000";
		else 
			--Shifting enabled 
			case (iSEL) is
				when "000" => oY <= oY;
				when "001" => oY <= oY(2 downto 0) & '0';
				when "010" => oY <= '0' & oY(3 downto 1);
				when "011" => oY <= oY(2 downto 0) & oY(3);
				when "100" => oY <= oY(0) & oY(3 downto 1);
				when "101" => oY <= oY(3) & oY(1 downto 0) & '0';
				when "110" => oY <= oY(3) & oY(3) & oY(2 downto 1);
				when others => oY <=  oY(3) & oY(1 downto 0) & oY(2);
			end case;
		end if;	
	end process;

end Behavioral;

