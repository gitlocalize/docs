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
Where `%lang` is the placeholder for the target language code, which can be used .

With this configuration GitLocalize will scan all folders in the repository starting from the root folder
(including subfolders) and will create folders for each target language. Korean translations will be stored in `[repo_name]/ko/...` german translations will be stored in `[repo_name]/ko/...` etc.

## Custom Project Paths

You can specify one or multiple custom paths to make GitLocalize sync files from specific location(s). Below are some examples.

## Directory-Based Paths

Source Path:
```
[repo_name]/src/site/content/en
```

Target Path:

```
[repo_name]/src/site/content/translations-%lang%
```

With this configuration GitLocalize will look for translatable files in `/src/site/content/en`, store Korean translations in `/src/site/content/translations-ko`, German translations in `/src/site/content/translations-de` etc.

# Configuring Custom Language Codes

You can specify custom language codes for each project language when creating a project or later in the Manage Languages section. Language codes will affect the %lang% placeholder in the output paths (location where translation files will be created).
![Project Paths](/assets/img/project_paths/project_paths.png)
