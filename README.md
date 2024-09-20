# GitHub Copilot Hands-on-lab setup

These instructions will guide you through configuring a GitHub Codespaces environment that you can use to run the course labs. 
If you prefer and if you know one of the other IDEs supported by Copilot, you can use that. But the instructions will reference the codespace version.

NOTE: These lab instructions are a fork of the [GitHub Copilot Hands-on](https://github.com/skillrepos/copilot-hands-on) repository. Please go to the original repository, https://github.com/skillrepos/copilot-hands-on and **give it a star**  to show your support for the author of the original content on which this lab is based.

These steps **must** be completed prior to starting the actual labs.

## 1. Ensure that you are signed up for Copilot access. 

If you do not already have access to **GitHub Copilot**, go to **https://gh.io/cfp-sea24aic** to redeem a 7-day free trial of GitHub Copilot. You can also use this QR code. 
<p align="center">
<img width="250" height="250" src="./images/GitHub Copilot Coupon 2024-08-14.png"></p>

Fill in any information requested and press the `Apply coupon` button.

![Signing up for Copilot](./images/pic007.png?raw=true "Signing up for Copilot")

If everything is successful, you will see a banner that says `You have successfully redeemed your coupon`.

![Signing up for Copilot](./images/pic008.png?raw=true "Signing up for Copilot")

## 2. Create your own fork of the repository for these labs

- Ensure that you have created a repository by forking the [DaveOps30/copilot-hands-on](https://github.com/DaveOps30/copilot-hands-on) project as a template into your own GitHub area.
- You do this by navigating to the repo, clicking the `Fork` button in the upper right portion of the main project page and following the steps to create a copy in **your-github-userid/copilot-hands-on**.

![Forking repository](./images/cpho1.png?raw=true "Forking the repository")

- **Once the fork has been created, open your forked instance of the repo and continue the next steps from there.** 

## 3. Start your codespace

In your forked repository, start a new codespace.

- Click the `Code` button on your repository's landing page.
- Click the `Codespaces` tab.
- Click `Create codespace on main` to create the codespace.

**This will run for a minute or two while it gets everything ready.**
  
- After the codespace has been initialized there will be a terminal present.

![Starting codespace](./images/cpho3.png?raw=true "Starting your codespace")

This will take a while to run.

## 3. Open the labs

After the codespace has started, open the labs document by going to the file tree on the left, find the file named **labs.md**, right-click on it, and open it with the **Preview** option.)

![Labs doc preview in codespace](./images/cpho4.png?raw=true "Labs doc preview in codespace")

This will open it up in a tab above your terminal. Then you can follow along with the steps in the labs. 
Any command in the gray boxes is either code intended to be run in the console or code to be updated in a file.

Labs doc: [Copilot Hands-on Labs](labs.md)


