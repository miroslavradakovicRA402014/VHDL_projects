----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:30:43 08/02/2017 
-- Design Name: 
-- Module Name:    codBCD - Behavioral 
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

entity codBCD is
    Port ( iU : in  STD_LOGIC_VECTOR (9 downto 0);
           oA : out  STD_LOGIC;
           oB : out  STD_LOGIC;
           oC : out  STD_LOGIC;
           oD : out  STD_LOGIC);
end codBCD;

architecture Behavioral of codBCD is
	--Concatenated output signal
	signal sOUTPUT : std_logic_vector (3 downto 0);
begin
	--Get output signal
	process (iU) begin
		if (iU(0) = '1') then sOUTPUT <= "0000"; end if;
		if (iU(1) = '1') then sOUTPUT <= "0001"; end if;
		if (iU(2) = '1') then sOUTPUT <= "0010"; end if;
		if (iU(3) = '1') then sOUTPUT <= "0011"; end if;
		if (iU(4) = '1') then sOUTPUT <= "0100"; end if;
		if (iU(5) = '1') then sOUTPUT <= "0101"; end if;
		if (iU(6) = '1') then sOUTPUT <= "0110"; end if;
		if (iU(7) = '1') then sOUTPUT <= "0111"; end if;
		if (iU(8) = '1') then sOUTPUT <= "1000"; end if;
		if (iU(9) = '1') then sOUTPUT <= "1001"; end if;
	end process;
	--Output signal
	oA <= sOUTPUT(0);
	oB <= sOUTPUT(1);
	oC <= sOUTPUT(2);
	oD <= sOUTPUT(3);

end Behavioral;

