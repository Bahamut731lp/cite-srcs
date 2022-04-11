library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RS is
    Port (
        reset, set  : in std_logic;
        qn, q : out std_logic
    );
end RS;

architecture Behavioral of RS is
    signal a, b : std_logic;
begin

    a <= reset nor b;
    b <= set nor a;
    
    q <= a;
    qn <= b;
    
end Behavioral;