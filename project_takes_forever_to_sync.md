# Why does my project take forever to sync?

Sometimes you'll see that there is a spinner next to the name of your project:

![Syncing spinner](assets/img/project_takes_forever_to_sync/syncing_repo.png)

This means that your project is busy syncing. You may find that this is taking too long, especially in the following cases:
- this is an initial sync (i.e. you've just added the project);
- there are many files in the GitHub repository;
- the project consists of many languages.

GitLocalize uses GitHub Apps and GitHub API to connect and sync with your GitHub repository. GitHub uses API rate limiting, which means that we cannot send more than 5000 API calls per hour per project. So sometimes, we will not be able to sync in one go, and GitLocalize will have to wait another hour to complete the sync.

Please allow a few hours for an initial sync to complete. If you still believe something is wrong (the sync has been going for several hours or days), please contact us via the chat widget on your right or via the [contact form](https://gitlocalize.com/inquiries/new).
