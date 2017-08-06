----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:31:25 08/03/2017 
-- Design Name: 
-- Module Name:    mux8x1 - Behavioral 
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

entity mux8x1 is 
	generic (
		WIDTH : integer := 8
	);
	port (
		iX0 : in std_logic_vector(WIDTH-1 downto 0);
		iX1 : in std_logic_vector(WIDTH-1 downto 0);
		iX2 : in std_logic_vector(WIDTH-1 downto 0);
		iX3 : in std_logic_vector(WIDTH-1 downto 0);
		iX4 : in std_logic_vector(WIDTH-1 downto 0);
		iX5 : in std_logic_vector(WIDTH-1 downto 0);
		iX6 : in std_logic_vector(WIDTH-1 downto 0);
		iX7 : in std_logic_vector(WIDTH-1 downto 0);
		iSEL : in std_logic_vector(2 downto 0);
		iEN : in std_logic;
		oY : out std_logic_vector(WIDTH-1 downto 0)
	);
end mux8x1;

architecture Behavioral of mux8x1 is

begin
	--Multiplexer logic
	process (iSEL,iX0,iX1,iX2,iX3,iX4,iX5,iX6,iX7,iEN) begin 
		if (iEN = '0') then 
			oY <= (others => '0');
		else 
			case (iSEL) is
				when "000" => oY <= iX0;
				when "001" => oY <= iX1;
				when "010" => oY <= iX2;
				when "011" => oY <= iX3;
				when "100" => oY <= iX4;
				when "101" => oY <= iX5;
				when "110" => oY <= iX6;
				when others => oY <= iX7;
			end case;
		end if;
	end process;


end Behavioral;

