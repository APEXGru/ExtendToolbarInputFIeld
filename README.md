# Oracle APEX Dynamic Action Plugin - Extend Toolbar with Input Field
Dynamic Action Plugin to add an Input Field to the Interactive Grid Toolbar that synchronizes its value with a Page Item.
Based upon the "Extend IG Toolbar" Plugin by Marko Goricki.

## Changelog

#### 1.0.0 - Initial Release


## Install

- Import Plugin File **dynamic_action_plugin_nl_apexconsulting_ig_extend_toolbar.sql** from the main directory into your Application


## Plugin Settings

Available Plugin Settings :
- **Toolbar Group** - The location of the Input Field on the Toolbar (required)
- **Group Position** - The location of the Input Field within the Toolbar Group (required)
- **Item type** - The Item Type of the Input Field - Text, Date or only a Static text (required)
- **Label** - The label of the Input Field (optional)
- **Size** - The size of the Input Field (required)
- **Max characters** - The maximum number of characters of the Input Field (required)
- **Set value of Page Item** - The Page Item that is mapped to the Input Field (optional)
- **Invoke Search on change** - Invoke a "search" action on change of the Input Field (required)


## How to use
- Create a Dynamic Action on the Page Load event
- Specify the properties as described above
- Use the Page Items in your query and set them as "Page Items to Submit"

## Demo Application
[https://apex.oracle.com/pls/apex/f?p=131155:3](https://apex.oracle.com/pls/apex/f?p=131155:3)


## Related info
Based upon the "Extend IG Toolbar" Plugin by Marko Goricki, see [https://github.com/mgoricki/apex-plugin-extend-ig-toolbar](https://github.com/mgoricki/apex-plugin-extend-ig-toolbar) for details.


## Preview
## ![](https://github.com/APEXGru/ExtendToolbarInputFIeld/raw/master/preview.png)
