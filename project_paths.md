# How do I Configure Project Paths Correctly?

Project Paths are used to show GitLocalize where to look for translatable files and where to put translations.


## Default Configuation for the Project Paths

When creating a project, default paths look like this:

*Source Path:*

```
[repo_name]/
```

*Target Path:*

```
[repo_name]/%lang%
```
...where `%lang` is the placeholder for the target language code.

This configuration will sync translatable files from the root folder (including subfolders). Output translation files will be created in the respective language folders for each target language. For example, Korean translations will be stored under `/ko/...`, German translations will be stored under `/de/...` etc.

GitLocalize will additionally look for existing translations in the same language locations (will scan `/ko/...` for Korean translations, `/de/...` for German etc.)

## Custom Project Paths

If you want GitLocalize to look for translatable files in specific locations, you can specify one or more custom paths.

### Directory-Based Paths

Example:

*Source Path:*
```
[repo_name]/src/site/content/en
```

*Target Path:*

```
[repo_name]/src/site/content/translations-%lang%
```

This configuration will sync translatable files from `/src/site/content/en`, existing Korean translations from `/src/site/content/translations-ko`, German translations from `/src/site/content/translations-de` etc. Output translations will be stored in the same language locations (`/src/site/content/translations-ko`,  `/src/site/content/translations-de` etc.)

### File-Based Paths

Example:

*Source Path:*

```
pages/translations/en/LC_MESSAGES/messages.po
```

*Target Path:*

```
pages/translations/%lang%/LC_MESSAGES/messages.po
```

### Mixed-Type Paths

Example:

*Source Path:*
```
pages/content/amp-dev/documentation/guides-and-tutorials
```

*Target Path:*

```
%file_name%@%lang%.%file_ext%
```

This configuration will sync source files from the `guides-and-tutorials` directory; existing translations will be synced from, and output translation files will be created in the same directory with a language code in the filename (e.g. German translation for the file `a4a_spec.md` will be created in the same `guides-and-tutorials` directory under the `a4a_spec@de.md` filename).

## Configuring Custom Language Codes

Custom language codes can be specified for each project language when creating a project or later in the Manage Languages section (available to Admins and Owner). Language codes will replace the `%lang%` placeholder in the output paths (locations where translation files will be created).
![Project Paths](/assets/img/project_paths/project_paths.gif)
