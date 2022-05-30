pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;
with Ada.Wide_Wide_Characters.Handling; use Ada.Wide_Wide_Characters.Handling;

with FindNumbersEasy;
with A;

package body Easy is

   procedure Easy
   is begin
      
      Put_Line ("Press y to show the easy stuff.");
      
      Get_Immediate (Item => UserInput);
      
      if
        To_Lower (Item => UserInput) = 'y'
      then
         null;
         
      else
         return;
      end if;
      
      ShowLoop:
      loop
         
         FindNumbersEasy.OddEven;
         FindNumbersEasy.Sum;
         A.FizzBuzz;
         
         Put_Line ("Press y to show the easy stuff again.");
      
         Get_Immediate (Item => UserInput);
      
         if
           To_Lower (Item => UserInput) = 'y'
         then
            null;
         
         else
            return;
         end if;
         
      end loop ShowLoop;
      
   end Easy;

end Easy;
