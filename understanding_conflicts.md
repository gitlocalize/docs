# Understanding Conflicts

## What are Conflicts and why do they occur?

As part of the syncing process, GitLocalize will look for translatable files in your GitHub repository according to the path rules defined when adding the project. GitLocalize will also try to import any existing translations in your repository.

Files written in Markdown, Jupyter Notebook and some other formats are parsed into segments - translatable chunks of text that are easier to work with and track. If the repository contains translations, GitLocalize will also parse those files and will attempt to match every segment in the translation file with the corresponding segment in the source file.

If this matching fails, it means GitLocalize couldn't find the matching counterpart for some or all of the segments in the translation file. These segments will be highlighted in red, and the file will be marked as 'Conflicting'. This usually happens due to the following reasons:

1. The structure of the translation file does not match that of the source file (e.g. translation is outdated):
![Conflict](/assets/img/understanding_conflicts/conflicts.png)

2. The file structure is the same, however some strings or parts of texts are formatted in a different way (header levels, lists, bold/italic etc.)

3. In Jupyter Notebooks segment IDs or metadata do not match.

## Resolving Conflicts

Before you can translate a file that is in the conflict state, you should resolve conflicts by manually = linking highlighted (conflicting) segments on the right with corresponding segments on the left:

1. Click on a highlighted (unliked) segment
2. Press [Link to a Segment]
3. Select a segment in the left pane you want to link with
![Resolving Conflicts](/assets/img/understanding_conflicts/resolving_conflicts.gif)

This should only be done when you are sure that translations are correct and are not outdated. Segments that contain outdated translations can be deleted.

Once all conflicting segments are linked (or deleted), you should be able to translate the remaining parts of the file.



<!---
When GitLocalize sees a translation file on Github that matches a source file based on the file name/path, it will do it's best to match and connect each segment of the source file with corresponding segment in the translation file.
In the files where this is not possible (file structure is different), it will mark unmatched segments as 'Conflicting' - and highlight them with red.
You can manually 'link' the conflicting segments if you are sure that the translation on the right matches the source on the left - to do so, click on any red segment, click [Link to a Segment] and then link to a segment on the Left.
After that, once all actual segments are linked, you can delete all unlinked segments that remain (i.e. those that are outdated and therefore were not linked) - by pressing the [Remove Conflicts] button. Ironically, it's not available for you yet, but we can do that for you for now =) - just feel free to ping me until we add the button.
--->
