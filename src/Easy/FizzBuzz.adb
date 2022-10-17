pragma Warnings (Off, "*array aggregate*");

with Ada.Text_IO;
with Ada.Wide_Wide_Text_IO;

package body FizzBuzz is

   -- https://godbolt.org/ x86-64 gnat 12.1 -O3 = 130
   procedure FizzBuzzEins
   is begin
      
      ZahlenSchleife:
      for ZahlenSchleifenwert in 1 .. 100 loop
         
         if
           ZahlenSchleifenwert mod (3 * 5) = 0
         then
            Ada.Wide_Wide_Text_IO.Put_Line ("FizzBuzz");
            
         elsif
           ZahlenSchleifenwert mod 5 = 0
         then
            Ada.Wide_Wide_Text_IO.Put_Line ("Buzz");
            
         elsif
           ZahlenSchleifenwert mod 3 = 0
         then
            Ada.Wide_Wide_Text_IO.Put_Line ("Fizz");
            
         else
            Ada.Wide_Wide_Text_IO.Put_Line (ZahlenSchleifenwert'Wide_Wide_Image);
         end if;
         
      end loop ZahlenSchleife;
      
   end FizzBuzzEins;
   
   
   
   -- https://godbolt.org/ x86-64 gnat 12.1 -O3 = 115
   procedure FizzBuzzZwei
   is begin
            
      ZahlenSchleife:
      for ZahlenSchleifenwert in 1 .. 100 loop
         
         ZahlAnzeigen := True;
         
         case
           ZahlenSchleifenwert mod 3
         is
            when 0 =>
               Ada.Wide_Wide_Text_IO.Put ("Fizz");
               ZahlAnzeigen := False;
               
            when others =>
               null;
         end case;
         
         case
           ZahlenSchleifenwert mod 5
         is
            when 0 =>
               Ada.Wide_Wide_Text_IO.Put ("Buzz");
               ZahlAnzeigen := False;
               
            when others =>
               null;
         end case;
         
         case
           ZahlAnzeigen
         is
            when True =>
               Ada.Wide_Wide_Text_IO.Put_Line (ZahlenSchleifenwert'Wide_Wide_Image);
               
            when False =>
               Ada.Wide_Wide_Text_IO.New_Line;
         end case;
         
      end loop ZahlenSchleife;
      
   end FizzBuzzZwei;
   
   
   
   -- https://godbolt.org/ x86-64 gnat 12.1 -O3 = 86
   procedure FizzBuzzDrei
   is begin
      
      ZahlenSchleife:
      for ZahlenSchleifenwert in 1 .. 100 loop
         
         ZahlAnzeigen := True;
         
         case
           ZahlenSchleifenwert mod 3
         is
            when 0 =>
               Ada.Text_IO.Put ("Fizz");
               ZahlAnzeigen := False;
               
            when others =>
               null;
         end case;
         
         case
           ZahlenSchleifenwert mod 5
         is
            when 0 =>
               Ada.Text_IO.Put ("Buzz");
               ZahlAnzeigen := False;
               
            when others =>
               null;
         end case;
         
         case
           ZahlAnzeigen
         is
            when True =>
               Ada.Text_IO.Put_Line (ZahlenSchleifenwert'Image);
               
            when False =>
               Ada.Text_IO.New_Line;
         end case;
         
      end loop ZahlenSchleife;
      
   end FizzBuzzDrei;

end FizzBuzz;
