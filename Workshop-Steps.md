# Workshop Steps

The goal of this workshop is to demonstrate how to get started with some of the most important features in a GitHub repository, with a focus on the GitHub Flow. All links below are to additional GitHub documentation.

## Get in Groups

Look to your left, then to your right! Get into groups of two, three or four and let's collaborate. Identify one person as the **Group Lead**. They will lead the activity for the group and be responsible for granting access to the group.

## Let's Get Started!

1. Be sure to follow the steps in the prerequisites section of the **README.md** file to get your account setup and logged in at https://github.com. Then, ensure your group knows your username handle.
1. **Group Lead**, go to the main workshop repository in your browser at https://github.com/universeworkshops/github-for-managers. At the top-right, click the **Fork** button, then select your username to [Fork the repository](https://help.github.com/articles/fork-a-repo/). This will effectively copy the repository to the Group Lead's account, and will be the workspace for your group.
    - Group Lead, give the new URL to your group and have them go to this page in their browser. It will look similar to https://github.com/GROUPLEADACCOUNT/github-for-managers.
1. **Set administrative settings.** Various admin settings in your repository allow you to take control, including granting access to your group. Let's try out a few of them now. Go to the **Settings** tab of your repository.
    - [Options](https://help.github.com/articles/managing-repository-settings/). Provides various functions for your repo, like renaming and deleting.
        - Turn on all four of the **Features** in your Options page:
            - :white_check_mark: _Wikis_
            - :white_check_mark: _Restrict editing to collaborators only_
            - :white_check_mark: _Issues_
            - :white_check_mark: _Projects_
    - [Collaborators](https://help.github.com/articles/inviting-collaborators-to-a-personal-repository/). Ensure everyone in your group has access to your repository.
        - Type the name of each group member in the text box and click **Add collaborator**.
        - An invite will be sent via email, or use the invite link to accept the invitation.
    - [Branches](https://help.github.com/articles/setting-the-default-branch/). Group Lead, let's fine tune how changes are made on our branches.
        - [Protected Branches](https://help.github.com/articles/configuring-protected-branches/). Arguably one of the most important settings in your repository. Helps enforce [Status Checks](https://help.github.com/articles/enabling-required-status-checks/) and [Code Reviews](https://github.com/features/code-review) for proposed changes.
            1. In the **Settings** menu, select **Branches.**
            1. The **Default Branch** should remain set to `master`. Under **Protected branches**, click **Choose a branch** and select `master`.
            1. In the screen titled **Branch protection for master**, select the **Protect this branch** option. Also, select the following options:
                - :white_check_mark: _Require pull request reviews before merging_
                - :white_check_mark: _Dismiss stale pull request approvals when new commits are pushed_
                - :white_check_mark: _Require review from Code Owners_
                - :white_check_mark: _Require status checks to pass before merging_
                - :white_check_mark: _Include administrators_
            1. Click **Save changes.**
    - [Webhooks](https://help.github.com/articles/about-webhooks/). Rather than poll your repository for changes or events, webhooks are sent out each time an event occurs. We will try one out later in this session.
    - [Integrations & services](https://github.com/marketplace). GitHub provides best-of-breed integrations to many external services. This is where you begin to tie your entire development pipeline to your repository. We will talk about this later.
    - [Deploy keys](https://developer.github.com/v3/guides/managing-deploy-keys/). An advanced topic. Deploy keys are an SSH key that is stored on your server and grants access to a single GitHub repository. They are often used to clone repositories during deploys or continuous integration runs.
1. **Create an Issue.** Let's create a tracking Issue to record some work that needs to be done. Select a group member to do the following:
    1. In the repository's **Issues** tab, click **New issue**.
    1. Enter the following for the **Title**:
        ```
        Update CODEOWNERS file
        ```
    1. In the **Body** of the Issue, let's add a _Description_ similar to the following:
        ```
        We need to update the CODEOWNERS file with our new group members.
        ```
1. **Update the CODEOWNERS file.** A [CODEOWNERS](https://github.com/blog/2392-introducing-code-owners) file maps file or folder paths to teams or people that should review proposed changes to that location. This is particularly helpful if you want to ensure specific files and folders have the proper reviewers. Select a group member to do the following:
    1. In the repository's **Code** tab, navigate to the `.github` folder.
    1. Open the `CODEOWNERS` file. Click the **pencil** icon to edit the file.
    1. Add the following line to the bottom of the file, and replace the sample member names with your group's GiHub username handles:
        ```
        * @member1 @member2 @member3
        ```
    1. Scroll down to the **Commit changes** section. Type the following in the commit message box:
        ```
        Adding new group members to the list
        ```
    1. In the **Create a new branch...** option, enter the following for the new branch name:
        ```
        codeowners-update
        ```
    1. Click **Commit changes**. A [Pull Request](https://help.github.com/articles/about-pull-requests/) will automatically be opened for this proposed change.
    1. At the top of the Pull Request body, type the following characters:
        ```
        Fixes #
        ```
      1. As soon as you type the `#` character in the Pull Request body, an auto-complete dialog will display currently open **Issues**. Select the Issue you created earlier, this will link them together.
      1. Finish completing the Pull Request body with any sample text.
      1. On the right-side, click **Reviewers** and select your team mates.
      1. Click **Create Pull Request.**
