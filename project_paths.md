# How do I Configure Project Paths Correctly?

To make sure GitLocalize knows where to look for translatable files and where to put translations, you should configure Project Paths correctly.


## Default Paths Configuation

The default paths offered when creating a project look as follows:

Source Path:

```
[repo_name]/
```

Target Path:

```
[repo_name]/%lang%
```
Where `%lang` is the placeholder for the target language code.

With this configuration GitLocalize will scan all folders in the repository starting from the root folder
(including subfolders) to look for translatable files. Translation files will be created in the respective folders for each target language. For example, Korean translations will be stored in `/ko/...` German translations will be stored in `/de/...` etc.
Additionally, GitLocalize will look for existing translations in the same folders (scanning `/ko/...` for Korean translations, `/de/...` for German etc.)

## Custom Project Paths

You can specify one or multiple custom paths to make GitLocalize look for files in specific locations. Below are some examples.

## Directory-Based Paths
_Examples:_

Source Path:
```
[repo_name]/src/site/content/en
```

Target Path:

```
[repo_name]/src/site/content/translations-%lang%
```

With this configuration GitLocalize will look for translatable files in `/src/site/content/en`, Korean translations in `/src/site/content/translations-ko`, German translations in `/src/site/content/translations-de` etc. Output translations will be created in the same locations (`/src/site/content/translations-ko`,  `/src/site/content/translations-de` etc.)

# Configuring Custom Language Codes

You can specify custom language codes for each project language when creating a project or later in the Manage Languages section. Language codes will affect the %lang% placeholder in the output paths (location where translation files will be created).
![Project Paths](/assets/img/project_paths/project_paths.gif)
