library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rom_lut is 
	port(
		key   	 : in std_logic_vector(7 downto 0);
		freq_out : out integer
		);
end rom_lut;

architecture synth of rom_lut is 

begin 
	process (key) begin
		case key is
		
		--lower octaves
		
			when  "00010111" => freq_out <= 777454; --x17
			when  "00011000" => freq_out <= 733945; --x18
			when  "00011001" => freq_out <= 692641; --x19
			when  "00011010" => freq_out <= 653773;	--x1a		
			when  "00011011" => freq_out <= 617125; --x1b
			when  "00011100" => freq_out <= 582524; --x1c
			when  "00011101" => freq_out <= 549828; --x1d
			when  "00011110" => freq_out <= 518919; --x1e
			when  "00011111" => freq_out <= 489796; --x1f
			when  "00100000" => freq_out <= 462339; --x20
			when  "00100001" => freq_out <= 436364; --x21
			when  "00100010" => freq_out <= 411876; --x22
			when  "00100011" => freq_out <= 388727; --x23
			when  "00100100" => freq_out <= 366916; --x24
			when  "00100101" => freq_out <= 346320; --x25
			when  "00100110" => freq_out <= 326886; --x26
			when  "00100111" => freq_out <= 308563; --x27
			when  "00101000" => freq_out <= 291227; --x28
			when  "00101001" => freq_out <= 274883; --x29
			when  "00101010" => freq_out <= 259459; --x2a
			when  "00101011" => freq_out <= 244898; --x2b
			when  "00101100" => freq_out <= 231147; --x2c
			when  "00101101" => freq_out <= 218182; --x2d
			when  "00101110" => freq_out <= 205938; --x2e
			when  "00101111" => freq_out <= 194379; --x2f
		
		-- middle octaves 
		
			when  "00110000" => freq_out <= 183472; --x30
			when  "00110001" => freq_out <= 173173; --x31
			when  "00110010" => freq_out <= 163454; --x32
			when  "00110011" => freq_out <= 154281;	--x33		
			when  "00110100" => freq_out <= 145622; --x34
			when  "00110101" => freq_out <= 137449; --x35
			when  "00110110" => freq_out <= 129730; --x36
			when  "00110111" => freq_out <= 122449; --x37
			when  "00111000" => freq_out <= 115579; --x38
			when  "00111001" => freq_out <= 109091; --x39
			when  "00111010" => freq_out <= 102969; --x3a
			when  "00111011" => freq_out <= 97190; --x3b
			when  "00111100" => freq_out <= 91733; --x3c
			when  "00111101" => freq_out <= 86586; --x3d
			when  "00111110" => freq_out <= 81727; --x3e
			when  "00111111" => freq_out <= 77138; --x3f
			when  "01000000" => freq_out <= 72809; --x40
			when  "01000001" => freq_out <= 68723; --x41
			when  "01000010" => freq_out <= 64867; --x42
			when  "01000011" => freq_out <= 61224; --x43
			when  "01000100" => freq_out <= 57790; --x44
			when  "01000101" => freq_out <= 54545; --x45
			when  "01000110" => freq_out <= 51484; --x46
			when  "01000111" => freq_out <= 48595; --x47
			when  "01001000" => freq_out <= 45867; --x48
		
		-- higher octaves
		
			when  "01001001" => freq_out <= 43292; --x49
			when  "01001010" => freq_out <= 40863; --x4a
			when  "01001011" => freq_out <= 38570; --x4b 
			when  "01001100" => freq_out <= 36405; --x4c		
			when  "01001101" => freq_out <= 34361; --x4d
			when  "01001110" => freq_out <= 32433; --x4e
			when  "01001111" => freq_out <= 30613; --x4f
			when  "01010000" => freq_out <= 28894; --x50
			when  "01010001" => freq_out <= 27273; --x51
			when  "01010010" => freq_out <= 25742; --x52
			when  "01010011" => freq_out <= 24297; --x53
			when  "01010100" => freq_out <= 22934; --x54
			when  "01010101" => freq_out <= 21646; --x55
			when  "01010110" => freq_out <= 20431; --x56
			when  "01010111" => freq_out <= 19285; --x57
			when  "01011000" => freq_out <= 18202; --x58
			when  "01011001" => freq_out <= 17181; --x59
			when  "01011010" => freq_out <= 16216; --x5a
			when  "01011011" => freq_out <= 15306; --x5b
			when  "01011100" => freq_out <= 14447; --x5c
			when  "01011101" => freq_out <= 13636; --x5d
			when  "01011110" => freq_out <= 12871; --x5e
			when  "01011111" => freq_out <= 12149; --x5f
			when  "01100000" => freq_out <= 11467; --x60
			when  "01100001" => freq_out <= 10823; --x61
		
			
			when  others 	 => freq_out <= 0; 
			
		end case;
	end process;

end;