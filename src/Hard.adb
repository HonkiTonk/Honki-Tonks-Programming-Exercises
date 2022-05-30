pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;
with Ada.Wide_Wide_Characters.Handling; use Ada.Wide_Wide_Characters.Handling;

package body Hard is

   procedure Hard
   is begin
      
      Put_Line ("Press y to show the hard stuff.");
      
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
      
         
         
         Put_Line ("Press y to show the hard stuff again.");
      
         Get_Immediate (Item => UserInput);
      
         if
           To_Lower (Item => UserInput) = 'y'
         then
            null;
         
         else
            return;
         end if;
         
      end loop ShowLoop;
      
   end Hard;

end Hard;
