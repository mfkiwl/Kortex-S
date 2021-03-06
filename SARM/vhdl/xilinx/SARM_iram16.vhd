----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:46:57 06/02/2012 
-- Design Name: 
-- Module Name:    SARM_iram16 - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity SARM_iram16 is Port ( 
			CLK 	: in  STD_LOGIC;
         CE 	: in  STD_LOGIC;
         DI 	: in  STD_LOGIC;
         ADDR 	: in  STD_LOGIC_VECTOR (3 downto 0);
         Q 		: out  STD_LOGIC
			);
end SARM_iram16;

architecture Behavioral of SARM_iram16 is

begin

	RAM8 : SRLC16E
      port map (
			A0		=> ADDR(0),
         A1		=> ADDR(1),
         A2		=> ADDR(2),
         A3		=> ADDR(3),
         CE		=> CE,
         CLK	=> CLK,
         D		=> DI,
         Q		=> Q,
         Q15	=> open
			);

end Behavioral;

