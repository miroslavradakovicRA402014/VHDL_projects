----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:51:19 08/03/2017 
-- Design Name: 
-- Module Name:    demux8x1 - Behavioral 
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

entity demux8x1 is
	generic (
		WIDTH : integer := 8
	);
	port (
		iX : in std_logic_vector(WIDTH-1 downto 0);
		iSEL : in std_logic_vector(2 downto 0);
		iEN : in std_logic;
		oY1 : out std_logic_vector(WIDTH-1 downto 0);
		oY2 : out std_logic_vector(WIDTH-1 downto 0);
		oY3 : out std_logic_vector(WIDTH-1 downto 0);
		oY4 : out std_logic_vector(WIDTH-1 downto 0);
		oY5 : out std_logic_vector(WIDTH-1 downto 0);
		oY6 : out std_logic_vector(WIDTH-1 downto 0);
		oY7 : out std_logic_vector(WIDTH-1 downto 0)
	);
end demux8x1;

architecture Behavioral of demux8x1 is

begin
	
	--Demultiplexer logic
	process (iSEL,iX,iEN) begin 
		if (iEN = '0') then
			oY0 <= (others => '0');
			oY1 <= (others => '0');
			oY2 <= (others => '0');
			oY3 <= (others => '0');
			oY4 <= (others => '0');
			oY5 <= (others => '0');
			oY6 <= (others => '0');
			oY7 <= (others => '0');
		else
			case (iSEL) is 
				when "000" => 
					oY0 <= iX;
					oY1 <= (others => '0');
					oY2 <= (others => '0');
					oY3 <= (others => '0');
					oY4 <= (others => '0');
					oY5 <= (others => '0');
					oY6 <= (others => '0');
					oY7 <= (others => '0');
				when "001" => 
					oY1 <= iX;
					oY0 <= (others => '0');
					oY2 <= (others => '0');
					oY3 <= (others => '0');
					oY4 <= (others => '0');
					oY5 <= (others => '0');
					oY6 <= (others => '0');
					oY7 <= (others => '0');	
				when "010" => 
					oY2 <= iX;
					oY1 <= (others => '0');
					oY0 <= (others => '0');
					oY3 <= (others => '0');
					oY4 <= (others => '0');
					oY5 <= (others => '0');
					oY6 <= (others => '0');
					oY7 <= (others => '0');
				when "011" => 
					oY3 <= iX;
					oY1 <= (others => '0');
					oY2 <= (others => '0');
					oY0 <= (others => '0');
					oY4 <= (others => '0');
					oY5 <= (others => '0');
					oY6 <= (others => '0');
					oY7 <= (others => '0');	
				when "100" => 
					oY4 <= iX;
					oY1 <= (others => '0');
					oY2 <= (others => '0');
					oY3 <= (others => '0');
					oY0 <= (others => '0');
					oY5 <= (others => '0');
					oY6 <= (others => '0');
					oY7 <= (others => '0');	
				when "101" => 
					oY5 <= iX;
					oY1 <= (others => '0');
					oY2 <= (others => '0');
					oY3 <= (others => '0');
					oY4 <= (others => '0');
					oY0 <= (others => '0');
					oY6 <= (others => '0');
					oY7 <= (others => '0');	
				when "110" => 
					oY6 <= iX;
					oY1 <= (others => '0');
					oY2 <= (others => '0');
					oY3 <= (others => '0');
					oY4 <= (others => '0');
					oY5 <= (others => '0');
					oY0 <= (others => '0');
					oY7 <= (others => '0');
				when others => 
					oY7 <= iX;
					oY1 <= (others => '0');
					oY2 <= (others => '0');
					oY3 <= (others => '0');
					oY4 <= (others => '0');
					oY5 <= (others => '0');
					oY6 <= (others => '0');
					oY0 <= (others => '0');					
			end case;
		end if;
	end process;


end Behavioral;

