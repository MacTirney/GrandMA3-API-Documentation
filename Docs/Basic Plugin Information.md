# Basic grandMA3 Plugin Information
Plugins are pieces of Lua code that can add features or functionality to the grandMA3. 

The plugins are stored in the Plugins Pool.

The pool can be created like any other using the **'Add Window pop-up'**.

## Create a New Plugin
To create or add a plugin to the plugin pool, edit an empty pool object using any edit method.

The Edit UserPlugin pop-up opens, this editor can show the settings for the plugin if 'Setting' is on in the title bar.

These are the settings for the **'Edit UserPlugin pop-up'**...

* **Name:**
    * The name of the plugin.
    * Tap this to edit the name.
* **Scribble:**
    * The assigned scribble.
    * Tap this to select a scribble or open the editor to create a new one.
* **Appearance:**
    * The assigned appearance.
    * Tap this to select an appearance or open the editor to create a new one.
* **Note:**
    * A note can be added to the plugin.
* **Lock:**
    * Toggle this On to lock the plugin from changes.
* **Author:**
    * This can be used to add the name of the plugin author.
* **Version:**
    * This custom field can be used to indicate a version of the plugin.
* **Path:**
    * This is a path for the files inside the plugin folder.
* **UserRights:**
    * This can be used to set the needed user rights for running this plugin.

A plugin can contain several Lua components but should at least have 1.

## Create and Edit a Component
A Lua component contains the Lua code.

Each component is usually one file.

Add the component by pressing and holding the **'New ComponentLua'**.

A new component can also be added by selecting a line in the component list and tapping **'Insert new ComponentLua'**.

This creates a new line above the selected line.

Each component has some settings and some information.

It is the different columns in the list...

* **Name:**
    * This is the name of the component.
* **Scribble:**
    * This is the assigned scribble (this is not displayed anywhere).
* **Appearance:**
    * This is the assigned appearance (this is not displayed anywhere).
* **Note:**
    * A note can be added to the component.
* **FileName:**
    * This is the file name for the Lua component file.
    * A file name is needed if the plugin is exported.
        * Giving the component a name also creates a file name.
* **FilePath:**
    * This is a path for the Lua file inside the plugin folder.
* **FileSize:**
    * This displays the file size of the Lua component file in bytes.
* **Installed:**
    * If this is set to Yes, the Lua components will be updated from the file archive they were imported from.
        * This is useful when Lua files are edited and copied into the folder using an external editor.
    * To update any changes in these Lua components, the **'ReloadAllPlugins'** keyword must be executed.
* **IsResource:**
    * This indicates if the Lua file is an internal resource stored in an internal library.
    * These files are not stored in the showfile and are not streamed.
* **InStream:**
    * Yes means that the Lua code is saved in the show file and streamed in the session but stays as saved in the show file.
    * No means that the Lua code is locally saved on the hard drive.
        * The content of this Lua code can be updated using the **'ReloadAllPlugins'** keyword.
    * Setting Installed to Yes will set InStream to No.
* **UserRights:**
    * This can be used to set user rights on specific components.
* **SyntaxError:**
    * If syntax errors prevent the Lua component from being loaded into the Lua engine, the SyntaxError property turns to Yes, and the component line turns red.

Select the component that needs to be edited and tap **'Edit'**.

This opens the **'Lua Input'** pop-up.

Text can be copied into the pop-up from an external editor, or it can be written directly in the pop-up.

Editing existing code can also be done in the Lua Input pop-up.

Line numbers help when troubleshooting code or as general help.

The number of the active line is in white color, and the others are in gray color.

When **'Tab'** is used to indent text, a gray ">" appears where the tab was pressed.

When the desired code is input, it needs to be saved by tapping **'Save'** in the title bar.

The title bar has other buttons, such as...

* **Virtual Keyboard:**
    * This toggles the on-screen virtual keyboard.
* **Lua Code Templates:**
    * This toggles the Lua Code Templates that can be used as templates for writing new code.
* **API Description:**
    * This toggles the grandMA3-specific Lua API description on the right-hand side of the Lua Input.
* **Undo:**
    * This undoes the last edit.
* **Redo:**
    * This redoes undone actions.

After the code is saved, the Lua Input pop-up can be closed by tapping the **'X'** in the upper right corner.

## Run a Plugin
The plugins can be run by tapping them in the pool or using the Plugin keyword.

Running the plugin will execute the first component.

This component needs to call other components, or specific components can be called directly using this syntax:

    Plugin [Plugin_Number or "Plugin_Name"].[Component_Number or "Component_Name"]

Plugins can also be assigned to executors and view buttons.

## Lua Code Templates
The templates are example codes that can be copied into the editor.
    
* **Helpful Tip** - Using a template will delete any existing code.

Tap **'Lua Code Templates'** in the title bar to show the templates.

The different templates are shown next to each other, and there is a horizontal scroll bar making it possible to scroll through the different templates.

To import one of the templates, select it, and tap **'Use Template'**.

The templates can be closed without importing a template by tapping **'Lua Code Templates'** in the title bar or the **'Back'** in the lower left corner.

## API Description
The API description can be shown on the right side of the Lue Input pop-up.

It can be toggled On or Off by tapping **'API Description'** in the title bar.

It lists all the grandMA3-specific Lua functions and shows a short explanation of the required arguments and the return values.

There are three elements to the description.

At the top is a search input field where text can be input to search the list of functions.

Below is the actual list of functions in alphabetic order.

Selecting one shows the description of the selected function below the list.

Tapping the **'Plus'** in the description area adds the function to the Lua input code, with the arguments, at the cursor's current location.

## Export a Plugin
The plugin can be exported from the **'Edit UserPlugin'** by tapping **'Export'**.

This creates an XML file for the plugin.

If the Lua components have a file name ending in ".lua", an extra LUA file is exported for the component.

If there is no valid file name for the component, it is then stored in the XML file, coded in the "base64" format.

* **Helpful Tip** - The Lua files are only exported if the Lua component has "Yes" in the "InStream".

## Import a Plugin
All the required files are needed to import a plugin successfully.

* The XML file is always needed. 
* If the Lua components are stored as extra Lua files, they are also needed. 

These files must be in the ../gma3_library/datapools/plugins folder on the desired drive.

SOP on Importing a plugin...
* 1. Create a new plugin.
* 2. Tap Import.
* 3. Select the desired drive and XML file.
* 4. Tap Import.
* 5. The plugin is imported, and the editor can be closed.