# I want to Use GitLocalize for a Private Repository. Will My Project Be Private?

If you are using GitLocalize for a private repository, your GitLocalize project will also be private.
Users that are not added to the team will see a 404 error when trying to access your private project:
![404](/assets/img/private_project_visibility/404.png)

For this reason, you will need to make sure that each translator has access to your project by adding them to the team (see [Understanding Roles](/understanding_roles.html) for more information about roles and team members).

In contrast, if you are using GitLocalize for a public repository, your translation project will also be public. Any user can contribute to a public project, even if they are not part of the team.

However, users without an Admin or Moderator role will only be able to create review requests (send their translations for review to Language Moderators) without creating pull requests. Pull requests are created by Language Moderators or Admins once translations are reviewed.
