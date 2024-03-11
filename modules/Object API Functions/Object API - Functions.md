# Object API - Lua Functions

## About
The Object API defined functions are Lua functions that are related to an object. Most of the object functions take a handle as an argument. In most cases, the handle can be omitted if the function is used with the colon notation.
 
## Basic Syntax
* **Syntax with the handle**
    * object.function(object)

* **Syntax with the colon operator**
    * object:function()

## Handles
Only a couple of the Object API functions require a handle as an argument or return a handle.

The handle is a custom data type called "light_userdata".

The handle is a unique identifier that refers to a grandMA3 object, for instance, a specific sequence, cue,  preset, or fixture.

## Object API Functions - General
### A
* **Addr()**
    * **About**
        * The Addr Lua object function converts a handle to an address string (path) that can be used in commands.
    * **Syntax**
        * Addr(handle[, handle[, boolean]])
    * **Arguments**
        * Handle:
            * The function takes a handle of the type "light_userdata" as an argument. 
                * It can be omitted when using the colon notation on an object.
            * This is the handle to the object where the address is requested.
        * Handle (Optional):
            * The returned address is from the root as a default.
            * This optional handle can specify a different base location. However, it still needs to be a base location in the address path from the root to the object.
        * Boolean (Optional):
            * This can be useful if there is a difference between the ToAddr() and Addr() functions.
            * Setting this to "true" uses the index number from the ToAddr() function instead of the Addr() index number.
    * **Return**
        * String:
            * Text string with the address in a parent-child number format, separated by dots.
    * **Examples**
        * [Click Here](https://github.com/MacTirney/GrandMA3-API-Documentation/blob/main/modules/Object%20API%20Functions/General%20Functions/A/Addr()/addrFuncExample.lua)

* **AddrNative()**
    * **About**
        * The AddrNative Lua object function converts a handle into a address string(named address path) that can be used in commands.
    * **Syntax**
        * AddrNative(handle[, handle[, boolean]])
    * **Arguments**
        * Handle:
            * The function takes a handle as an argument. 
                * It can be omitted when using the colon notation on an object. See the example below.
            * This is the handle to the object where the address is requested.
        * Handle (Optional):
            * The returned address is from the root as a default. 
            * This optional handle can specify a different base location. However, it still needs to be a base location in the address path from the root to the object.
        * Boolean (Optional):
            * Set this to "true" to get the returned names in quotation marks.
    * **Return**
        * String:
            * Text string with the address in a parent-child name format, separated by dots.
    * **Examples**
        * [Click Here](https://github.com/MacTirney/GrandMA3-API-Documentation/blob/main/modules/Object%20API%20Functions/General%20Functions/A/AddrNative()/addrNativeFuncExample.lua)

### C
* **Children()**
    * **About**
        * The Children Lua function creates a table of handles of the children of an object.
    * **Syntax**
        * Children(handle)
    * **Arguments**
        * Handle:
            * The function takes a handle of the type "light_userdata" as an argument. 
                * It can be omitted when using the colon notation on an object.
    * **Return**
        * Table:
            * The function returns a table with the child objects. 
            * If there are no children, then it returns an empty table.
    * **Examples**
        * [Click Here](https://github.com/MacTirney/GrandMA3-API-Documentation/blob/main/modules/Object%20API%20Functions/General%20Functions/C/Children()/childrenFuncExample.lua)

### D
* **Dump()**
    * **About**
        * The function returns a string with information about the object.
            * For instance, the name, class, path of the object, its properties, and children.
    * **Syntax**
        * Dump(handle)
    * **Arguments**
        * Handle:
            * The function takes a handle of the type "light_userdata" as an argument.
            * Dump is often used without an argument but is called with the colon notation for object-oriented calls.
    * **Return**
        * The function does not return anything.
        * It outputs information about the object in the Command Line History window.
    * **Examples**
        * [Click Here](https://github.com/MacTirney/GrandMA3-API-Documentation/blob/main/modules/Object%20API%20Functions/General%20Functions/D/Dump()/dumpFuncExample.lua)

### E
* **Export()**
    * **About**
        * The object Export Lua function exports an object into an XML file.
    * **Syntax**
        * Export(handle, file_path, file_name)
    * **Arguments**
        * Handle:
            * The function takes a handle of the type "light_userdata" as an argument. 
                * It can be omitted when using the colon notation on an object.
        * File_path:
            * This is a string with the file path.
        * File_name:
            * This is a string containing the file name of the exported file.
    * **Return**
        * The function does not return anything. 
        * It exports the object.
    * **Examples**
        * [Click Here](https://github.com/MacTirney/GrandMA3-API-Documentation/blob/main/modules/Object%20API%20Functions/General%20Functions/E/Export()/exportFuncExample.lua)

### H
* **HasActivePlayback()**
    * **About**
        * The HasActivePlayback Lua function returns a boolean indicating if an object has a currently active playback.
            * For instance, if a sequence has an active cue.
    * **Syntax**
        * HasActivePlayback(handle)
    * **Arguments**
        * Handle:
            * The function takes a handle of the type "light_userdata" as an argument. 
                * It can be omitted when using the colon notation on an object.
    * **Return**
        * Boolean:
            * The function returns a boolean indicating the playback status.
                * True: There is active playback.
                * False: There is no active playback.
    * **Examples**
        * [Click Here](https://github.com/MacTirney/GrandMA3-API-Documentation/blob/main/modules/Object%20API%20Functions/General%20Functions/H/HasActivePlayback()/hasActivePlaybookFuncExample.lua)

### I
* **Import()**
    * **About**
        * The object version of the Import Lua function is used to import an object written in XML format.
    * **Read Before Using**
        * Restriction
            * The files need to already exist to be imported.
        * Important
            * The Lua import will merge the content of the XML file into the object without any confirmation pop-up.
    * **Syntax**
        * Import(handle, file_path, file_name)
    * **Arguments**
        * Handle:
            * The function takes a handle of the type "light_userdata" as an argument. 
                * It can be omitted when using the colon notation on an object.
        * File_path:
            * This is a string with the path to the file location.
        * File_name:
            * This is a string containing the file name of the desired file.
    * **Return**
        * The function does not return anything. 
        * It imports the object.
    * **Examples**
        * [Click Here](https://github.com/MacTirney/GrandMA3-API-Documentation/blob/main/modules/Object%20API%20Functions/General%20Functions/I/Import()/importFuncExample.lua)

### T
* **ToAddr()**
    * **About**
        * The ToAddr() Lua object function converts a handle to an address string that can be used in commands.
    * **Syntax**
        * ToAddr(handle)
    * **Arguments**
        * Handle:
            * The function takes a handle of the type "light_userdata" as an argument. 
                * It can be omitted when using the colon notation on an object. See the examples below.
    * **Return**
        * String:
            * String with the address value.
    * **Examples**
        * [Click Here](https://github.com/MacTirney/GrandMA3-API-Documentation/blob/main/modules/Object%20API%20Functions/General%20Functions/T/ToAddr()/toAddrFuncExample.lua)