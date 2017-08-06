--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:45:46 08/06/2017
-- Design Name:   
-- Module Name:   /home/mika/projects_workspace/VHDL_projects/Combinational_logic/register4bit/reg4bit_tb.vhd
-- Project Name:  register4bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: reg4bit
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
 
ENTITY reg4bit_tb IS
END reg4bit_tb;
 
ARCHITECTURE behavior OF reg4bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT reg4bit
    PORT(
         iCLK : IN  std_logic;
         inRST : IN  std_logic;
         iLOAD : IN  std_logic;
         iD : IN  std_logic_vector(3 downto 0);
         oOUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal inRST : std_logic := '0';
   signal iLOAD : std_logic := '0';
   signal iD : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal oOUT : std_logic;

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reg4bit PORT MAP (
          iCLK => iCLK,
          inRST => inRST,
          iLOAD => iLOAD,
          iD => iD,
          oOUT => oOUT
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
		
		iLOAD <= '1';
		iD <= "1101";
		inRST <= '1';

      wait for iCLK_period*10;
      -- insert stimulus here 
		iLOAD <= '0';
		inRST <= '1';
      wait;
   end process;

END;
