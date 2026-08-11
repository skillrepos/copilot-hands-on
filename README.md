# GitHub Copilot Hands-on - lab setup

These instructions will guide you through configuring a GitHub Codespaces environment that you can use to run the course labs. 
If you prefer and if you know one of the other IDEs supported by Copilot, you can use that. But the instructions will reference the codespace version.

**NOTES:**
1. We will be working in the public GitHub.com, not a private instance.
2. Chrome may work better than Firefox for some tasks.
3. The default environment will be a GitHub Codespace (with Copilot already installed). If you prefer to use your own IDE, you are responsible for installing Copilot in it. Some things in the lab may be different if you use your own environment.
4. To copy and paste in the codespace, you may need to use keyboard commands - CTRL-C and CTRL-V.
5. VPNs may interfere with the ability to run the codespace. It is recommended to not use a VPN if you run into problems.
6. Copilot Free is included with any GitHub account (no separate Copilot signup needed), but it is limited: 2,000 code completions/month, a limited chat & agent allowance, and **auto model selection only** (no model picker). Labs 6 (model selection) and parts of Lab 7 work best on a paid plan. 
7. When the codespace starts, Copilot may take up to a minute to finish signing in. Until it does, the Chat mode selector may show only **Agent** (no *Ask* or *Plan*) — see step 4 below.
</br></br></br>

These steps **must** be completed prior to starting the actual labs.

## 1. You can use the free version of Copilot for *most* items in the labs. Notes in the labs will alert you where the free version may not work or may not perform well.

When signed into GitHub, you can verify your Copilot settings by clicking on your profile picture/icon in the upper right and selecting [Copilot settings](https://github.com/settings/copilot/features) 

![Copilot settings](./images/cpho102.png?raw=true "Copilot settings")

![Copilot settings](./images/cpho103.png?raw=true "Copilot settings")


<br/><br/>

## 2. Set codespace timeout (optional but recommended)

While logged in to GitHub, go to [https://github.com/settings/codespaces](https://github.com/settings/codespaces).

Scroll down and find the section on the page labeled *Default idle timeout*. 

Increase the default timeout value to 60 minutes and then select the *Save* button.

![Increasing default timeout](./images/cdd200.png?raw=true "Increasing default timeout")

(**NOTE**: If your codespace does time out at some point in the course, there should be a button to restart it.)

## 3. Create your own codespace to run the labs by clicking on the button below.
</br></br>
Click here -----> [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/skillrepos/copilot-hands-on?quickstart=1)
</br></br>

Then click on the option to create a new codespace.

![Creating new codespace from button](./images/cpho2.png?raw=true "Creating new codespace from button")

**This will run for several minutes while it gets everything ready.**

If asked about trusting the authors of the files in this folder, just select `Trust folder and continue`.


![Trust folder](./images/ollama48.png?raw=true "Trust folder")

</br></br>
  
## 4. In the Codespace, sign into GitHub (if needed). 

After the codespace has started, look in the lower right of the codespace to see if there is a `Sign in` indicator for Copilot (see figure). If so, click on that and authenticate as needed.

![Sign in to Copilot](./images/cpho81.png?raw=true "Sign in to Copilot")

Then select the Copilot icon again and make sure the options under `Inline suggestions` are enabled. (You may need to click on the `>` to the right of `Inline Suggestions` to see the checkboxes.

![Options enabled](./images/cpho82.png?raw=true "Options enabled")

<br><br>

## 5. Open the labs

Open the labs document - either in the codespace or in a browser tab.

![Labs doc preview in codespace](./images/cpho4.png?raw=true "Labs doc preview in codespace")

Any command in the gray boxes is either code intended to be run in the console or code to be updated in a file.

Labs doc: [Copilot Hands-on Labs](labs.md)


