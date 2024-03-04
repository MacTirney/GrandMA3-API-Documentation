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