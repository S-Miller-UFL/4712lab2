--Steven Miller
--section number

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY mux4to1WithAssert_tb IS
END mux4to1WithAssert_tb;

--Component Declaration
ARCHITECTURE behavior OF mux4to1WithAssert_tb IS

  SIGNAL w0,w1,w2,w3,f,en: STD_LOGIC;
  SIGNAL s : STD_LOGIC_VECTOR (1 DOWNTO 0);
  
BEGIN  

--Component Instatiation
  UUT : ENTITY work.mux4to1
    PORT MAP (
      d(0) => w0,
      d(1) => w1,
      d(2) => w2,
      d(3) => w3,
        s  => s,
      y_n  => f,
      en_n => en
      );


  --Stimulus process
  STIM_PROC: PROCESS
  
  VARIABLE value : STD_LOGIC_VECTOR (6 DOWNTO 0);
  
  FUNCTION mux4to1Func (
      SIGNAL w0,w1,w2,w3,f,en: STD_LOGIC;
      SIGNAL s : STD_LOGIC_VECTOR (1 DOWNTO 0))
      RETURN STD_LOGIC IS
  BEGIN  -- functionally how mux works
        CASE en&s IS
        WHEN "000" =>
            RETURN not(w0) ;
        WHEN "001" =>
            RETURN not(w1) ;
        WHEN "010" =>
            RETURN not(w2) ; 
        WHEN "011" =>
            RETURN not(w3) ;
	when others =>
	    return not('0');
      END CASE ;
END  mux4to1Func;
  
  BEGIN
    -- test all input combinations
    FOR i in 0 TO 127 LOOP

	    value := STD_LOGIC_VECTOR(TO_UNSIGNED(i, 7));

		  --Set input values
		  en <= value(6);
		  s(1) <= value(5);
		  s(0) <= value(4);
		  w0 <= value(0);
		  w1 <= value(1);
		  w2 <= value(2);
		  w3 <= value(3);

		  -- input values stable for 50 ns
      WAIT FOR 50 ns;
      
      -- call mux4to1Func to verify output f for this set of input values
      ASSERT(f = mux4to1func(w0,w1,w2,w3,f,en,s))
   
        REPORT "Error : output f incorrect for en,s1,s0 = " & std_logic'image(value(6)) & STD_LOGIC'IMAGE (value(5)) & STD_LOGIC'IMAGE (value(4)) & "and w = " & STD_LOGIC'IMAGE (value(3)) & STD_LOGIC'IMAGE (value(2)) & STD_LOGIC'IMAGE (value(1)) & STD_LOGIC'IMAGE (value(0)) SEVERITY WARNING;
 
      
    END LOOP;  -- i

	  WAIT FOR 500ns;
    REPORT "SIMULATION FINISHED!";
    WAIT;

  END PROCESS;
--End Test Bench

END;
