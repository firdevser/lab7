----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.04.2021 15:41:25
-- Design Name: 
-- Module Name: counter - Behavioral
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

entity counter is
 port(
        clk: in std_logic;
        reset: in std_logic;
        X: in std_logic;
        q: inout std_logic_vector (2 downto 0)
        --q: out std_logic
      );
end counter;

architecture Behavioral of counter is
component TFF is
  port(
        clk: in std_logic;
        reset: in std_logic;
        t: in std_logic;
        q: out std_logic
      );
end component;

  signal i0,i1,i2: std_logic;

begin
i0<=q(0) and q(1);
i1<=q(0);
i2<='1';
    Tff0: TFF port map(clk, reset, i0, Q(0));
    Tff1: TFF port map(clk, reset, i1, Q(1));
    Tff2: TFF port map(clk, reset, i2, Q(2));
end Behavioral;
