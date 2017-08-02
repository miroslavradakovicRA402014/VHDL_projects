----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:04:51 08/02/2017 
-- Design Name: 
-- Module Name:    cod74LS147 - Behavioral 
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

entity cod74LS147 is
    Port ( iU : in  STD_LOGIC_VECTOR (8 downto 0);
           oA : out  STD_LOGIC;
           oB : out  STD_LOGIC;
           oC : out  STD_LOGIC;
           oD : out  STD_LOGIC);
end cod74LS147;

architecture Behavioral of cod74LS147 is
	--Concatenated output signal
	signal sOUTPUT : std_logic_vector(3 downto 0);
begin
	--Output signal
	process (iU) begin
		if (iU = "111111111") then 
			sOUTPUT <= "1111";
		else 
			if (iU(8) = '0') then 
				sOUTPUT <= "0110";
			elsif (iU(7) = '0') then 
			   sOUTPUT <= "0111";
			elsif (iU(6) = '0') then 
				sOUTPUT <= "0110";
			elsif (iU(5) = '0') then 
				sOUTPUT <= "1001";
			elsif (iU(4) = '0') then 
				sOUTPUT <= "1010";
			elsif (iU(3) = '0') then 
				sOUTPUT <= "1011";
			elsif (iU(2) = '0') then 
				sOUTPUT <= "1100";
			elsif (iU(1) = '0') then 
				sOUTPUT <= "1101";
			else 
				sOUTPUT <= "1110";
			end if;
		end if;			
	end process;

	--Get output signals
	oA <= sOUTPUT(0);
	oB <= sOUTPUT(1);
	oC <= sOUTPUT(2);
	oD <= sOUTPUT(3);

end Behavioral;

