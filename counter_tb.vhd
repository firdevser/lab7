----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.04.2021 16:28:41
-- Design Name: 
-- Module Name: counter_tb - Behavioral
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

entity counter_tb is
--  Port ( );
end counter_tb;

architecture Behavioral of counter_tb is
component counter 
    port( clk: in std_logic; -- clock input
           reset: in std_logic; -- reset input 
           X: in std_logic
     );
end component;
signal reset,clk: std_logic;
signal period: time:=10ns;
signal X: std_logic:='0';
begin
DUT: counter port map(clk,reset,X);

clk_process: process
begin
     clk <= '1';
     wait for period/2;
     clk <= '0';
     wait for period/2;
end process;

sti: process
begin


end Behavioral;
