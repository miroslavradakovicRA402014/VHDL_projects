----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:34:14 08/06/2017 
-- Design Name: 
-- Module Name:    reg4bit - Behavioral 
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

entity reg4bit is
    Port ( iCLK : in  STD_LOGIC;
           inRST : in  STD_LOGIC;
           iLOAD : in  STD_LOGIC;
           iD : in  STD_LOGIC_VECTOR (3 downto 0);
           oOUT : out  STD_LOGIC);
end reg4bit;

architecture Behavioral of reg4bit is
	--Register signal
	signal sREG : std_logic_vector(3 downto 0);
	
begin
	--Process 
	process (iCLK,inRST) begin
		--Clear signal
		if (inRST = '0') then
			sREG <= (others => '0');
		elsif (iCLK'event and iCLK = '1') then
			--Load new value or shift current
			if (iLOAD = '1') then 
				sREG <= iD;
			else
				sREG <= '0' & sREG(3 downto 1) ;
			end if;
		end if;
	end process;
	--Output signal is LSB
	oOUT <= sREG(0);
	
end Behavioral;

