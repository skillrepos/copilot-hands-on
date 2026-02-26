# Instructions for setting up a local environment to run labs in place of GitHub Codespace

### NOTE: GitHub Codespaces - as detailed in the README.md file - are the preferred and recommended environment to run the labs in. Use this alternative only if you can't use the Codespace option for some reason. ##

<br><br>

These instructions will guide you through configuring a local environment that you can use to do the labs. 

<br><br>

**1. Install Git on your system if you don't already have it.**

The main Git site is [here](https://git-scm.com) with installers. 

<br>

![Getting Git](./images/local-4.png?raw=true "Getting Git")

<br><br>

**2. Install a version of Docker on your system if you don't already have one.**

You can go to [Docker.com](https://docker.com) to find out how to get setup. For Windows and Mac users, [Docker Desktop](https://www.docker.com/products/docker-desktop/) is a good option.

<br>

![Getting Docker Desktop](./images/local-3.png?raw=true "Getting Docker Desktop")

<br>

[This link](https://code.visualstudio.com/remote/advancedcontainers/docker-options) discusses alternative options for Docker in VS Code (including use of Podman).

<br><br>

**3. Install VS Code on your local machine.**

To do this, go to [this link](https://code.visualstudio.com/download) and follow the instructions for your operating system.

<br>

![Getting VS Code](./images/local-1.png?raw=true "Getting VS Code")

<br><br>

**4. Once you have Docker running and VS Code installed, find the Dev Containers extension and install it.**

<br>

In VS Code, you can use the shortcut command to open the *Extensions* view (usually SHIFT+CMD+X or SHIFT+CTRL+X) or find the *Activity Bar* and click on the *Extensions* icon.

Then, in the search box at the top of the *Extensions* view, enter "Dev Containers" and, once found, click *Install* to install the extension in VS Code.

<br>

![Installing Dev Containers extension](./images/local-2.png?raw=true "Installing Dev Containers extension")

<br>

Alternatively, you can install the extension from it [page on the Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers).

<br><br>

**5. Use Git to clone this repository down to your machine with a command like the following.**

```
git clone https://github.com/skillrepos/<repo-name>
```

<br><br>

**6. Open up the cloned project in VS Code.** 

There are multiple ways to do this: 
- You can drag and drop the project directory onto VS Code.
- You can open VS Code and open the folder from its menu.
- You can simply change into the cloned directory and run the command "code ."

```
cd <cloned repo dir>
code .
```

<br><br>

**7. Once you open the folder/project in VS Code, VS Code should detect the devcontainer setup and prompt you about running it as a development container (usually in lower right corner). Click on "Reopen in Container".** 

<br>

![Starting in VS Code](./images/local-5.png?raw=true "Starting in VS Code")

<br>

**If you get a popup about "Not all host requirements in devcontainer.json are met by the Docker daemon", you can just click *Continue* and it will probably still be fine.**

![Host requirements](./images/local-6.png?raw=true "Host requirements")

<br><br>


**8. Allow the setup processing to run automatically. (May take up to 10 minutes for some projects).**

<br>

![Setup](./images/local-7.png?raw=true "Setup")

<br><br>

**9. When the processing is done, you'll see a message like "Done. Press any key to close the terminal."**

<br>

![Done](./images/local-8.png?raw=true "Done")

<br><br>

**10. Once you hit a key, that terminal will go away. To get a new terminal, you can either drag up from the bottom or use the *Terminal* -> *New terminal* command from the VS Code menu.**

<br>

![Terminal](./images/local-9.png?raw=true "terminal")

<br><br>

**11. You are now ready to run the labs in your local environment!**

<br><br>

---

## License and Use

These materials are provided as part of the virtual training conducted by **TechUpSkills (Brent Laster)**.

Use of this repository is permitted **only for registered workshop participants** for their own personal learning and
practice. Redistribution, republication, or reuse of any part of these materials for teaching, commercial, or derivative
purposes is not allowed without written permission.

© 2026 TechUpSkills / Brent Laster. All rights reserved.
