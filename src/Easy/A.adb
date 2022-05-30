pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

package body A is

   procedure FizzBuzz
   is begin
      
      ZahlenSchleife:
      for ZahlenSchleifenwert in 1 .. 100 loop
         
         if
           ZahlenSchleifenwert mod (3 * 5) = 0
         then
            Put_Line ("FizzBuzz");
            
         elsif
           ZahlenSchleifenwert mod 5 = 0
         then
            Put_Line ("Buzz");
            
         elsif
           ZahlenSchleifenwert mod 3 = 0
         then
            Put_Line ("Fizz");
            
         else
            Put_Line (ZahlenSchleifenwert'Wide_Wide_Image);
         end if;
         
      end loop ZahlenSchleife;
      
   end FizzBuzz;

end A;
