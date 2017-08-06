----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:20:34 08/06/2017 
-- Design Name: 
-- Module Name:    cntMOD5 - Behavioral 
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

entity cntMOD5 is
    Port ( iCLK : in  STD_LOGIC;
           inRST : in  STD_LOGIC;
			  oCNT : out integer range 0 to 4);
end cntMOD5;

architecture Behavioral of cntMOD5 is
	--Counter signal
	signal sCNT : integer range 0 to 4 := 0;
	constant cHIGH : integer := 4;

begin
	--Counter process
	process (iCLK) begin
		--Synchronical reset
		if (iCLK'event and iCLK='1') then
			if (inRST = '0') then 
				sCNT <= 0;
			elsif (cHIGH = sCNT) then --Check modulo 
				sCNT <= 0;
			else
				sCNT <= sCNT + 1; --Counting			
			end if;
		end if;	
	end process;
	
	oCNT <= sCNT;

end Behavioral;

