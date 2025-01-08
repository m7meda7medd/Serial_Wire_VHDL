library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SerialRec is
    port (
        din        : in  std_logic;
        clk        : in  std_logic;
        data       : out std_logic_vector(6 downto 0);
        err        : out std_logic;
        data_Valid : out std_logic
    );
end SerialRec;

architecture arch of SerialRec is
    constant size : integer := 10;
begin
    process(clk)
        variable counter     : integer := size - 1;
        variable checkParity : std_logic := '0';
        variable Reg         : std_logic_vector(9 downto 0) := (others => '0');
        variable carry_data  : std_logic_vector(6 downto 0) := (others => '0');
    begin
        if rising_edge(clk) then
            if Reg(size - 1) = '1' then -- consider start bit = 1
                counter := counter - 1;  -- decrement counter
                Reg(counter) := din;     -- assign input data
            elsif (Reg(size - 1) or din) = '1' then -- check start bit
                Reg(size - 1) := '1'; -- assign 1 to start bit
            end if;

            if counter = 0 then -- if counter = 0 check stop bit
                -- Check parity
                for i in 8 downto 2 loop
                    checkParity := checkParity xor Reg(i);
                end loop;

                -- Check parity and stop bit to raise error
                if (Reg(0) = '0') or (Reg(1) /= checkParity) then
                    err <= '1';        -- raise error
                    data_Valid <= '0'; -- assign 0 to data valid
                    data <= (others => '0');
                else
                    err <= '0';        -- no error
                    carry_data := Reg(8 downto 2); -- extract data
                    data <= carry_data;
                    data_Valid <= '1';
                end if;

                -- Reset variables
                checkParity := '0';
                Reg := (others => '0');
                counter := size - 1;
            end if;
        end if;
    end process;
end arch;

