----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:41:11 08/03/2017 
-- Design Name: 
-- Module Name:    cmp74LS85 - Behavioral 
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

entity cmp74LS85 is
    Port ( iA : in  STD_LOGIC_VECTOR (3 downto 0);
           iB : in  STD_LOGIC_VECTOR (3 downto 0);
			  iH1 : in STD_LOGIC;
			  iH2 : in STD_LOGIC;
			  iH3 : in STD_LOGIC;
           oH1 : out  STD_LOGIC;
           oH2 : out  STD_LOGIC;
           oH3 : out  STD_LOGIC);
end cmp74LS85;

architecture Behavioral of cmp74LS85 is

begin
	--Comparator
	process (iA,iB,iH1,iH2,iH3) begin
		if (iA(3) > iB(3)) then oH1 <= '0'; oH2 <= '0'; oH3 <= '1'; 
		elsif (iA(3) < iB(3)) then oH1 <= '0'; oH2 <= '1'; oH3 <= '0';
		elsif ((iA(3) = iB(3)) and (iA(2) > iB(2))) then oH1 <= '0'; oH2 <= '0'; oH3 <= '1';
		elsif ((iA(3) = iB(3)) and (iA(2) < iB(2))) then oH1 <= '0'; oH2 <= '1'; oH3 <= '0';
		elsif ((iA(3) = iB(3)) and (iA(2) = iB(2)) and (iA(1) > iB(1))) then oH1 <= '0'; oH2 <= '0'; oH3 <= '1';
		elsif ((iA(3) = iB(3)) and (iA(2) = iB(2)) and (iA(1) < iB(1))) then oH1 <= '0'; oH2 <= '1'; oH3 <= '0'; 
		elsif ((iA(3) = iB(3)) and (iA(2) = iB(2)) and (iA(1) = iB(1)) and (iA(0) > iB(0))) then oH1 <= '0'; oH2 <= '0'; oH3 <= '1';
		elsif ((iA(3) = iB(3)) and (iA(2) = iB(2)) and (iA(1) = iB(1)) and (iA(0) < iB(0))) then oH1 <= '0'; oH2 <= '1'; oH3 <= '0';
		elsif ((iA(3) = iB(3)) and (iA(2) = iB(2)) and (iA(1) = iB(1)) and (iA(0) = iB(0)) and iH1 = '0' and iH2 = '0' and iH3 = '1') then oH1 <= '0'; oH2 <= '0'; oH3 <= '1';
		elsif ((iA(3) = iB(3)) and (iA(2) = iB(2)) and (iA(1) = iB(1)) and (iA(0) = iB(0)) and iH1 = '0' and iH2 = '1' and iH3 = '0') then oH1 <= '0'; oH2 <= '1'; oH3 <= '0';
		else   oH1 <= '1'; oH2 <= '0'; oH3 <= '0';
		end if;
	end process;

end Behavioral;

