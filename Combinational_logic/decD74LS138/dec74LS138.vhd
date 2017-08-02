----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:59:06 08/02/2017 
-- Design Name: 
-- Module Name:    dec74LS138 - Behavioral 
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

entity dec74LS138 is
    Port ( iA : in  STD_LOGIC;
           iB : in  STD_LOGIC;
           iC : in  STD_LOGIC;
           iG1 : in  STD_LOGIC;
           iG2A : in  STD_LOGIC;
           iG2B : in  STD_LOGIC;
           oY : out  STD_LOGIC_VECTOR (7 downto 0));
end dec74LS138;

architecture Behavioral of dec74LS138 is
	--Input signals concatenated
	signal sINPUT : std_logic_vector (2 downto 0);
	signal sG2 : std_logic;
begin
	--Concatenate input signals and enable signal
	sINPUT <= iC & iB & iA;
	sG2 <= not(iG2A) and not(iG2B);
	
	process (sINPUT,iG1,sG2) begin
		if ( (iG1 = '0') or (sG2 = '1') ) then 
			--Decoding disabled 
			oY <= (others => '1');
		else 
			--Decoding enabled decode
			case (sINPUT) is
				when "000" => oY <= "11111110";
				when "001" => oY <= "11111101";
				when "010" => oY <= "11111011";
				when "011" => oY <= "11110111";
				when "100" => oY <= "11101111";
				when "101" => oY <= "11011111";
				when "110" => oY <= "10111111";
				when others => oY <= "01111111";
			end case;
		end if;	
	end process;

end Behavioral;

