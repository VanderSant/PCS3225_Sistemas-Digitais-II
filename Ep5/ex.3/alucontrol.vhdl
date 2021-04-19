--#9555

entity alucontrol is
    port(
        aluop:   in  bit_vector (1  downto 0);
        opcode:  in  bit_vector (10 downto 0);
        aluCtrl: out bit_vector (3 downto 0)
    );
    end entity;

    architecture alucontrol_arch of alucontrol is
        begin
            aluCtrl <=
            "0010" when (aluop ="00") else
            "0111" when (aluop ="01") else
            "0010" when (opcode="10001011000") and (aluop ="10") else
            "0110" when (opcode="11001011000") and (aluop ="10") else
            "0000" when (opcode="10001010000") and (aluop ="10") else
            "0001" when (opcode="10101010000") and (aluop ="10") else
            (others=>'0');
        end architecture alucontrol_arch;