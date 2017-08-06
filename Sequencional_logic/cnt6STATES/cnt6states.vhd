----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:25:37 08/06/2017 
-- Design Name: 
-- Module Name:    cnt6states - Behavioral 
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

entity cnt6states is
    Port ( iCLK : in  STD_LOGIC;
           inRST : in  STD_LOGIC;
			  oCNT : out integer range 0 to 5);
end cnt6states;

architecture Behavioral of cnt6states is
	--Counter reg signal
	signal sCNT : integer range 0 to 5 := 0;
	constant cHIGH : integer := 5;

begin
	--Counter process
	process (iCLK) begin
		if (iCLK'event and iCLK = '1') then 
			if (inRST = '0') then
				sCNT <= 0;
			elsif (sCNT = cHIGH) then --Counter value is 5 
				sCNT <= 4; --Return to 4
			else 
				sCNT <= sCNT + 1; --Increment
			end if;
		end if;	
	end process;
	
	oCNT <= sCNT;
	
end Behavioral;

