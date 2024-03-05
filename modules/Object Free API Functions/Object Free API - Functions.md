# Object Free API - Lua Functions

## About
The Object Free API defined functions are Lua functions that are not related to an object.
 
## Basic Syntax
* **Syntax with the handle**
    * object.function(object)

* **Syntax with the colon operator**
    * object:function()

## Handles
Only a couple of the Object API functions require a handle as an argument or return a handle.

The handle is a custom data type called "light_userdata".

The handle is a unique identifier that refers to a grandMA3 object. For instance, a specific sequence, cue,  preset, or fixture.

## Interface Functions
There are several Lua functions related to creating and displaying interface elements.

They are often some of the most complex functions, that can need a lot of different input elements that allow adjustment to specific needs.

Some of them can also return user input to Lua functions.

## Variable Functions
There are two different sets of variables.

The sets are:
* **UserVars()**
    * These are the variables stored as User variables.

* **GlobalVars()** 
    * These are the variables stored as Global variables.

The user and global variables can be listed using the GetUserVariable and GetGlobalVariable keywords combined with an asterisk wildcard.

The same user and global variables can be used in macros and the regular command line. This is due to the interactions between variables outside of the Lua plugins.

There are three functions regarding interactions with variables in a set:
* **GetVar()** 
    * Gets the value from a specific variable in one of the sets.

* **SetVar()** 
    * Sets a value in a specific variable in one of the sets. 
        * This also creates the variable if it does not exist.

* **DelVar()** 
    * Deletes a specific variable in a set of variables.

Most of the time the following three functions will need to know the variable's name. 

## Object API Functions - Variable Functions
* **UserVars()**
    * **About**
        * This function returns a handle to the set of user variables.
    * **Syntax**
        * UserVars()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Handle:
            * The function returns a handle of the set of user variables.
    * **Examples**
        * [Click Here]()

* **GlobalVars()**
    * **About**
        * This function returns a handle to the set of global variables.
    * **Syntax**
        * GlobalVars()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Handle:
            * The function returns a handle of the set of global variables.
    * **Examples**
        * [Click Here]()

* **GetVars()**
    * **About**
        * This Lua function returns the value of a specific variable in a set of variables.
    * **Syntax**
        * GetVar(handle, string)
    * **Arguments**
        * Handle:
            * The handle of variable set.
        * String:
            * The name of the variable. 
                * It needs to be in quotation marks.
    * **Return**
        * Value:
            * This is the value of the variable.
            * If the variable does not exist, then nil is returned.
    * **Examples**
        * [Click Here]()

* **SetVars()**
    * **About**
        * This Lua function sets a value to a specific variable in a set of variables.
        * If the variable exists, then the value is overwritten. 
        * If it does not exist, then it is created with a value.
    * **Syntax**
        * SetVar(handle, string, value)
    * **Arguments**
        * Handle:
            * The handle of variable set.
        * String:
            * The name of the variable. 
                * It needs to be in quotation marks.
        * Value:
            * The value can be a string, integer, or double.
    * **Return**
        * Boolean:
            * True / 1: The variable was set.
            * False / 0: The variable was not set.
    * **Examples**
        * [Click Here]()

* **DelVars()**
    * **About**
        * The DelVar Lua function deletes a specific variable in a set of variables. 
    * **Syntax**
        * DelVar(handle, string)
    * **Arguments**
        * Handle:
            * The handle of variable set.
        * String:
            * The name of the variable. 
                * It needs to be in quotation marks.
    * **Return**
        * Boolean:
            * True / 1: The variable was deleted.
            * False / 0: The variable was not deleted.
                * If the variable does not exist then false is also returned.
    * **Examples**
        * [Click Here]()

## Object API Functions - Interface Functions
* **Progress Bar**
    * **About**
        * The Progress Bar is a Lua function that can create a moving progress bar on the screens.
        * There are several Lua functions connected to creating and running a progress bar.

### Object API Functions - Interface Functions - Progress Bar
* **StartProgress()**
    * **About**
        * The StartProgress Lua function creates and displays a progress bar on all screens. 
        * A string input argument creates a title for the progress bar. 
        * The function returns a handle that is used to further interact with the progress bar.
        * Executing the function displays the progress bar on the screens. 
        * It only disappears using the StopProgress function.
            * Which needs the specific Progress Bar handle in order to Stop the Progress Bar function.
                * It is highly recommended to store the returned handle from the StartProgress function.
    * **Syntax**
        * StartProgress(string)
    * **Arguments**
        * String:
            * The string is used as the title for the progress bar.
    * **Return**
        * Handle:
            * The returned handle is the identifier for the progress bar.
    * **Examples**
        * [Click Here]()

* **SetProgressRange()**
    * **About**
        * The SetProgressRange Lua function defines a range for a progress bar.
            * The handle input argument defines which progress bar it defines a range for. 
                * If a progress bar exists it has a handle that is generated using the StartProgress function.
    * **Syntax**
        * SetProgressRange(handle, integer, integer)
    * **Arguments**
        * Handle:
            * The handle for the progress bar.
        * Integer:
            * The start value for the range.
        * Integer:
            * The end value for the range.
    * **Return**
        * This function does not return anything.
    * **Examples**
        * [Click Here]()

* **SetProgress()**
    * **About**
        * The SetProgress Lua function defines a value on the range for a progress bar. 
            * The handle input argument defines the progress bar. 
                * If a progress bar exists it has a handle that is generated using the StartProgress function.
    * **Syntax**
        * SetProgress(handle, integer)
    * **Arguments**
        * Handle:
            * The handle for the progress bar.
        * Integer:
            * The desired value indicating the current status or position of the progress bar.
    * **Return**
        * This function does not return anything.
    * **Examples**
        * [Click Here]()

* **SetProgressText()**
    * **About**
        * The SetProgressText Lua function defines a text string to be displayed in a progress bar next to the progress bar title text. 
            * The title cannot be changed after creation, but this text can be changed. 
            * It could be used to describe the current step in the progress.
        * The handle input argument defines which progress bar it defines a text for. 
            * If a progress bar exists it has a handle that is generated using the StartProgress function.
    * **Syntax**
        * SetProgressText(handle, string)
    * **Arguments**
        * Handle:
            * The handle for the progress bar.
        * String:
            * The text string to be displayed.
    * **Return**
        * This function does not return anything.
    * **Examples**
        * [Click Here]()

* **IncProgress()**
    * **About**
        * The IncProgress Lua function changes the value on the range for a progress bar using an integer input. 
            * The handle input argument defines the progress bar. 
                * If a progress bar exists it has a handle that is generated using the StartProgress function.
    * **Syntax**
        * IncProgress(handle, integer)
    * **Arguments**
        * Handle:
            * The handle for the progress bar.
        * Integer:
            * The desired value for the range. This can be a negative value to decrease the value.
    * **Return**
        * This function does not return anything.
    * **Examples**
        * [Click Here]()

* **StopProgress()**
    * **About**
        * The StopProgress Lua function removes a progress bar.
            * The progress bar must exist before it can be removed.
            * The handle input argument defines which progress bar it removes. 
                * If a progress bar exists it has a handle that is generated using the StartProgress function.
    * **Syntax**
        * StopProgress(handle)
    * **Arguments**
        * Handle:
            * The handle for the progress bar to be stopped.
    * **Return**
        * This function does not return anything.
    * **Examples**
        * [Click Here]()

## Object API Functions - General
### A
* **AddonVars()**
    * **About**
        * The AddonVars function returns a handle to the set of variables connected to a specific add-on.
    * **Syntax**
        * AddonVars(string)
    * **Arguments**
        * String:
            * The string needs to be the name of the add-on.
    * **Return**
        * Handle
            * The function returns a handle of the set of variables.
    * **Examples**
        * [Click Here]()

### B
* **BuildDetails()**
    * **About**
        * The BuildDetails function returns a table with key-value pairs about the software build.
    * **Syntax**
        * BuildDetails()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Build details
            * These are the possible keys in the table:
                * GitDate: String with the date for the repository branch of the software.
                * GitHead: String with the branch of the repository.
                * GitHash: String with the hash for the repository.
                * CompileDate: String with the date for the compile.
                * CompileTime: String with the time for the compile.
                * BigVersion: String indicating the software version.
                * SmallVersion: String with the small version number of the software.
                * HostType: String with the host type, for instance, "Console" or "onPC".
                * HostSubType: String with the host sub-type, for instance, "FullSize" or "Light".
                * CodeType: String showing the type of code, for instance, "Release".
                * IsRelease: Boolean indicating if the software is a release version.
    * **Examples**
        * [Click Here]()
        
### C
* **ClassExists()**
    * **About**
        * The ClassExists Lua function returns a boolean indicating whether the provided string is a class.
    * **Syntax**
        * ClassExists(string)
    * **Arguments**
        * String:
            * A string containing a single word that could be a class.
    * **Return**
        * Boolean
            * The function returns a boolean.
                * True: The provided word is a class.
                * False: The provided input is not a class.
    * **Examples**
        * [Click Here]()

* **CloseAllOverlays()**
    * **About**
        * The CloseAllOverlays function closes any pop-ups or menus (overlays) open on any screen.
    * **Syntax**
        * CloseAllOverlays()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * This function does not return anything.
    * **Examples**
        * [Click Here]()

* **CreateUndo()**
    * **About**
        * The CreateUndo Lua function returns a handle to a list of commands and function calls grouped in the same oops action.
            * Functions can be executed with a reference to the undo handle. 
            * This adds the function to the undo list.
        * Undo lists needs to be closed using the CloseUndo function.
    * **Syntax**
        * CreateUndo(string)
    * **Arguments**
        * String:
            * A text string must be added. 
                * It can be used to identify the undo list.
    * **Return**
        * Handle
            * The function returns the handle to the undo list.
    * **Examples**
        * [Click Here]()

* **CloseUndo()**
    * **About**
        * The CloseUndo Lua function closes an open undo list. 
            * The function returns a boolean indicating if the function succeeds.
        * Undo lists needs to be created to be closed.
    * **Syntax**
        * CloseUndo(handle)
    * **Arguments**
        * Handle:
            * The handle of a created undo list.
    * **Return**
        * Boolean
            * True / 1: The undo list was closed.
            * False / 0: The undo list is still in use and cannot be closed.
    * **Examples**
        * [Click Here]()

* **Cmd()**
    * **About**
        * The CMD Lua function executes a command in the grandMA3 command line. 
            * It is executed in a Lua task - not the Main task (standard typed commands are run in the Main task). 
        * It is executed synchronously, and it blocks the Lua task while executing. 
            * This means that a bad command has the potential to block the system.
    * **Alternate Functions**
        * CmdIndirect()
        * CmdIndirectWait()
    * **Syntax**
        * Cmd(string[, handle])
    * **Arguments**
        * String:
            * A string with the command to be executed in the command line.
                * Do not add a please or enter to execute the command.
        * Handle (optional):
            * A handle to an undo (oops) list.
    * **Return**
        * String
            * A string is returned with the execution feedback known from the command line feedback.
                * OK: Command executed.
                * Syntax Error: Command not executed because of syntax error.
                * Illegal Command: Command not executed because of some illegal command or action.
            * The returned string does not need to be used.
    * **Examples**
        * [Click Here]()

* **CmdIndirect()**
    * **About**
        * The CmdIndirect Lua function executes a command within the grandMA3 command line. 
            * It is executed asynchronously in the Main task. 
                * It does not block the Lua execution since it is not executed in the Lua Task.
    * **Syntax**
        * CmdIndirect(string[, handle[, handle]])
    * **Arguments**
        * String:
            * A string with the command to be executed in the command line.
                * Do not add a please or enter to execute the command.
        * Handle (optional):
            * A handle to an undo (oops) list.
        * Handle (optional):
            * This is a handle for the target for the command. 
                * For instance, the target can be a specific screen.
    * **Return**
        * This function does not return anything.
    * **Examples**
        * [Click Here]()

* **CmdIndirectWait()**
    * **About**
        * The CmdIndirectWait Lua function executes a command within the grandMA3 command line. 
            * It does not block the Lua execution and is executed synchronously in the main task. 
                * Synchronous commands wait for the command to be executed before executing any following command.
    * **Syntax**
        * CmdIndirectWait(string[, handle[, handle]])
    * **Arguments**
        * String:
            * A string with the command to be executed in the command line.
                * Do not add a please or enter to execute the command.
        * Handle (optional):
            * A handle to an undo (oops) list.
        * Handle (optional):
            * This is a handle for the target for the command.
                * For instance, the target can be a specific screen.
    * **Return**
        * This function does not return anything.
    * **Examples**
        * [Click Here]()

* **CmdObj()**
    * **About**
        * The CmdObj Lua function returns information about the command line object.
    * **Syntax**
        * CmdObj()
    * **Arguments**
        * This function does not have any arguments.
    * **Return**
        * Handle
            * The function returns a handle to the command line object.
    * **Examples**
        * [Click Here]()

* **ConfigTable()**
    * **About**
        * The ConfigTable Lua function returns a table with some configuration information. 
            * The function does not have any actual functions
            * The table is not sorted.
    * **Syntax**
        * ConfigTable()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Table
            * The returned table contains kay value pairs with configuration information
    * **Examples**
        * [Click Here]()

* **Confirm()**
    * **About**
        * The Confirm Lua function provides a simple confirmation pop-up for a true/false query. 
            * It is part of the user interface functions.
    * **Syntax**
        * Confirm(string[, string[, integer[, boolean]]])
    * **Arguments**
        * String:
            * This string is the title for the pop-up.
        * String (optional):
            * This string is the text in the pop-up.
        * Integer (optional):
            * This integer is not used since the pop-up appears on all screens. 
                * The value can be nil.
        * Boolean (optional):
            * This boolean defines if there is a Cancel button in the pop-up or not.
                * True: There is a Cancel button in the pop-up. 
                    * This is the default option used if it is not defined.
                * False: There is only an OK button in the pop-up.
    * **Return**
        * Boolean:
            * True / 1: The pop-up was confirmed with the OK.
            * False / 0: The pop-up was not confirmed with Cancel. 
                * This is only a possible option if the Cancel button is visible.
    * **Examples**
        * [Click Here]()

* **CurrentEnvironment()**
    * **About**
        * The CurrentEnvironment Lua function returns a handle to the current users' selected environment.
    * **Syntax**
        * CurrentEnvironment()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Handle
            * The returned handle to the environment.
    * **Examples**
        * [Click Here]()

* **CurrentExecPage()**
    * **About**
        * The CurrentEnvironment Lua function returns a handle to the current users' selected executor page.
    * **Syntax**
        * CurrentExecPage()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Handle
            * The returned handle to the executor page.
    * **Examples**
        * [Click Here]()

* **CurrentProfile()**
    * **About**
        * The CurrentProfile Lua function returns a handle to the current users' profile.
    * **Syntax**
        * CurrentProfile()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Handle
            * The returned handle to the user profile.
    * **Examples**
        * [Click Here]()

* **CurrentUser()**
    * **About**
        * The CurrentUser Lua function returns a handle to the current user.
    * **Syntax**
        * CurrentUser()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Handle
            * The returned handle to the user.
    * **Examples**
        * [Click Here]()

### D
* **DataPool()**
    * **About**
        * The DataPool Lua function references the currently selected DataPool and is used to read or edit properties within the data pool.
    * **Syntax**
        * DataPool()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Handle
            * The function returns a handle to the DataPool object.
    * **Examples**
        * [Click Here]()

* **DefaultDisplayPositions()**
    * **About**
        * The DefaultDisplayPositions Lua function returns the handle of the conventional default display positions, which contains the first seven screens as children.
            * For example, if the command line, view bar, and encoder/playback bar are displayed or not.
    * **Syntax**
        * DefaultDisplayPositions()
    * **Arguments**
        * This function does not have any arguments.
    * **Return**
        * Handle
            * The function returns a handle to the command line object.
    * **Examples**
        * [Click Here]()

* **DeskLocked()**
    * **About**
        * The DeskLocked Lua function returns a boolean indicating if the station is locked.
    * **Syntax**
        * DeskLocked()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Boolean
            * The boolean indicates if the station is desk locked or not.
                * True (or 1): The station is locked.
                * False (or 0): The station is not locked.
    * **Examples**
        * [Click Here]()

* **DeviceConfiguration()**
    * **About**
        * The DeviceConfiguration Lua function returns a handle to the DeviceConfiguration object.
    * **Syntax**
        * DeviceConfiguration()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Handle
            * The returned handle to the DeviceConfiguration.
    * **Examples**
        * [Click Here]()

* **DrawPointer()**
    * **About**
        * The DrawPointer function draws a red pointer on the display. 
            * There can only be one pointer at a time on each station.
    * **Syntax**
        * DrawPointer(integer,table[,integer])
    * **Arguments**
        * Integer:
            * This integer is the display index where the pointer should be drawn.
        * Table:
            * This key-value table must have 'x' and 'y' keys with values indicating a position on the display.
        * Integer (optional):
            * This optional integer defines a duration for the pointer in milliseconds. 
            * If a duration is not set, then it stays visible.
    * **Return**
        * This function does not return anything.
    * **Examples**
        * [Click Here]()

### E
* **Echo()**
    * **About**
        * The Echo Lua function prints a string in the System Monitor.
    * **Syntax**
        * Echo(string)
    * **Arguments**
        * String:
            * The string text to be printed to the System Monitor.
    * **Return**
        * This function does not return anything.
    * **Examples**
        * [Click Here]()

* **ErrEcho()**
    * **About**
        * The ErrEcho Lua function prints a red error message on the System Monitor.
    * **Syntax**
        * ErrEcho(string)
    * **Arguments**
        * String:
            * The string text to be printed to the System Monitor.
    * **Return**
        * This function does not return anything.
    * **Examples**
        * [Click Here]()

* **ErrPrintf()**
    * **About**
        * The ErrPrintf Lua function prints a red error message in the Command Line History and System Monitor.
    * **Syntax**
        * ErrPrintf(string)
    * **Arguments**
        * String:
            * The string text to be printed to the Command Line History.
    * **Return**
        * This function does not return anything.
    * **Examples**
        * [Click Here]()

* **Export()**
    * **About**
        * The object-free Export Lua function exports a Lua table in XML format.
            * There is a related object version of Export.
        * This Lua function correlates with the Import Lua function.
    * **Syntax**
        * Export(filename, export_data)
    * **Arguments**
        * Filename:
            * This is a string containing the file name of the exported file.
                * It should contain the file name, including the entire path.
        * Export_data:
            * This is the data that is going to be exported. 
                * It should be a table object.
    * **Return**
        * This function does not return anything.
    * **Examples**
        * [Click Here]()

* **ExportCSV()**
    * **About**
        * The object-free ExportCSV Lua function exports a Lua table in CSV format.
    * **Syntax**
        * ExportCSV(filename, export_data)
    * **Arguments**
        * Filename:
            * This is a string containing the file name of the exported file.
                * It should contain the file name, including the entire path
        * Export_data:
            * This is the data that is going to be exported.
                * It should be a table object.
    * **Return**
        * This function does not return anything.
    * **Examples**
        * [Click Here]()

* **ExportJson()**
    * **About**
        * The object-free ExportJson Lua function exports a Lua table in JSON format.
    * **Syntax**
        * ExportJson(filename, export_data)
    * **Arguments**
        * Filename:
            * This is a string containing the file name of the exported file.
                * It should contain the file name, including the entire path.
        * Export_data:
            * This is the data that is going to be exported.
                * It should be a table object.
    * **Return**
        * This function does not return anything.
    * **Examples**
        * [Click Here]()

### F
* **FromAddr()**
    * **About**
        * The FromAddr Lua function converts a numbered string address into a handle that can be used in commands.
    * **Syntax**
        * FromAddr(string[, handle])
    * **Arguments**
        * String:
            * A text string identifying an object.
                * It can be a numbered or named address.
        * Handle (optional):
            * The default is to write the address from the root location. 
                * This optional handle can specify a different base location. 
                * It still needs to be a base location in the address path from the root to the object.
    * **Return**
        * Handle:
            * The handle for the addressed object.
    * **Examples**
        * [Click Here]()

### G
* **GetApiDescriptor()**
    * **About**
        * The GetApiDescriptor Lua function returns a table with a description of all the object-free Lua functions.
            * The function does not have any actual functions.
            * The table is not sorted and these are descriptions only.
    * **Syntax**
        * GetApiDescriptor()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Table
            * The returned table contains elements with other tables.
                * String
                    * This is the Api function name.
                * String
                    * This is the description of the Api arguments.
                * String
                    * This is the description of the Api returns.
    * **Examples**
        * [Click Here]()

* **GetAttributeByUIChannel()**
    * **About**
        * The GetAttributeByUIChannel Lua function returns the handle to an attribute based on a "UI Channel Index". 
            * The index number can be found in the Parameter List.
    * **Syntax**
        * GetAttributeByUIChannel(integer)
    * **Arguments**
        * Integer
            * The integer is the UI Channel index number.
    * **Return**
        * Handle
            * The handle to the attribute connected to the UI Channel.
    * **Examples**
        * [Click Here]()

* **GetAttributeCount()**
    * **About**
        * The GetAttributeCount Lua function returns the total number of attribute definitions in the show.
    * **Syntax**
        * GetAttributeCount()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Integer
            * The returned integer number represents the total amount of attribute definitions in the show file.
    * **Examples**
        * [Click Here]()

* **GetAttributeIndex()**
    * **About**
        * The GetAttributeIndex Lua function returns the (0 based) index number of the attribute definition based on the system name of the attribute.
    * **Syntax**
        * GetAttributeIndex(string)
    * **Arguments**
        * String:
            * The string text of the attribute system name.
    * **Return**
        * Integer
            * The returned integer number represents the total amount of patched fixtures on all the stages in the show file.
    * **Examples**
        * [Click Here]()

* **GetChannelFunction()**
    * **About**
        * The GetChannelFunction Lua function returns a handle to a channel function based on two index inputs.
    * **Syntax**
        * GetChannelFunction(integer, integer)
    * **Arguments**
        * Integer:
            * The first integer is a UI Channel Index. 
                * This can be found by calling the GetUIChannelIndex() Lua function
        * Integer
            * This integer is an Attribute Index (0-based). 
                * This can be found by calling the GetAttributeIndex() Lua function.
    * **Return**
        * Handle
            * The returned handle to the channel function.
    * **Examples**
        * [Click Here]()

* **GetChannelFunctionIndex()**
    * **About**
        * The GetChannelFunctionIndex Lua function returns the integer matching a channel function based on two index inputs.
    * **Syntax**
        * GetChannelFunctionIndex()
    * **Arguments**
        * Integer:
            * The first integer is a UI Channel Index. 
                * This can be found by calling the GetUIChannelIndex() Lua function.
        * Integer:
            * This integer is an Attribute Index (0-based).
                * This can be found by calling the GetAttributeIndex() Lua function.
    * **Return**
        * Integer
            * The returned integer to a channel function.
    * **Examples**
        * [Click Here]()

* **GetClassDerivationLevel()**
    * **About**
        * The GetClassDerivationLevel Lua function returns an integer indicating the derivation level index for a class based on a class name.
    * **Syntax**
        * GetClassDerivationLevel(string)
    * **Arguments**
        * String:
            * This string needs to be the name of a class.
    * **Return**
        * Integer
            * The returned integer indicates the class derivation level.
    * **Examples**
        * [Click Here]()

* **GetDisplayByIndex()**
    * **About**
        * The GetDisplayByIndex Lua function returns a handle to the display object matching the provided index number.
    * **Syntax**
        * GetDisplayByIndex(integer)
    * **Arguments**
        * Integer:
            * This function needs an index number for one of the displays.
    * **Return**
        * Handle
            * The returned handle to the display object.
    * **Examples**
        * [Click Here]()

* **GetDisplayCollect()**
    * **About**
        * The GetDisplayCollect Lua function returns a handle to the DisplayCollect object.
    * **Syntax**
        * GetDisplayCollect()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Handle
            * The returned handle to the DisplayCollect .
    * **Examples**
        * [Click Here]()

* **GetDMXUniverse()**
    * **About**
        * The GetDMXUniverse Lua function returns a table with the DMX channels and their current value.
    * **Syntax**
        * GetDMXUniverse(integer[, boolean])
    * **Arguments**
        * Integer:
            * The integer is the universe number (Valid range is 1 to 1024).
        * Boolean (optional):
            * The boolean indicates if the returned value is in percent or DMX value.
                * True:
                    * The returned value is in percent (the range is 0 to 100).
                * False:
                    * The returned value is in DMX value (the range is 0 to 255).
    * **Return**
        * This function returns either a Table or a Nil.
            * Table
                * The returned table lists all the DMX addresses and the corresponding value.
            * Nil
                * Nil is returned if the universe is not granted or the input value is out of range.
    * **Examples**
        * [Click Here]()

* **GetDMXValue()**
    * **About**
        * The GetDMXValue Lua function returns a number indicating the DMX value of a specified DMX address.
    * **Syntax**
        * GetDMXValue(integer[, integer, boolean])
    * **Arguments**
        * Integer:
            * The integer is the DMX address.
        * Integer (optional):
            * The integer is the universe number.
        * Boolean (optional):
            * The boolean indicates if the returned value is in percent or DMX value.
                * True:
                    The returned value is in percent (the range is 0 to 100).
                * False:
                    * The returned value is in DMX value (the range is 0 to 255).
    * **Return**
        * Integer
            * The returned integer value corresponds with the value of the selected DMX address.
    * **Examples**
        * [Click Here]()

* **GetExecutor()**
    * **About**
        * The GetExecutor Lua function returns the handles of the executor and the page based on the executor number.
    * **Syntax**
        * GetExecutor(integer)
    * **Arguments**
        * Integer:
            * The integer number for the executor.
    * **Return**
        * Handle - Executor
            * The returned handle to the executor.
        * Handle - Page
            * The returned handle to the page.
    * **Examples**
        * [Click Here]()

* **GetFocus()**
    * **About**
        * The GetFocus Lua function returns a handle to the object who current got focus in the UI.
    * **Syntax**
        * GetFocus() 
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Handle
            * The returned handle to the object.
    * **Examples**
        * [Click Here]()

* **GetFocusDisplay()**
    * **About**
        * The GetFocusDisplay Lua function returns a handle to the display object who current got focus in the UI.
    * **Syntax**
        * GetFocusDisplay()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Handle
            * The returned handle to the display object.
    * **Examples**
        * [Click Here]()

* **GetObjApiDescriptor()**
    * **About**
        * The GetObjApiDescriptor Lua function returns a table with a description of all the object Lua functions.
            * The table is not sorted and these are descriptions only.
    * **Syntax**
        * GetObjApiDescriptor()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Table
            * The returned table contains elements with other tables.
                * String
                    * This is the Api function name.
                * String
                    * This is the description of the Api arguments.
                * String
                    * This is the description of the Api returns.
    * **Examples**
        * [Click Here]()

* **GetPath()**
    * **About**
        * The GetPath Lua function delivers a string with the path of a grandMA3 folder.
    * **Syntax**
        * GetPath(string[, boolean] | integer)
    * **Arguments**
        * The function has two possible argument types - use one of them with each function call.
            * String:
                * A text string with the folder name.
            * Boolean (optional with string):
                * If this boolean is true, then the folder at the path is created if it does not exist.
            Integer:
                * An integer identifying an index in the "Enum.PathType" table.
    * **Restriction**
        * Folder creation only works with string arguments.
    * **Return**
        * String
            * The returned string is the first found full path related to the provided argument.
    * **Examples**
        * [Click Here]()

* **GetPathSeparator()**
    * **About**
        * The GetPathSeparator function returns a string with the path separator for the operating system.
    * **Syntax**
        * GetPathSeparator()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * String
            * The string is a single character indicating the path separator based on the operating system.
    * **Examples**
        * [Click Here]()

* **GetRTChannel()**
    * **About**
        * The GetRTChannel Lua function returns a table with information about the related RT Channel.
    * **Syntax**
        * GetRTChannel(integer)
    * **Arguments**
        * Integer
            * The integer should be the index number for an RT Channel.
    * **Return**
        * Table
            * The returned table contains related numbers, tables, and handles with a named identifying key:
                * handle "subfixture"
                * handle "dmx_channel
                * integer "dmx_default"
                * integer "dmx_highlight"
                * integer "ui_index_first"
                * handle "fixture"
                * table "info"
                * integer "dmx_lowlight"
                * integer "freq"
                * integer "rt_index"
                * table "patch"
    * **Examples**
        * [Click Here]()

* **GetRTChannelCount()**
    * **About**
        * The GetRTChannelCount Lua function returns a number indicating the total amount of RT channels.
    * **Syntax**
        * GetRTChannelCount()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Integer
            * The function returns an integer number depicting the total amount of RT channels.
    * **Examples**
        * [Click Here]()

* **GetRTChannels()**
    * **About**
        * The GetRTChannels Lua function returns a table with RT Channel indexes or a table with handles to the RT Channel objects. 
    * **Syntax**
        * GetRTChannels(integer[,boolean] OR handle[,boolean])
    * **Arguments**
        * There are two different types of arguments for this function.
        * Option 1:
            * Integer:
                The integer should be the index number for a (sub)fixture.
            * Boolean (Optional):
                * True:
                    * The returned table contains handles for RT Channel objects
                * False (default):
                    * The returned table contains integers index values to the RT Channel objects.
        * Option 2:
            * Handle:
                * The handle should relate to a (sub)fixture object.
            * Boolean (Optional):
                * True:
                    * The returned table contains handles for RT Channel objects.
                * False (default):
                    * The returned table contains integers index values to the RT Channel objects.
    * **Return**
        * Table
            * The returned table can be a list of RT Channel indexes or handles to the same RT Channels.
    * **Examples**
        * [Click Here]()

* **GetSample()**
    * **About**
        * The GetSample Lua function returns a number representing a percentage usage based on a string input.
    * **Syntax**
        * GetSample(string)
    * **Arguments**
        * String:
            * Only a specific list of strings can be input:
                * MEMORY
                * CPU
                * CPUTEMP
                * GPUTEMP
                * SYSTEMP
                * FANRPM
    * **Return**
        * Number
            * A number (float) is returned.
    * **Examples**
        * [Click Here]()

* **GetSelectedAttribute()**
    * **About**
        * The GetSelectedAttribute Lua function returns a handle to the currently selected attribute.
    * **Syntax**
        * GetSelectedAttribute()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Handle
            * The returned handle to the selected attribute.
    * **Examples**
        * [Click Here]()

* **GetShowFileStatus()**
    * **About**
        * The GetShowFileStatus Lua function returns a string with the current device's show file status.
            * For example, "NoShow", "ShowLoaded", "ShowDownloaded", "ShowSaving", and "DataNegotiationActive".
    * **Syntax**
        * GetShowFileStatus()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * String
            * The returned string is the enum string from "Enums.ShowFileStatus" that matches the current status.
    * **Examples**
        * [Click Here]()

* **GetSubfixture()**
    * **About**
        * The GetSubfixture Lua function returns the handle of the fixture specified by its patch index number.
    * **Syntax**
        * GetSubfixture(integer)
    * **Arguments**
        * Integer:
            * The patch index number for a fixture. This is also known as the "subfixtureindex".
    * **Return**
        * Handle
            * The function returns a handle to the fixture object matching the provided index number.
    * **Examples**
        * [Click Here]()

* **GetSubfixtureCount()**
    * **About**
        * The GetSubfixtureCount Lua function returns the total number of fixtures that are patched within the show file.
    * **Syntax**
        * GetSubfixtureCount()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Integer
            * The returned integer number represents the total amount of patched fixtures on all the stages in the show file.
    * **Examples**
        * [Click Here]()

* **GetTokenName()**
    * **About**
        * The GetTokenName Lua function returns a string with the full keyword based on the short version string input or nil if there is no corresponding keyword.
    * **Syntax**
        * GetTokenName(string)
    * **Arguments**
        * String:
            * The string input should correspond to a short version of a keyword.
    * **Return**
        * This functions returns either a String or Nil.
            * String
                * A string with the full keyword is returned.
            * Nil
                * If there is no corresponding keyword, then nil is returned.
    * **Examples**
        * [Click Here]()

* **GetTokenNameByIndex()**
    * **About**
        * The GetTokenNameByIndex Lua function returns a string with the keyword based on the index number provided.
    * **Syntax**
        * GetTokenNameByIndex(int)
    * **Arguments**
        * Integer:
            * The integer input is the index number for a corresponding keyword.
                * There is no apparent logic to the index number and the keyword.
    * **Return**
        * This functions returns either a String or Nil.
            * String
                * A string with the full keyword is returned.
            * Nil
                * If there is no corresponding keyword, then nil is returned.
    * **Examples**
        * [Click Here]()

* **GetUIChannelCount()**
    * **About**
        * The GetUIChannelCount Lua function returns a number indicating the total amount of UI channels.
    * **Syntax**
        * GetUIChannelCount()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Integer
            * The function returns an integer number depicting the total amount of UI channels.
    * **Examples**
        * [Click Here]()

* **GetUIChannelIndex()**
    * **About**
        * The GetUIChannelIndex Lua function returns the index integer matching a UI channel based on two index inputs.
    * **Syntax**
        * GetUIChannelIndex(integer, integer)
    * **Arguments**
        * Integer:
            * The first integer is the patch index of a fixture.
        * Integer:
            * This integer is an attribute index (0-based).
                * This can be found by calling the GetAttributeIndex() Lua function.
    * **Return**
        * Integer
            The returned integer to a channel function.
    * **Examples**
        * [Click Here]()

* **GetUIChannels()**
    * **About**
        * The GetUIChannels Lua function returns a table with UI Channel indexes or a table with handles to the UI Channel objects.
    * **Syntax**
        * GetUIChannels(integer[,boolean] OR handle[,boolean])
    * **Arguments**
        * There are two different types of arguments for this function.
        * Option 1:
            * Integer:
                * The integer should be the index number for a (sub)fixture.
            * Boolean (Optional):
                * True:
                    * The returned table contains handles for UI Channel objects.
                * False (default):
                    * The returned table contains integer index values to the UI Channel objects.
        * Option 2:
            * Handle:
                * The handle should relate to a (sub)fixture object.
            * Boolean (Optional):
                * True:
                    * The returned table contains handles for UI Channel objects.
                * False (default):
                    * The returned table contains integer index values to the UI Channel objects.
    * **Return**
        * Table
            * The returned table can be a list of UI Channel indexes or handles to the same UI Channel indexes.
    * **Examples**
        * [Click Here]()

### H
* **HandleToInt()**
    * **About**
        * The object-free HandleToInt Lua function converts a handle into an integer format.
    * **Syntax**
        * HandleToInt(handle)
    * **Arguments**
        * Handle:
            * The handle of the object.
    * **Return**
        * Integer
            * The returned integer is the handle converted to an integer.
    * **Examples**
        * [Click Here]()

* **HandleToStr()**
    * **About**
        * The object-free HandleToStr Lua function converts a handle into a string in a hexadecimal number format.
    * **Syntax**
        * HandleToStr(handle)
    * **Arguments**
        * Handle:
            * The handle of the object.
    * **Return**
        * String
            * The returned string is the handle number converted to a hexadecimal format.
    * **Examples**
        * [Click Here]()

* **HookObjectChange()**
    * **About**
        * The HookObjectChange Lua function is used to automatically call a function when an grandMA3 object changes.
    * **Syntax**
        * HookObjectChange(callback, object, handle)
    * **Arguments**
        * Callback:
            * The function to be executed when changes occur in the specified object.
        * Object:
            * The object to be monitored for changes.
        * Handle:
            * The handle of the object.
    * **Return**
        * This function does not return anything.
    * **Examples**
        * [Click Here]()

* **HostOS()**
    * **About**
        * The HostOS Lua function returns a string with the type of operating system of the device where the plugin is executed (for instance, "Windows", "Linux", or "Mac").
    * **Syntax**
        * HostOS()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * String
            * The returned string is the operating system of the grandMA3 hardware or grandMA3 onPC computer.
    * **Examples**
        * [Click Here]()

* **HostSubType()**
    * **About**
        * The HostSubType Lua function returns a string with the host sub type of the station where the plugin is executed (for example, "FullSize", "Light", "RPU", "onPCRackUnit", "Undefined").
    * **Syntax**
        * HostSubType()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * String
            * The returned string is the host sub-type of the device.
    * **Examples**
        * [Click Here]()

* **HostType()**
    * **About**
        * The HostType Lua function returns a string with the host type of the device where the plugin is executed (for example, "Console" or "onPC").
    * **Syntax**
        * HostType()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * String
            * The returned string is the host type of the device.
    * **Examples**
        * [Click Here]()

### I
* **Import()**
    * **About**
        * The Import Lua function is used to import a Lua table in XML format.
            * This Lua function correlates with the Export Lua function.
    * **Syntax**
        * Import(string)
    * **Arguments**
        * String:
            * A file path for importing XML files.
    * **Return**
        * This function does not return anything.
            * It imports the data as a table.
    * **Examples**
        * [Click Here]()

* **IntToHandle()**
    * **About**
        * The object-free IntToHandle Lua function converts an integer number into a handle.
            * The integer needs to correlate with an actual handle.
    * **Syntax**
        * IntToHandle(integer)
    * **Arguments**
        * Integer:
            * The integer that correlates to an object's handle.
    * **Return**
        * Handle
            * The returned handle of the object correlates with the integer.
    * **Examples**
        * [Click Here]()

* **IsObjectValid()**
    * **About**
        * The IsObjectValid function returns a boolean true or nil depending on whether the supplied argument is a valid object.
    * **Syntax**
        * IsObjectValid(handle)
    * **Arguments**
        * Handle:
            * The argument should be the handle to a possible object.
    * **Return**
        * Boolean or Nil:
            * The returned value is a boolean True if the handle is a valid object or it returns nil if it is not a valid object.
    * **Examples**
        * [Click Here]()

### K
* **KeyboardObj()**
    * **About**
        * The KeyboardObj function returns the handle to the first found keyboard object.
    * **Syntax**
        * KeyboardObj()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Handle
            * The function returns the handle to the keyboard object.
    * **Examples**
        * [Click Here]()

### M
* **MasterPool()**
    * **About**
        * The MasterPool function returns the handle to the masters.
    * **Syntax**
        * MasterPool()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Handle
            * The function returns the handle to the pool of masters.
    * **Examples**
        * [Click Here]()

* **MessageBox()**
    * **About**
        * The MessageBox Lua function is used to create pop-up message boxes. 
        * These can be simple or complex information pop-ups with many different options and user inputs.
            * The message box contains multiple elements that must be defined in a table. 
            * This table is the single input argument to the function.
            * The elements in the message box are displayed in alphabetical order.
    * **Syntax**
        * MessageBox(table)
    * **Arguments**
        * Table:
            * The input to the function must be formatted as a table using key-value pairs. 
            * The needed elements have default values that will be used if not overwritten. 
            * The values can be defined in any order if the key is defined.
            * The table can have the following elements...
                * Title:
                    * This is the title of the pop-up message box.
                * TitleTextColor:
                    * This is the text color for the title text. 
                        * The value is a number or string that refers to the UI Colors in the color theme.
                * BackColor:
                    * This is the color of the frame or border of the pop-up.
                        * The value is a number or string that refers to the UI Colors in the color theme.
                * Icon:
                    * This is an icon that can be shown in the upper left corner of the pop-up.
                        * The value can be an integer or a string that refers to the number or name of a texture image (without the file format).
                    * The icons can be listed by navigating to the texture folder ChangeDestination GraphicsRoot/TextureCollect/Textures and then doing a List command.
                        * This shows a long list with numbers and names of all the textures in the Command Line History window.
                * Message:
                    * This message text string is displayed in the main part of the pop-up.
                        * A new line can be created by adding a "\n" in the text.
                * MessageTextColor:
                    * This is the text color for the message text.
                        * The value is a number or string that refers to the UI Colors in the color theme.
                * Timeout:
                    * The timeout value is an integer that indicates how long the message box is displayed in milliseconds.
                    * It will show a countdown timer at the top of the message area.
                    * When the countdown runs out, it will close the pop-up.
                    * When the timeout closes the pop-up, it returns a success element with a true value.
                * TimeoutResultCancel:
                    * This element can change the return to mimic a cancel of the pop-up, which returns a false instead of a true for the success element.
                * TimeoutResultID:
                    * When the timeout closes the pop-up with the success value = true, a special return result can be defined using this
                        * For example, setting the value to 99 will then return 99 when the message box is closed by the timeout.
                * Commands:
                    * The commands are buttons at the bottom of the message box pop-up. 
                    * The input here is a table of objects using the following structure...
                        * Value:
                            * This integer value will be returned as the result value.
                        * Name:
                            * This is a string which will be shown on the button.
                * Inputs:
                    * The inputs are user input fields where text or numbers can be input.
                        * The input fields will be displayed in alphabetical order.
                    * The input fields are defined using an table with the following structure.
                        * Name:
                            * This is a string value, the text will be shown as a label for the input field.
                        * Value:
                            * This is a string value, it is a default input value for the input field.
                        * Blackfilter:
                            * This is a string value, it defines input characters that are not allowed.
                        * Whitefilter:
                            * This is a string value, it defines which input characters are allowed.
                        * VkPlugin:
                            * This is a string value, it is the name of the input pop-up, which is opened if the on-screen keyboard icon () is tapped in the pop-up.
                        * MaxTextLength:
                            * This is an integer value, it defines the maximum number of characters for the input.
                * States:
                    * The states are buttons in the pop-up.
                        * State buttons have a small checkbox and can have a true or false state.
                            * The buttons will be displayed in alphabetical order.
                        * The buttons are defined using a table with the following structure...
                            * Name:
                                * This is a string value, the text will be shown on the button.
                            * State:
                                * This is the initial state of the button checkbox.
                * Selectors:
                    * Selector buttons are two different types of buttons. 
                        * Each type can have a selected value based on a list of available values.
                            * The two types are Swipe button (type 0) and Radio button (type 1).
                    * The buttons are defined in a table with the following structure...
                        * Name:
                            * This is a string value, the text will be shown on the button (swipe button) or as a label above the buttons (radio buttons).
                        * SelectedValue:
                            * This is an integer value, it defines the default selected value
                        * Type:
                            * This is an integer value, it defines the type of selector button.
                            * The options are...
                                * 0:
                                    * This defines the button as a swipe button.
                                * 1:
                                    * This defines the button as a radio button.
                        * Values:
                            * This is another table containing the different values available for the selector button. 
                            * Each value element in the table has the following structure...
                                * ["string"]=integer
                            * The string is the name displayed for the value. 
                            * The integer is the value returned and the one used for selectedValue.
            * The table can contain some or all of the elements described above.
                * The colors mentioned above can be a string or number value. 
                * It refers to a defined UI Color in the color theme.
                    * For example, "Global.Text" or 1.27.
            * A message box pop-up should have at least a title, message, and either a timeout or some basic command buttons.
    * **Return**
        * Table
            * The return from a message box pop-up is formatted in a table. 
            * The returned table adjusts to match the elements of the message box. 
                * For example, if there are selection buttons in the message box, then there is another table inside the result table containing the return from the selection buttons. 
            * The table can contain the following elements...
                * Success
                    * This is a boolean - it returns true if the message box was closed by tapping a command button or by a timeout.
                * Result
                    * This is an integer - it returns the value of the tapped command button or the timeout result ID.
                * Inputs (only if the message box has inputs fields)
                    * This is a table with a list of the input fields' name and string value in a key-value pair table.
                * States (only if the message box has state buttons):
                    * This is a table with a list of the state buttons' name and boolean value in a key-value pair table.
                * Selectors (only if the message box has selector buttons):
                    * This is a table with a list of the selector buttons' name and integer value in a key-value pair table.
            * An error is thrown if the message box does not have inputs, states, and selectors, but the script tries to use the table elements.
    * **Examples**
        * [Click Here]()

* **MouseObj()**
    * **About**
        * The MouseObj function returns the handle to the first found mouse object.
    * **Syntax**
        * MouseObj()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Handle
            * The function returns the handle to the mouse object.
    * **Examples**
        * [Click Here]()

### O
* **ObjectList()**
    * **About**
        * The ObjectList Lua function generates a list of objects based on a text. 
            * The text has the same syntax as the interaction with the command line (e.g. "Fixture 1 Thru 10").
    * **Syntax**
        * ObjectList(string)
    * **Arguments**
        * String:
            * Address / Handle of the object.
    * **Return**
        * Table
            * This function returns a list of objects based on the inputted handle.
    * **Examples**
        * [Click Here]()

### P
* **Patch()**
    * **About**
        * The Patch Lua function returns a handle to the patch object.
    * **Syntax**
        * Patch()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Handle
            * The returned handle to the patch.
    * **Examples**
        * [Click Here]()

* **PopupInput()**
    * **About**
        * The PopupInput Lua function creates a popup input field in the UI, where the user can select an item out of a list of different variables.
        * If you leave an an argument blank it will use the default value.
    * **Syntax**
        * PopupInput(title, caller, items, selectedValue, x, y, target, render_options, useTopLeft, properties)
    * **Arguments**
        * Title:
            * String
            * The title of the popup.
        * Caller:
            * Handle
            * The handle of the caller.
        * Items:
            * Table
            * A table of items to be displayed in the popup.
        * SelectedValue:
            * String
            * The initially selected value in the popup.
        * X:
            * Int
            * The X coordinate of the popup.
        * Y:
            * Int
            * The Y coordinate of the popup.
        * Target:
            * Handle
            * The handle of the target.
        * Render_options:
            * Options for rendering, including left & right icons and a number.
        * UseTopLeft:
            * Boolean
            * A boolean indicating whether to use the top-left position.
        * Properties (optional):
            * Additional properties that can be set.
    * **Return**
        * This function does not return anything.
    * **Examples**
        * [Click Here]()

* **Printf()**
    * **About**
        * The Printf Lua function prints a string in the Command Line History and System Monitor.
    * **Syntax**
        * Printf(string)
    * **Arguments**
        * String:
            * The string text to be printed to the Command Line History.
    * **Return**
        * This function does not return anything.
    * **Examples**
        * [Click Here]()

* **ProgrammerPart()**
    * **About**
        * ProgrammerPart is an object-free function that does not take an input argument.
    * **Syntax**
        * ProgrammerPart()
    * **Arguments**
        * This function does not return anything.
    * **Return**
        * Handle:
            * The returned handle to the current programmer part object.
    * **Examples**
        * [Click Here]()

* **Pult()**
    * **About**
        * The Pult Lua function returns a handle to the current "Pult" object at position Root/GraphicsRoot/PultCollect.
            * The "Pult" object contains display and device information.
    * **Syntax**
        * Pult()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Handle:
            * The returned handle to the pult object.
    * **Examples**
        * [Click Here]()

### R
* **ReleaseType()**
    * **About**
        * The ReleaseType Lua function returns a string with the type of release for the MA software.
            * All the software versions available from MA Lighting will return "Release".
    * **Syntax**
        * ReleaseType()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * String
            * The returned string is the release type of the grandMA3 software.
    * **Examples**
        * [Click Here]()

* **Root()**
    * **About**
        * The Root function is an object-free function that returns a handle to the object at root position.
    * **Syntax**
        * Root()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Handle
            * The function returns a handle to the Root object.
    * **Examples**
        * [Click Here]()

### S
* **SelectedSequence()**
    * **About**
        * The SelectedSequence Lua function returns the handle of the selected sequence.
    * **Syntax**
        * SelectedSequence()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Handle:
            * The returned handle for the selected sequence.
    * **Examples**
        * [Click Here]()

* **Selection()**
    * **About**
        * The Selection Lua function returns a handle to the object holding the current selection of fixtures.
    * **Syntax**
        * Selection()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Handle
            * The function returns a handle to the Selection object.
    * **Examples**
        * [Click Here]()

* **SelectionCount()**
    * **About**
        * The SelectionCount Lua function returns a number indicating the total amount of currently selected fixtures.
    * **Syntax**
        * SelectionCount()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Integer
            * The function returns an integer number depicting the total amount of fixtures in the current selection.
                * If there is no selection, then it returns 0.
    * **Examples**
        * [Click Here]()

* **SelectionFirst()**
    * **About**
        * The SelectionFirst Lua function returns a set of integers for the selection's first fixture. 
            * It is the patch index number and the XYZ grid values in the selection grid.
        * It is not required to use all four returned integers, but they are returned in order.
    * **Syntax**
        * SelectionFirst()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Integer
            * The returned number is the patch index of the first fixture in the current selection.
                * It is not the FID or CID.
                * The index is 0-based.
        * Integer
            * The returned number is the current position on the X-axis in the selection grid.
                * The selection grid is 0-based.
        * Integer
            * The returned number is the current position on the Y-axis in the selection grid.
                * The selection grid is 0-based.
        * Integer
            * The returned number is the current position on the Z-axis in the selection grid.
                * The selection grid is 0-based.
    * **Examples**
        * [Click Here]()

* **SelectionNext()**
    * **About**
        * The SelectionNext function returns a set of integers for the next fixture in a selection based on the index number input as an argument.
            * It is the index number in the patch and the XYZ grid values in the selection grid.
            * It is not required to use all four returned integers, but they are returned in order.
    * **Syntax**
        * SelectionNext()
    * **Arguments**
        * Integer:
            * The index number used to find the next fixture.
                * The index number needs to be part of the current selection.
    * **Return**
        * Integer
            * The returned number is the patch index of the first fixture in the current selection.
                * It is not the FID or CID.
                * The index is 0-based.
        * Integer
            * The returned number is the current position on the X-axis in the selection grid.
                * The selection grid is 0-based.
        * Integer
            * The returned number is the current position on the Y-axis in the selection grid.
                * The selection grid is 0-based.
        * Integer
            * The returned number is the current position on the Z-axis in the selection grid.
                * The selection grid is 0-based
    * **Examples**
        * [Click Here]()

* **SerialNumber()**
    * **About**
        * The SerialNumber Lua function returns the serial number of the grandMA3 hardware or grandMA3 onPC.
    * **Syntax**
        * SerialNumber()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * String
            * The returned string is the serial number of the grandMA3 hardware or grandMA3 onPC.
    * **Examples**
        * [Click Here]()

* **SetBlockInput()**
    * **About**
        * The SetBlockInput function is an internal function used during the system tests.
        * It stops input from USB-connected keyboards and mouse.
            * The built-in keyboard on some models is internally connected using a USB connection, which is also blocked by this function.
        * The block affects the station where the function is executed.
    * **Important**
        * Should the station be blocked and cannot be unblocked using a new Lua command, then pressing the keyboard keys A, S, D, and F simultaneously unblock the input again.
    * **Syntax**
        * SetBlockInput(boolean)
    * **Arguments**
        * Boolean:
            * The boolean indicates if the stations' input should be blocked or unblocked.
                * True (or 1): The station input is blocked.
                * False (or 0): The station input is unblocked.
    * **Return**
        * This function does not return anything.
    * **Examples**
        * [Click Here]()

* **SetLED()** - Input Table
    * **About**
        * The SetLED Lua function sends a table with a set of LED brightness values to an MA3Module.
        * After around two seconds, the system automatically sets the LED values to what it believes it should be.
    * **Important**
        * Setting a value above 0 for a table index number not connected to an LED can cause the module to crash and reboot.
    * **Syntax**
        * SetLED(handle,table)
    * **Arguments**
        * Handle:
            * This function does not accept any arguments.
        * Table:
            * The table should be an indexed table with a set of integer values. 
                * The value range is from 0 to 255. 
                * This range indicates a brightness level.
            * A special value of "-1" is used to release the LED to the system.
                * The table should contain 1024 indexes.
    * **Return**
        * This function does not return anything.
    * **Examples**
        * [Click Here]()

* **ShowData()**
    * **About**
        * ShowData is an object-free function that returns a handle to the object at position Root/ShowData.
    * **Syntax**
        * ShowData()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Handle
            * The function returns a handle to the ShowData object.
    * **Examples**
        * [Click Here]()

* **ShowSettings()**
    * **About**
        * ShowSettings is an object-free function that returns a handle to the object at Root/ShowData/ShowSettings.
    * **Syntax**
        * ShowSettings()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Handle
            * The function returns a handle to the ShowSettings object.
    * **Examples**
        * [Click Here]()

* **StrToHandle()**
    * **About**
        * The object-free StrToHandle Lua function converts a string with a hexadecimal number format into a handle.
            * The string needs to correlate with an actual handle.
    * **Syntax**
        * StrToHandle(string)
    * **Arguments**
        * String:
            * The string with a handle number in a hexadecimal format.
    * **Return**
        * Handle
            * The returned handle based on the string with a hexadecimal number.
    * **Examples**
        * [Click Here]()

### T
* **TextInput()**
    * **About**
        * The TextInput Lua function opens a text input pop-up and returns the typed input as a string.
            It is part of the user interface functions.
    * **Syntax**
        * TextInput([string[, string[, integer[, integer]]]])
    * **Arguments**
        * String (optional):
            * This string is the title for the pop-up.
                * The title bar has a default "Edit" text at the beginning of the title that cannot be removed.
        * String (optional):
            * This string is the text already in the input field - can be used to provide user guidance.
        * Integer (optional):
            * This integer defines a position on the x-axis where the pop-up should appear (on all screens).
                * "0" is on the left side of the screen.
                * Nil or undefined is centered.
        * Integer (optional):
            * This integer defines a position on the y-axis where the pop-up should appear (on all screens).
                * "0" is at the top of the screen.
                * Nil or undefined is centered.
    * **Return**
        * String
            The returned user input.
    * **Examples**
        * [Click Here]()

* **Time()**
    * **About**
        * The Time function returns the time (in seconds) the station has been on, as a number (float).
        * It is basically a stopwatch that starts when the grandMA3 application starts.
            * It is not the current time of day or the session online time.
    * **Syntax**
        * Time()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Number
            * The returned number (float) is the on-time for the station.
    * **Examples**
        * [Click Here]()

* **Timer()**
    * **About**
        * The Timer Lua function is used to call a Lua function with a time delay.
    * **Syntax**
        * Timer(name, delaytime, max_count [, cleanup[,object]])
    * **Arguments**
        * Name:
            * Function
            * The function to be executed when the timer triggers.
        * DelayTime:
            * Number
            * The delay time before the timer executes the specified function.
        * Max_Count:
            * Number
            * The maximum number of times the timer should repeat.
                * This can be set to 0 or omitted for an indefinite repetition
        * Cleanup (Optional):
            * Function
            * A cleanup function that is executed after the timer completes its cycle.
                * This argument is not required.
        * Object (Optional):
            * An object, used to pass additional information or state to the timer function.
    * **Return**
        * This function does not return anything.
    * **Examples**
        * [Click Here]()

* **TouchObj()**
    * **About**
        * The TouchObj function returns the handle to the first found touch object.
    * **Syntax**
        * TouchObj()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * Handle
            * The function returns the handle to the touch object.
    * **Examples**
        * [Click Here]()

### V
* **Version()**
    * **About**
        * The Version Lua function returns the software version.
    * **Syntax**
        * Version()
    * **Arguments**
        * This function does not accept any arguments.
    * **Return**
        * String
            * The returned string is the version of the grandMA3 software.
    * **Examples**
        * [Click Here]()