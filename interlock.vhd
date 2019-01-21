library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity interlock is    
	Port (
			clk	:	in STD_LOGIC:='0';				
			d1,d2,d3,d4,d5,d6,d7,d8	:	in 	STD_LOGIC_VECTOR(5 downto 0) := (others => '0');
			s1,s2,s3,s4,s5,s6,s7,s8	:	out	STD_LOGIC_VECTOR(5 downto 0) := (others => '0')
			);
end interlock;
 
architecture Behavioral of interlock is

	constant b0		:	STD_LOGIC_VECTOR(5 downto 0) :=	"000000";
	constant b1		:	STD_LOGIC_VECTOR(5 downto 0) :=	"000001";
	constant b2		:	STD_LOGIC_VECTOR(5 downto 0) :=	"000010";
	constant b3		:	STD_LOGIC_VECTOR(5 downto 0) :=	"000011";
	constant b4		:	STD_LOGIC_VECTOR(5 downto 0) :=	"000100";
	constant b5		:	STD_LOGIC_VECTOR(5 downto 0) :=	"000101";
	constant b6		:	STD_LOGIC_VECTOR(5 downto 0) :=	"000110";
	constant b7		:	STD_LOGIC_VECTOR(5 downto 0) :=	"000111";
	constant b8		:	STD_LOGIC_VECTOR(5 downto 0) :=	"001000";
	constant b9		:	STD_LOGIC_VECTOR(5 downto 0) :=	"001001";
	constant b10	:	STD_LOGIC_VECTOR(5 downto 0) :=	"001010";
	constant b11	:	STD_LOGIC_VECTOR(5 downto 0) :=	"001011";
	constant b12	:	STD_LOGIC_VECTOR(5 downto 0) :=	"001100";
	constant b13	:	STD_LOGIC_VECTOR(5 downto 0) :=	"001101";
	constant b14	:	STD_LOGIC_VECTOR(5 downto 0) :=	"001110";
	constant b15	:	STD_LOGIC_VECTOR(5 downto 0) :=	"001111";
	constant b16	:	STD_LOGIC_VECTOR(5 downto 0) :=	"010000";
	constant b17	:	STD_LOGIC_VECTOR(5 downto 0) :=	"010001";
	constant b18	:	STD_LOGIC_VECTOR(5 downto 0) :=	"010010";
	constant b19	:	STD_LOGIC_VECTOR(5 downto 0) :=	"010011";
	constant b20	:	STD_LOGIC_VECTOR(5 downto 0) :=	"010100";
	constant b21	:	STD_LOGIC_VECTOR(5 downto 0) :=	"010101";
	constant b22	:	STD_LOGIC_VECTOR(5 downto 0) :=	"010110";
	constant b23	:	STD_LOGIC_VECTOR(5 downto 0) :=	"010111";
	constant b24	:	STD_LOGIC_VECTOR(5 downto 0) :=	"011000";
	constant b25	:	STD_LOGIC_VECTOR(5 downto 0) :=	"011001";
	constant b26	:	STD_LOGIC_VECTOR(5 downto 0) :=	"011010";
	constant b27	:	STD_LOGIC_VECTOR(5 downto 0) :=	"011011";
	constant b28	:	STD_LOGIC_VECTOR(5 downto 0) :=	"011100";
	constant b29	:	STD_LOGIC_VECTOR(5 downto 0) :=	"011101";
	constant b30	:	STD_LOGIC_VECTOR(5 downto 0) :=	"011110";
	constant b31	:	STD_LOGIC_VECTOR(5 downto 0) :=	"011111";
	constant b32	:	STD_LOGIC_VECTOR(5 downto 0) :=	"100000";
	constant b33	:	STD_LOGIC_VECTOR(5 downto 0) :=	"100001";
	constant b34	:	STD_LOGIC_VECTOR(5 downto 0) :=	"100010";
	constant b35	:	STD_LOGIC_VECTOR(5 downto 0) :=	"100011";
	constant b36	:	STD_LOGIC_VECTOR(5 downto 0) :=	"100100";
	constant b37	:	STD_LOGIC_VECTOR(5 downto 0) :=	"100101";
	constant b38	:	STD_LOGIC_VECTOR(5 downto 0) :=	"100110";
	constant b39	:	STD_LOGIC_VECTOR(5 downto 0) :=	"100111";
	constant b40	:	STD_LOGIC_VECTOR(5 downto 0) :=	"101000";
	constant b41	:	STD_LOGIC_VECTOR(5 downto 0) :=	"101001";
	constant b42	:	STD_LOGIC_VECTOR(5 downto 0) :=	"101010";
	constant b43	:	STD_LOGIC_VECTOR(5 downto 0) :=	"101011";
	constant b44	:	STD_LOGIC_VECTOR(5 downto 0) :=	"101100";
	constant b45	:	STD_LOGIC_VECTOR(5 downto 0) :=	"101101";
	constant b46	:	STD_LOGIC_VECTOR(5 downto 0) :=	"101110";
	constant b47	:	STD_LOGIC_VECTOR(5 downto 0) :=	"101111";
	constant b48	:	STD_LOGIC_VECTOR(5 downto 0) :=	"110000";
	constant b49	:	STD_LOGIC_VECTOR(5 downto 0) :=	"110001";
	constant b50	:	STD_LOGIC_VECTOR(5 downto 0) :=	"110010";
	constant b51	:	STD_LOGIC_VECTOR(5 downto 0) :=	"110011";
	constant b52	:	STD_LOGIC_VECTOR(5 downto 0) :=	"110100";
	constant b53	:	STD_LOGIC_VECTOR(5 downto 0) :=	"110101";
	constant b54	:	STD_LOGIC_VECTOR(5 downto 0) :=	"110110";
	constant b55	:	STD_LOGIC_VECTOR(5 downto 0) :=	"110111";
	constant b56	:	STD_LOGIC_VECTOR(5 downto 0) :=	"111000";
	constant b57	:	STD_LOGIC_VECTOR(5 downto 0) :=	"111001";
	constant b58	:	STD_LOGIC_VECTOR(5 downto 0) :=	"111010";
	constant b59	:	STD_LOGIC_VECTOR(5 downto 0) :=	"111011";
	constant b60	:	STD_LOGIC_VECTOR(5 downto 0) :=	"111100";
	constant b61	:	STD_LOGIC_VECTOR(5 downto 0) :=	"111101";
	constant b62	:	STD_LOGIC_VECTOR(5 downto 0) :=	"111110";
	constant b63	:	STD_LOGIC_VECTOR(5 downto 0) :=	"111111";
				

	signal last_s1	:	STD_LOGIC_VECTOR(5 downto 0) := (others => '0');
	signal last_s2	:	STD_LOGIC_VECTOR(5 downto 0) := (others => '0');
	signal last_s3	:	STD_LOGIC_VECTOR(5 downto 0) := (others => '0');
	signal last_s4	:	STD_LOGIC_VECTOR(5 downto 0) := (others => '0');
	signal last_s5	:	STD_LOGIC_VECTOR(5 downto 0) := (others => '0');
	signal last_s6	:	STD_LOGIC_VECTOR(5 downto 0) := (others => '0');
	signal last_s7	:	STD_LOGIC_VECTOR(5 downto 0) := (others => '0');
	signal last_s8	:	STD_LOGIC_VECTOR(5 downto 0) := (others => '0');

	function func_interlock
		(
			dn:in STD_LOGIC_VECTOR(5 downto 0);
			signal last: STD_LOGIC_VECTOR(5 downto 0)
		) 
			return STD_LOGIC_VECTOR is
			variable priority : STD_LOGIC_VECTOR(5 downto 0) := (others => '0');
		begin			

			case dn is
				when b0 => return b0;
				when b1 => return b1;
				when b2 => return b2;
				
				when b3 => 
					case last is
						when b2 => return b2;
						when others => return b1;
					end case;	
				
				when b4 => return b4;
				
				when b5 => 
					case last is
						when b4 => return b4;
						when others => return b1;
					end case;
					
				when b6 => 
					case last is
						when b4 => return b4;
						when others => return b2;
					end case;
				
				when b7 => 
					case last is
						when b4 => return b4;
						when b2 => return b2;
						when others => return b1;
					end case;
				
				when b8 => return b8;				
				
				when b9 => 
					case last is
						when b8 => return b8;
						when others => return b1;
					end case;
					
				when b10 => 
					case last is
						when b8 => return b8;
						when others => return b2;
					end case;
					
				when b11 => 
					case last is
						when b8 => return b8;
						when b2 => return b2;
						when others => return b1;
					end case;
				
				when b12 => 
					case last is
						when b8 => return b8;
						when others => return b4;
					end case;
					
				when b13 => 
					case last is
						when b8 => return b8;
						when b4 => return b4;
						when others => return b1;
					end case;
					
				when b14 => 
					case last is
						when b8 => return b8;
						when b4 => return b4;
						when others => return b2;
					end case;
					
				when b15 => 
					case last is
						when b8 => return b8;
						when b4 => return b4;
						when b2 => return b2;
						when others => return b1;
					end case;
					
				when b16 => return b16;
				
				when b17 => 
					case last is
						when b16 => return b16;
						when others => return b1;
					end case;
					
				when b18 => 
					case last is
						when b16 => return b16;
						when others => return b2;
					end case;
					
				when b19 => 
					case last is
						when b16 => return b16;
						when b2 => return b2;
						when others => return b1;
					end case;
					
				when b20 => 
					case last is
						when b16 => return b16;
						when others => return b4;
					end case;
					
				when b21 => 
					case last is
						when b16 => return b16;
						when b4 => return b4;
						when others => return b1;
					end case;
					
				when b22 => 
					case last is
						when b16 => return b16;
						when b4 => return b4;
						when others => return b2;
					end case;
					
				when b23 => 
					case last is
						when b16 => return b16;
						when b4 => return b4;
						when b2 => return b2;
						when others => return b1;
					end case;
					
				when b24 => 
					case last is
						when b16 => return b16;
						when others => return b8;
					end case;
					
				when b25 => 
					case last is
						when b16 => return b16;
						when b8 => return b8;
						when others => return b1;
					end case;
					
				when b26 => 
					case last is
						when b16 => return b16;
						when b8 => return b8;
						when others => return b2;
					end case;
					
				when b27 => 
					case last is
						when b16 => return b16;
						when b8 => return b8;
						when b2 => return b2;
						when others => return b1;
					end case;
					
				when b28 => 
					case last is
						when b16 => return b16;
						when b8 => return b8;
						when others => return b4;
					end case;
					
				when b29 => 
					case last is
						when b16 => return b16;
						when b8 => return b8;
						when b4 => return b4;
						when others => return b1;
					end case;
					
				when b30 => 
					case last is
						when b16 => return b16;
						when b8 => return b8;
						when b4 => return b4;
						when others => return b2;
					end case;
					
				when b31 => 
					case last is
						when b16 => return b16;
						when b8 => return b8;
						when b4 => return b4;
						when b2 => return b2;
						when others => return b1;
					end case;
					
				when b32 => return b32;	
					
				when b33 => 
					case last is
						when b32 => return b32;
						when others => return b1;
					end case;
					
				when b34 => 
					case last is
						when b32 => return b32;
						when others => return b2;
					end case;
					
				when b35 => 
					case last is
						when b32 => return b32;
						when b2 => return b2;
						when others => return b1;
					end case;
					
				when b36 => 
					case last is
						when b32 => return b32;
						when others => return b4;
					end case;
					
				when b37 => 
					case last is
						when b32 => return b32;
						when b4 => return b4;
						when others => return b1;
					end case;
					
				when b38 => 
					case last is
						when b32 => return b32;
						when b4 => return b4;
						when others => return b2;
					end case;
					
				when b39 => 
					case last is
						when b32 => return b32;
						when b4 => return b4;
						when b2 => return b2;
						when others => return b1;
					end case;
					
				when b40 => 
					case last is
						when b32 => return b32;
						when others => return b8;
					end case;
					
				when b41 => 
					case last is
						when b32 => return b32;
						when b8 => return b8;
						when others => return b1;
					end case;
					
				when b42 => 
					case last is
						when b32 => return b32;
						when b8 => return b8;
						when others => return b2;
					end case;
					
				when b43 => 
					case last is
						when b32 => return b32;
						when b8 => return b8;
						when b2 => return b2;
						when others => return b1;
					end case;
					
				when b44 => 
					case last is
						when b32 => return b32;
						when b8 => return b8;
						when others => return b4;
					end case;
					
				when b45 => 
					case last is
						when b32 => return b32;
						when b8 => return b8;
						when b4 => return b4;
						when others => return b1;
					end case;
					
				when b46 => 
					case last is
						when b32 => return b32;
						when b8 => return b8;
						when b4 => return b4;
						when others => return b2;
					end case;
					
				when b47 => 
					case last is
						when b32 => return b32;
						when b8 => return b8;
						when b4 => return b4;
						when b2 => return b2;
						when others => return b1;
					end case;
					
				when b48 => 
					case last is
						when b32 => return b32;
						when others => return b16;
					end case;
					
				when b49 => 
					case last is
						when b32 => return b32;
						when b16 => return b16;
						when others => return b1;
					end case;
					
				when b50 => 
					case last is
						when b32 => return b32;
						when b16 => return b16;
						when others => return b2;
					end case;
					
				when b51 => 
					case last is
						when b32 => return b32;
						when b16 => return b16;
						when b2 => return b2;
						when others => return b1;
					end case;
					
				when b52 => 
					case last is
						when b32 => return b32;
						when b16 => return b16;
						when others => return b4;
					end case;
					
				when b53 => 
					case last is
						when b32 => return b32;
						when b16 => return b16;
						when b4 => return b4;
						when others => return b1;
					end case;
					
				when b54 => 
					case last is
						when b32 => return b32;
						when b16 => return b16;
						when b4 => return b4;
						when others => return b2;
					end case;
					
				when b55 => 
					case last is
						when b32 => return b32;
						when b16 => return b16;
						when b4 => return b4;
						when b2 => return b2;
						when others => return b1;
					end case;
					
				when b56 => 
					case last is
						when b32 => return b32;
						when b16 => return b16;
						when others => return b8;
					end case;
					
				when b57 => 
					case last is
						when b32 => return b32;
						when b16 => return b16;
						when b8 => return b8;
						when others => return b1;
					end case;
					
				when b58 => 
					case last is
						when b32 => return b32;
						when b16 => return b16;
						when b8 => return b8;
						when others => return b2;
					end case;
					
				when b59 => 
					case last is
						when b32 => return b32;
						when b16 => return b16;
						when b8 => return b8;
						when b2 => return b2;
						when others => return b1;
					end case;
					
				when b60 => 
					case last is
						when b32 => return b32;
						when b16 => return b16;
						when b8 => return b8;
						when others => return b4;
					end case;
					
				when b61 => 
					case last is
						when b32 => return b32;
						when b16 => return b16;
						when b8 => return b8;
						when b4 => return b4;
						when others => return b1;
					end case;
					
				when b62 => 
					case last is
						when b32 => return b32;
						when b16 => return b16;
						when b8 => return b8;
						when b4 => return b4;
						when others => return b2;
					end case;
					
				when b63 => 
					case last is
						when b32 => return b32;
						when b16 => return b16;
						when b8 => return b8;
						when b4 => return b4;
						when b2 => return b2;
						when others => return b1;
					end case;
					
				when others => return b0;
			end case;
	end func_interlock;
	
begin

process(clk)
	begin
		if(clk'event and clk='1') then
			last_s1	<= func_interlock(d1, last_s1) and "111111";  
			s1			<= func_interlock(d1, last_s1) and "111111";
			last_s2	<= func_interlock(d2, last_s2) and "111111";
			s2			<= func_interlock(d2, last_s2) and "111111";
			last_s3	<= func_interlock(d3, last_s3) and "111111";
			s3			<= func_interlock(d3, last_s3) and "111111";
			last_s4	<= func_interlock(d4, last_s4) and "111111";
			s4			<= func_interlock(d4, last_s4) and "111111";
			last_s5	<= func_interlock(d5, last_s5) and "111111";
			s5			<= func_interlock(d5, last_s5) and "111111";
			last_s6	<= func_interlock(d6, last_s6) and "111111";
			s6			<= func_interlock(d6, last_s6) and "111111";
			last_s7	<= func_interlock(d7, last_s7) and "111111";
			s7			<= func_interlock(d7, last_s7) and "111111";
			last_s8	<= func_interlock(d8, last_s8) and "111111";
			s8			<= func_interlock(d8, last_s8) and "111111";
		end if;
end process;
	
end Behavioral;