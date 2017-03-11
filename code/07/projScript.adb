Script started on Wed 06 Apr 2016 07:54:26 PM EDT
mjd85@hollerith:~/Documents/214/code/07$ cat namer.adb
-- namer.adb "test-drives" the Name type.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Mark Davis
-- Date: April 1, 2016
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

procedure namer is

  NAME_SIZE : constant integer := 8;

  type Name is 
  record 
	myFirst : String( 1 .. NAME_SIZE );
	myMiddle : String( 1 .. NAME_SIZE );
	myLast : String( 1 .. NAME_SIZE );
  end record;
  aName : Name;

  ----------------------------------------------
  -- Init initializes a Name variable          -
  -- Receive: theName, the Name variable;      -
  --          First, the first name;           -
  --          Middle, the middle name;         -
  --          Last, the last name.             -
  -- Return: theName, its fields set to First, -
  --               Middle, and Last.           -
  ----------------------------------------------

  procedure Init (TheName : out Name; First, Middle, Last : in String) is
	begin
	TheName.myFirst := First;
	TheName.myMiddle := Middle;
	TheName.myLast := Last; 

  end Init;


  ----------------------------------------------
  -- getFirst(Name) retrieves Name.myFirst     -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myFirst.                  -
  ----------------------------------------------
  function getFirst(TheName : in Name) return String is
	begin
	return TheName.MyFirst;
	end getFirst;

  ----------------------------------------------
  -- getMiddle(Name) retrieves Name.myMiddle   -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myMiddle.                 -
  ----------------------------------------------
  function getMiddle(TheName: in Name) return String is
	begin
	return TheName.MyMiddle;
	end getMiddle;

  ----------------------------------------------
  -- getLast(Name) retrieves Name.myLast       -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myLast.                   -
  ----------------------------------------------
  function getLast(TheName: in Name) return String is
	begin
	return TheName.MyLast;
	end getLast;


  -----------------------------------------------
  -- getFullName(Name) retrieves Name as a String-
  -- Receive: theName, a Name.                  -
  -- PRE: theName has been initialized.         -
  -- Return: a String representation of theName -
  -----------------------------------------------
  function getFullName(TheName: in Name) return String is
	begin
	return (TheName.myFirst & TheName.myMiddle & TheName.myLast);
	end getFullName;


  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name.                 -
  -- Output: theName, to the screen.           -
  ----------------------------------------------
  procedure Put(TheName: in Name) is
	begin
	Put( TheName.myFirst );
	Put( TheName.myMiddle );
	Put( TheName.myLast );
	end Put;


  ----------------------------------------------
  -- setFirst(Name)changes first name          -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name.                 -
  -- POST: first name has new value            -
  ----------------------------------------------
  procedure setFirst(TheName : out Name; aFirst : in String) is
	begin
	TheName.myFirst := aFirst;	
	end setFirst;


  ----------------------------------------------
  -- setMiddle(Name)changes middle name        -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name.                 -
  -- POST: middle name has new value           -
  ----------------------------------------------
  procedure setMiddle(TheName : out Name; aMiddle : in String) is
	begin
	TheName.myMiddle := aMiddle;	
	end setMiddle;


  ----------------------------------------------
  -- setLast(Name)changes last name            -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name.                 -
  -- POST: last name has new value             -
  ----------------------------------------------
  procedure setLast(TheName : out Name; aLast : in String) is
	begin
	TheName.myLast:= aLast;	
	end setLast;


  ----------------------------------------------
  -- lfmi(Name)returns last, first, mi         -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name.                 -
  -- RETURN: last, first mi                    -
  ----------------------------------------------
  function lfmi(TheName : in Name) return String is
	begin
	return TheName.myLast & ", " & TheName.myFirst & " " & TheName.myMiddle(1) & ".";
	end lfmi;


  ----------------------------------------------
  -- readName(Name)reads a name from keyboard  -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name.                 -
  -- POST: new values for first, middle and last-
  ----------------------------------------------
  procedure readName(TheName : out Name) is
	begin
	Put("Enter first name: ");
	Get(TheName.myFirst);

	Put("Enter middle name: ");
	Get(TheName.myMiddle);

	Put("Enter last name: ");
	Get(TheName.myLast);
	
	end readName;	

begin
   Init(aName, "John    ", "Paul    ", "Jones   ");

   pragma Assert( getFirst(aName) = "John    ", "getFirst() failed");
   pragma Assert( getMiddle(aName) = "Paul    ", "getMiddle() failed");
   pragma Assert( getLast(aName) = "Jones   ", "getLast() failed");
   pragma Assert( getFullName(aName) = "John     Paul     Jones   ", 
                    "getFullName() failed");
--project 7 tests-----------
   setFirst(aName, "Mark    ");
   pragma Assert( getFirst(aName) = "Mark    ", "setFirst() failed");

   setMiddle(aName, "Jonathan");
   pragma Assert( getMiddle(aName) = "Jonathan", "setMiddle() failed");

   setLast(aName, "Davis   ");
   pragma Assert( getLast(aName) = "Davis   ", "setLast() failed");

   pragma Assert( lfmi(aName) = "Davis   , Mark J.", "lfmi() failed");

  --enter "Mark Jon Davis"
   readName(aName);
   pragma Assert( getFullName(aName) = "Mark Jon Davis", "readName() failed");

   Put(aName); New_line;
   Put("All tests passed!"); New_line;

end namer;

mjd85@hollerith:~/Documents/214/code/07$ gn natmake namer.adb
gcc-4.6 -c namer.adb
gnatbind -x namer.ali
gnatlink namer.ali
mjd85@hollerith:~/Documents/214/code/07$ ./namer
Enter first name: Mark    
Enter middle name: Jon     
Enter last name: Davis   
Mark    Jon     Davis   
All tests passed!
mjd85@hollerith:~/Documents/214/code/07$ exit
exit

Script done on Wed 06 Apr 2016 07:54:49 PM EDT
