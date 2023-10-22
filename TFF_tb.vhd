----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.04.2021 16:54:28
-- Design Name: 
-- Module Name: TFF_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TFF_tb is
--  Port ( );
end TFF_tb;

architecture Behavioral of TFF_tb is
  component TFF
    PORT(
         t : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         q : OUT  std_logic
        );
    end component;
   signal t : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal q : std_logic;
    constant clk_period : time := 10 ns;

begin
uut: TFF PORT MAP (
          t => t,
          clk => clk,
          reset => reset,
          q => q
        );

  clk_process :process
  begin
  clk <= '0';
  wait for clk_period/2;
  clk <= '1';
  wait for clk_period/2;
  end process;

  stim_proc: process
  begin  
  reset <= '1';
  wait for 50 ns; 

  reset <= '0';
  T <= '0';
  wait for 50 ns;
  
  reset <= '0';
  T <= '1';  
  wait;
  
  end process;

END;
