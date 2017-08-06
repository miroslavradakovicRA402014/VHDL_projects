----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:55:52 08/06/2017 
-- Design Name: 
-- Module Name:    shwreg4bit - Behavioral 
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

entity shwreg4bit is
    Port ( iCLK : in  STD_LOGIC;
           inRST : in  STD_LOGIC;
           iD : in  STD_LOGIC_VECTOR (3 downto 0);
           iDSR : in  STD_LOGIC;
           iDSL : in  STD_LOGIC;
           iSEL : in  STD_LOGIC_VECTOR (1 downto 0);
           oQ : out  STD_LOGIC_VECTOR (3 downto 0));
end shwreg4bit;

architecture Behavioral of shwreg4bit is
	--Register signal
	signal sREG : std_logic_vector(3 downto 0);

begin

	process (iCLK,inRST) begin
		if (inRST = '0') then 
			--Register reset
			sREG <= (others => '0');
		elsif (iCLK'event and iCLK = '1') then
			--Shfter logic
			case (iSEL) is
				when "00" => sREG <= iD;
				when "10" => sREG <= iDSR & sREG(3 downto 1);
				when "01" => sREG <= sREG(2 downto 0) & iDSL;
				when others => sREG <= sREG;
			end case;
		end if;
	end process;
	
	oQ <= sREG;

end Behavioral;

