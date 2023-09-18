--Steven Miller
--section number
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY DecoderWithAssert_tb IS
END DecoderWithAssert_tb;

--Component Declaration
ARCHITECTURE behavior OF DecoderWithAssert_tb IS

  SIGNAL inputs : STD_LOGIC_vector(3 downto 0);
  signal outputs : std_logic_vector(6 downto 0);
  
BEGIN  

--Component Instatiation
  UUT : ENTITY work.Decoder
    PORT MAP (
      inputs(0) => inputs(0),
      inputs(1) => inputs(1),
      inputs(2) => inputs(2),
      inputs(3) => inputs(3),
		outputs_n(0) => outputs(0),
		outputs_n(1) => outputs(1),
		outputs_n(2) => outputs(2),
		outputs_n(3) => outputs(3),
		outputs_n(4) => outputs(4),
		outputs_n(5) => outputs(5),
		outputs_n(6) => outputs(6)
      );


  --Stimulus process
  STIM_PROC: PROCESS
  
  VARIABLE value : STD_LOGIC_VECTOR (3 DOWNTO 0);
  
  FUNCTION DecoderFunc 
(
      SIGNAL inputs: STD_LOGIC_vector(3 downto 0)
)
      RETURN STD_LOGIC_vector IS
  BEGIN  -- functionally how decoder works
      CASE inputs IS
        WHEN "0000" =>
            RETURN not("1111110") ;
        WHEN "0001" =>
            RETURN not("0110000") ;
        WHEN "0010" =>
            RETURN not("1101101") ; 
	when "0011" =>
	    return not("1111001");
	when "0100" =>
	    return not("0110011");
	when "0101" =>
	    return not("1011011");
	when "0110" =>
	    return not("1011111");
	when "0111" =>
	    return not("1110000");
	when "1000" =>
	    return not("1111111");
	when "1001" =>
	    return not("1110011");
	when "1010" =>
	    return not("1110111");
	when "1011" =>
	    return not("0011111");
	when "1100" =>
	    return not("1001110");
	when "1101" =>
	    return not("0111101");
	when "1110" =>
	    return not("1001111");
	when "1111" =>
	    return not("1000111");
	when others =>
	    return not("1111111");
      END CASE ;
  END  DecoderFunc;
  
  BEGIN
    -- test all input combinations
    FOR i in 0 TO 15 LOOP

	    value := STD_LOGIC_VECTOR(TO_UNSIGNED(i, 4));

		  --Set input values
		  inputs(0) <= value(0);
		  inputs(1) <= value(1);
		  inputs(2) <= value(2);
		  inputs(3) <= value(3);

		  -- input values stable for 50 ns
      WAIT FOR 50 ns;
      
      -- call mux4to1Func to verify output f for this set of input values
      ASSERT(outputs = DecoderFunc (inputs))
   
        REPORT "Error : outputs incorrect for inputs = " & STD_LOGIC'IMAGE (value(3)) & STD_LOGIC'IMAGE (value(2)) & STD_LOGIC'IMAGE (value(1)) & STD_LOGIC'IMAGE (value(0)) SEVERITY WARNING;
 
      
    END LOOP;  -- i

	  WAIT FOR 500ns;
    REPORT "SIMULATION FINISHED!";
    WAIT;

  END PROCESS;
--End Test Bench

END;
