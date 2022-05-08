pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

package body FindNumbersEasy is

   procedure OddEven
   is begin
      
      NumberLoop:
      for NumberLoopvalue in 1 .. 100 loop
         
         case
           NumberLoopvalue mod 2
         is
            when 0 =>
               Put_Line ("Even: " & NumberLoopvalue'Wide_Wide_Image);
               
            when others =>
               Put_Line ("Odd: " & NumberLoopvalue'Wide_Wide_Image);
         end case;
         
      end loop NumberLoop;
      
   end OddEven;
   
   
   
   procedure Sum
   is begin
      
      SumResult := 0;
      
      NumberLoop:
      for NumberLoopvalue in 1 .. 100 loop
         
         SumResult := SumResult + NumberLoopvalue;
         
      end loop NumberLoop;
      
      Put_Line ("Sum: " & SumResult'Wide_Wide_Image);
      
   end Sum;

end FindNumbersEasy;
