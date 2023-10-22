----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.04.2021 15:09:28
-- Design Name: 
-- Module Name: TFF - Behavioral
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

entity TFF is
port(
        clk: in std_logic;
        reset: in std_logic;
        t: in std_logic;
        q: out std_logic
      );
end TFF;

architecture Behavioral of TFF is

 signal a : std_logic := '0';
begin
    tff_proc: process(clk) begin
        if rising_edge(clk) then
            if t='1' then
                a <= not a;
            end if;
            -- reset statement
            if reset='1' then
                a <= '0';
            end if;
        end if;
    end process;
q <= a;

end Behavioral;