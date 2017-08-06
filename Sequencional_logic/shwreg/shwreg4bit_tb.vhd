--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:14:47 08/06/2017
-- Design Name:   
-- Module Name:   /home/mika/projects_workspace/VHDL_projects/Combinational_logic/shwreg/shwreg4bit_tb.vhd
-- Project Name:  shwreg
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shwreg4bit
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY shwreg4bit_tb IS
END shwreg4bit_tb;
 
ARCHITECTURE behavior OF shwreg4bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shwreg4bit
    PORT(
         iCLK : IN  std_logic;
         inRST : IN  std_logic;
         iD : IN  std_logic_vector(3 downto 0);
         iDSR : IN  std_logic;
         iDSL : IN  std_logic;
         iSEL : IN  std_logic_vector(1 downto 0);
         oQ : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal inRST : std_logic := '0';
   signal iD : std_logic_vector(3 downto 0) := (others => '0');
   signal iDSR : std_logic := '0';
   signal iDSL : std_logic := '0';
   signal iSEL : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal oQ : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shwreg4bit PORT MAP (
          iCLK => iCLK,
          inRST => inRST,
          iD => iD,
          iDSR => iDSR,
          iDSL => iDSL,
          iSEL => iSEL,
          oQ => oQ
        );

   -- Clock process definitions
   iCLK_process :process
   begin
		iCLK <= '0';
		wait for iCLK_period/2;
		iCLK <= '1';
		wait for iCLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		inRST <= '0';
		iDSR <= '0';
		iDSL <= '0';
		iD <= "1101";
		iSEL <= "11";

      wait for iCLK_period*10;

      -- insert stimulus here 
		inRST <= '1';
		iSEL <= "00";
		
		wait for iCLK_period*10;
		
		iSEL <= "10";
		
		wait for iCLK_period*2;
		
		iSEL <= "01";

      wait;
   end process;

END;
