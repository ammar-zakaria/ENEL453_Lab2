-- mux design

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplexer is
	port
		(
		 selector			: in std_logic;
		 raw_input			: in std_logic_vector(11 downto 0);
		 averager_input	: in std_logic_vector(11 downto 0); -- test shortening later with ,
		 m_output			: out std_logic_vector(11 downto 0)
		 );
end multiplexer;

architecture behavior of multiplexer is
		begin
				with selector select
						m_output <= raw_input when '0', -- possible error
										averager_input when '1';
end behavior;

		