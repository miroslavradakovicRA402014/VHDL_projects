----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:18:23 08/03/2017 
-- Design Name: 
-- Module Name:    barellshw - Behavioral 
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

entity barellshw is
    Port ( iSEL : in  STD_LOGIC_VECTOR (2 downto 0);
           iX : in  STD_LOGIC_VECTOR (7 downto 0);
           oY : out  STD_LOGIC_VECTOR (7 downto 0));
end barellshw;

architecture Behavioral of barellshw is
	--Signals from levels
	signal sLEVEL0 : std_logic_vector(7 downto 0);
	signal sLEVEL1 : std_logic_vector(7 downto 0);
	signal sLEVEL2 : std_logic_vector(7 downto 0);

begin
	--First level
	sLEVEL0 <=  iX when iSEL(0) = '0' else
					iX(6 downto 0) & iX(7);
	--Seceond level
	sLEVEL1 <= sLEVEL0 when iSEL(1) = '0' else
					sLEVEL0(5 downto 0) & sLEVEL0(7 downto 6);
	--Third level
	sLEVEL2 <= sLEVEL1 when iSEL(2) = '0' else
					sLEVE1(3 downto 0) & sLEVEL(7 downto 4);
					
	oY <= sLEVEL2;				
end Behavioral;

