Script started on Fri 08 Apr 2016 09:49:24 AM EDT
mjd85@boole:~/Documents/214/code/08/ada$ cat Makefile
# Makefile for GNAT (Ada) compilation

TARGET = namer
PACKAGE = name_package

CC = gcc
CFLAGS = -c -gnata

$(TARGET): $(TARGET).ali $(PACKAGE).o
	gnatbind $(TARGET).ali
	gnatlink $(TARGET).ali

$(TARGET).ali: $(TARGET).adb $(PACKAGE).ads
	$(CC) $(CFLAGS) $(TARGET).adb

$(PACKAGE).o: $(PACKAGE).adb $(PACKAGE).ads
	$(CC) $(CFLAGS) $(PACKAGE).adb

clean:
	rm -f $(TARGET) *~ *# *.o *.ali *.c

mjd85@boole:~/Documents/214/code/08/ada$ cat namer.adb
-- namer.adb "test-drives" the Name type.
--
-- Begun by: Dr. Adams, CPSC 280, October 1999.
-- Completed by: Mark Davis
-- Date: April 8, 2016
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;
with Name_Package; use Name_Package;

procedure namer is

aName : Name_Package.Name;

begin
   Init(aName, "John    ", "Paul    ", "Jones   ");

   pragma Assert( getFirst(aName) = "John    ",
                   "getFirst() failed");
   pragma Assert( getMiddle(aName) = "Paul    ", 
                   "getMiddle() failed");
   pragma Assert( getLast(aName) = "Jones   ", 
                   "getLast() failed");
   pragma Assert( getFullName(aName) = "John     Paul     Jones   ",
                    "getFullName() failed");
   Put(aName); New_line;
   Put("All tests passed!"); New_line;
end namer;

mjd85@boole:~/Documents/214/code/08/ada$ cat name_ak ck   package.ads
-- name_package.ads declares the Name type and its operations.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Mark Davis
-- Date: April 8, 2016
--------------------------------------------------------------

package Name_Package is

type Name is private;

procedure Init(Nm: out Name; First, Middle, Last : in String);
procedure Put(Nm: in Name);
function getFirst( Nm: in Name) return String;
function getMiddle( Nm: in Name) return String;
function getLast( Nm: in Name) return String;
function getFullName( Nm: in Name) return String;

private
NAME_SIZE : constant Positive := 8;

  type Name is
      record
         myFirst,
         myMiddle,
         MyLast : String(1..NAME_SIZE);
      end record;


end Name_Package;
mjd85@boole:~/Documents/214/code/08/ada$ cat name_package.adb
-- name_package.adb defines operations for the Name type.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Mark Davis
-- Date: April 8, 2016
---------------------------------------------------------
with Ada.Text_IO; use Ada.Text_IO;
package body Name_Package is


----------------------------------------------
  -- Init initializes a Name variable          
  -- Receive: Nm, the Name variable;          
  --          First, the first name;         
  --          Middle, the middle name;      
  --          Last, the last name.         
  -- Return: Nm, its fields set to First, 
  --               Middle, and Last.     
  ----------------------------------------------
  procedure Init(Nm: out Name;
                 First, Middle, Last : in String) is
  begin
    Nm.MyFirst := First;
    Nm.MyMiddle := Middle;
    Nm.MyLast := Last;
  end Init;

  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: Nm has been initialized.             -
  -- Receive: Nm, a Name.                      -
  -- Output: Nm, to the screen.                -
  ----------------------------------------------
  procedure Put(Nm: in Name) is
  begin
    Put( getFullName(Nm) );
  end Put;

  ----------------------------------------------
  -- getFirst(Name) retrieves Name.myFirst        
  -- Receive: Nm, a Name.                      
  -- PRE: Nm has been initialized.            
  -- Return: Nm.myFirst.                     
  ----------------------------------------------
  function getFirst( Nm: in Name) return String is
  begin
    return Nm.MyFirst;
  end getFirst;

  ----------------------------------------------
  -- getMiddle(Name) retrieves Name as a String 
  -- Receive: Nm, a Name.        
  -- PRE: Nm has been initialized.
  -- Return: Nm.myMiddle. 
  ----------------------------------------------
  function getMiddle( Nm: in Name) return String is
  begin
     return Nm.MyMiddle;
  end getMiddle;

  ----------------------------------------------
  -- getLast(Name) retrieves Name.myLast       
  -- Receive: Nm, a Name.                    
  -- PRE: Nm has been initialized.            
  -- Return: Nm.myLast.                        
  ----------------------------------------------
  function getLast( Nm: in Name) return String is
  begin
     return Nm.MyLast;
  end getLast;

  ----------------------------------------------
  -- getFullName(Name) retrieves Name as a String -
  -- Receive: Nm, a Name.                      -
  -- PRE: Nm has been initialized.             -
  -- Return: a String representation of Nm.    -
  ----------------------------------------------
  function getFullName( Nm: in Name) return String is
  begin
    return Nm.MyFirst & " "
           & Nm.MyMiddle & " "
           & Nm.MyLast;
  end getFullName;


end Name_Package;
mjd85@boole:~/Documents/214/code/08/ada$ gnatmake namer.adb
gnatmake: "namer" up to date.
mjd85@boole:~/Documents/214/code/08/ada$ ./namer
John     Paul     Jones   
All tests passed!
mjd85@boole:~/Documents/214/code/08/ada$ exit
exit

Script done on Fri 08 Apr 2016 09:50:01 AM EDT
