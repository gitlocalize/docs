# Understanding Conflicts

When syncing content from the GitHub repository, GitLocalize will look for translatable files according to the path rules configured for your project. If you already have existing translations for some of your content in the repository, GitLocalize will also try to import those.

GitLocalize parses translatable files that are in Markdown, Jupyter and some other formats into 'segments' - translatable chunks of texts that are easier to track and work with. In case there are existing translations in the repository, GitLocalize will also parse those files and will do its best to match each segment in the translation file with the corresponding segment in the source file.

Sometimes this matching may fail, which means GitLocalize was unable to find the matching counterpart for some of all of the segments in the translation file. Such segments will be highlighted in red, and the file will be marked as 'Conflicting'. This usually happens due to the following reasons:

1.  The structure of the translation file does not match that of the source file (e.g. translation is outdated).
![Conflict](/assets/img/understanding_conflicts/conflicts.png)


<!---
When GitLocalize sees a translation file on Github that matches a source file based on the file name/path, it will do it's best to match and connect each segment of the source file with corresponding segment in the translation file.
In the files where this is not possible (file structure is different), it will mark unmatched segments as 'Conflicting' - and highlight them with red.
You can manually 'link' the conflicting segments if you are sure that the translation on the right matches the source on the left - to do so, click on any red segment, click [Link to a Segment] and then link to a segment on the Left.
After that, once all actual segments are linked, you can delete all unlinked segments that remain (i.e. those that are outdated and therefore were not linked) - by pressing the [Remove Conflicts] button. Ironically, it's not available for you yet, but we can do that for you for now =) - just feel free to ping me until we add the button.
--->
