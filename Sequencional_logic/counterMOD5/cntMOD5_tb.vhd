--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:38:41 08/06/2017
-- Design Name:   
-- Module Name:   /home/mika/projects_workspace/VHDL_projects/Combinational_logic/counterMOD5/cntMOD5_tb.vhd
-- Project Name:  counterMOD5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: cntMOD5
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
 
ENTITY cntMOD5_tb IS
END cntMOD5_tb;
 
ARCHITECTURE behavior OF cntMOD5_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cntMOD5
    PORT(
         iCLK : IN  std_logic;
         inRST : IN  std_logic;
         oCNT : OUT  integer range 0 to 4
        );
    END COMPONENT;
    

   --Inputs
   signal iCLK : std_logic := '0';
   signal inRST : std_logic := '0';

 	--Outputs
   signal oCNT : integer range 0 to 4;

   -- Clock period definitions
   constant iCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cntMOD5 PORT MAP (
          iCLK => iCLK,
          inRST => inRST,
          oCNT => oCNT
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

      wait for iCLK_period*10;

      -- insert stimulus here 
		inRST <= '1';	

      wait;
   end process;

END;
