# GrandMA3 Helpful Keywords

## What are Keywords?
Keywords are x, they are used to create valid commands on the command line. Their are many different Keywords and types of Keywords in grandMA3.

* **Different Types of Keywords**
    * **Object Keywords:** Used to allocate objects in the show file.
    * **Help Keywords:** Used to create a relations between functions and objects.
    * **Playback Keywords:** Provide control over playback functionalities.
    * **Fader Keywords:** Related to anything that has to do with faders.

* **Different Syntax Types**
    * **[Square Brackets]:** Description of non-literal content.
    * **(Parentheses):** Description of optional content. 
    * **"Quotation marks"/'Quotation marks':** Quotation marks are used to enter a definite name or content
    * **Capitalization:** Capitalization is important, only when using Keyword commands.

* **Most Common Syntax Type**
    * **User name [Fixture]>**

## Keywords
* **Lua** 
    * **Description:** The Lua keyword is used to execute commands in the script language Lua. 
    * **Syntax:** Lua ["LuaCode"]
    * **Example:** 
        * **Input:** Lua "Printf('Hello World')"
        * **Output:** Hello World

* **LuaFile**
    * **Description:** The LuaFile keyword is used to execute a Lua file directly without the need to import it into the grandMA3 show file.
    * **Syntax:** LuaFile ["AbsolutePathToLuaFile/FileName.lua"]
    * **Example:**
        * **Background:** This will execute the Lua file "execute_example.lua"
        * **Input:** LuaFile "C:\ProgramData\MALightingTechnology\gma3_1.6.3\shared\resource\lib_plugins\examples\execute_example\execute_example.lua"
    * **Shorthand:** LuaF

* **HelpLua**
    * **Description:** HelpLua is a function keyword which is used to export a list of all grandMA Lua functions. The Lua functions are exported into the file "grandMA3_lua_functions.txt" in the grandMA3 library folder. You can access them by searching for the .txt file in your File Explorer. This list separates the functions into two categories: Object-Free API and Object API. Individual functions are described in sub-topics in these two topics.
    * **Syntax:** HelpLua
    * **Example:**
        * **Background:** This will list all specific grandMA3 Lua functions.
        * **Input:** HelpLua
        * **Output:** The Lua functions are exported into the file "grandMA3_lua_functions.txt" in the grandMA3 library folder.
    * **Shorthand:** HelpL

* **SwitchTograndMA2Software**
    * **Description:** The SwitchTograndMA2Software keyword is a command keyword that is used to remotely switch to Mode2 on a grandMA3 station. 
    * **Syntax:** SwitchTograndMA2Software IP [IP_Address]
    * **Example:**
        * **Background:** This will remotely switch the grandMA3 console with the IP 192.168.0.4 to Mode2
        * **Input:** SwitchTograndMA2Software IP 192.168.0.4
    * **Shorthand:** SwgMA2
    
* **SwitchTograndMA3Software**
    * **Description:** The SwitchTograndMA3Software keyword is a command keyword that is used to remotely switch to grandMA3 software on a grandMA3 console that is currently running in Mode2.
    * **Syntax:** SwitchTograndMA3Software IP [IP_Address]
    * **Example:**
        * **Background:** This will remotely switch a grandMA3 console with the IP 192.168.0.4 from Mode2 to grandMA3 software
        * **Input:** SwitchTograndMA3Software IP 192.168.0.4
    * **Shorthand:** SwgMA3

## Additional Keywords
To access more Keywords for the GrandMA3 software. Please refer to the following documents.

* [General Keywords for the Command Line in grandMA3](https://help2.malighting.com/Page/grandMA3/csk_general_keywords/en/1.9)
* [Option Keywords for the Command Line in grandMA3](https://help2.malighting.com/Page/grandMA3/option_keywords/en/1.9)