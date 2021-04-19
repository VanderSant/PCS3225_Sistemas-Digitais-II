-------------------------------------------------------
--! @file mux16_2to1.vhd
--! @brief 2-to-1 4-bit multiplexer
--! @author Edson S. Gomi (gomi@usp.br)
--! @date 2020-05-17
-------------------------------------------------------

entity mux16_2to1 is
  port (
    SEL : in bit;    
    A :   in bit_vector  (15 downto 0);
    B :   in bit_vector  (15 downto 0);
    Y :   out bit_vector (15 downto 0)
    );
end entity mux16_2to1;

architecture with_select of mux16_2to1 is
begin
  with SEL select
    Y <= A when '0',
         B when '1',
         "0000000000000000" when others;
end architecture with_select;
