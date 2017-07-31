# Getting Started

Integrating with your repository to GitLocalize should take only a few minutes!

## Signing up to GitLocalize

First of all, go to [gitlocalize.com](https://gitlocalize.com) and sign up with your GitHub account.

![GitLocalize](assets/img/getting_started/gitlocalize.png)

Click "Sign up" button on the right top or "Sign up with GitHub" on the left. And authorize your account with our OAuth app.


## Add Repository

Once you sign up to GitLocalize, click `Add repository` button from your page.

![Profile](assets/img/getting_started/profile.png)

Fill in the form at `Add Repository` page to configure your repository environment.

![Add Repository](assets/img/getting_started/add_repository.png)

1. Select your repository that you want to localize from the list.
2. Branch (Optional, default: master).
3. Path of a directory which has files you want to localize.
4. Path of a directory which GitLocalize generates translation files to.
5. Language of the source file(s).
6. Languages you want to localize to.

## Translate

After an integration, it starts to fetch target file(s) to the platform so it would take some time that depends on the size of your repository.

Once finish fetching all the target file(s), you can start translating your files with the split view editor.

It show which translation links to which original part and grays out a part which has not been translated.

![Diff management](/assets/img/about/diff_management.png)

## Review

After finish translating the file, `Create Review Request` button is shown up next to the status icon.

Create a review request to notify team that you have finished translating it and start a discussion there.

## Pull Request

Once your team is satisfied with your change, the language moderator can send a pull request back to the repository.
