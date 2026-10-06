# Running the labs without a Codespace, Docker, or VS Code (Windows and Mac)

### NOTE: A GitHub Codespace, described in [README.md](./README.md), is the preferred environment for these labs. It needs only a browser, with nothing installed on your machine. If you have Docker and VS Code, [LOCAL_SETUP.md](./LOCAL_SETUP.md) runs the same environment locally. Use this guide only if neither of those works for you.

<br>

This guide is for attendees who **can't use a Codespace and can't install Docker, VS Code, or both.** It sets up everything directly on your machine.

**Pick the option that fits what you're allowed to install:**

| Option | What you install | How closely the labs match |
|---|---|---|
| **A. VS Code without Docker** | Git, Python, VS Code | Almost exactly. The labs were written for VS Code. |
| **B. Another IDE with Copilot**: JetBrains (PyCharm, IntelliJ), Visual Studio, Eclipse, Xcode | Git, Python, your IDE plus its Copilot plugin | Same concepts, different menus. Good if your company already provides one of these IDEs. |
| **C. No IDE: Copilot CLI and a text editor** (**paid Copilot plan**) | Git, Python, Copilot CLI | Labs 2–8 work from the terminal. Lab 1 (in-editor completions) needs an IDE, so watch the instructor demo. Copilot CLI generally isn't available on Copilot Free. |
| **D. No IDE and Copilot Free: browser plus terminal** | Git, Python | Partial. Use Copilot Chat on GitHub.com for the question-and-answer parts and run the app locally. Agent, Plan and MCP steps need an IDE or the CLI, so watch the instructor demo for those. |

> **No admin rights?** Ask IT first. Also note that some installs don't need admin rights: the VS Code **User Installer** on Windows, the VS Code app copied into your own *Applications* folder on Mac, and Python's *Install for me only* option. If what's blocked is *admin rights* and not VS Code itself, Option A may still work for you.

Plan on **20–30 minutes**, mostly spent on downloads.

<br>

**Contents**

- [Part 1 - Common setup (everyone)](#part-1---common-setup-everyone)
- [Part 2, Option A - VS Code without Docker](#part-2-option-a---vs-code-without-docker)
- [Part 2, Option B - Another IDE with Copilot](#part-2-option-b---another-ide-with-copilot)
- [Part 2, Option C - No IDE: Copilot CLI](#part-2-option-c---no-ide-copilot-cli)
- [Part 2, Option D - No IDE and Copilot Free: browser plus terminal](#part-2-option-d---no-ide-and-copilot-free-browser-plus-terminal)
- [PowerShell versions of lab commands](#powershell-versions-of-lab-commands)
- [Troubleshooting](#troubleshooting)

<br><br>

---

# Part 1 - Common setup (everyone)

## 1. Check your GitHub and Copilot access

You need a GitHub.com account with Copilot enabled. Copilot Free is included with every account. To confirm, follow **step 1 of [README.md](./README.md)**. Note which labs need a paid plan; that applies the same way here.

<br>

## 2. Install Git

**Windows:** install **Git for Windows** from [git-scm.com/download/win](https://git-scm.com/download/win), or run this in PowerShell:

```
winget install --id Git.Git -e
```

Accept the defaults. You also get **Git Bash**, a bash terminal for Windows. **Use Git Bash to run the lab commands.** They are written for bash (`\` line continuations, `mkdir -p`, `cp`, `rm -f`).

**Mac:** run this in Terminal (or `brew install git` if you use Homebrew):

```
xcode-select --install
```

**Verify:**

```
git --version
```

<br>

## 3. Install Python (3.10 or newer; the codespace uses 3.12)

**Windows:** download the installer from [python.org/downloads](https://www.python.org/downloads/). On the first screen, **check "Add python.exe to PATH"**. Or run:

```
winget install --id Python.Python.3.12 -e
```

> If typing `python` opens the Microsoft Store, go to *Settings > Apps > Advanced app settings > App execution aliases* and turn off the two *python* aliases. Then open a new terminal.

**Mac:** use the installer from [python.org/downloads](https://www.python.org/downloads/), or run `brew install python`.

**Verify:**

```
# Mac
python3 --version

# Windows
python --version
```

<br>

## 4. Clone the repository

In **Git Bash** (Windows) or **Terminal** (Mac), change to the folder where you keep projects. Then run:

```
git clone https://github.com/skillrepos/copilot-hands-on.git
cd copilot-hands-on
```

> Wherever the labs show **`/workspaces/copilot-hands-on`**, use **your clone's folder** instead. Lab 7 step 3 and the Appendix 2 reset commands are the places this comes up.

<br>

## 5. Create the Python environment

These commands do what the codespace's `scripts/pysetup.sh` does: they create a virtual environment named `py_env` (already in `.gitignore`) and install Flask and pytest. Run them from the root of your clone.

```
# Mac (Terminal)
python3 -m venv py_env
source py_env/bin/activate
pip install -r requirements.txt

# Windows (Git Bash)
python -m venv py_env
source py_env/Scripts/activate
pip install -r requirements.txt
```

When the environment is active, your prompt starts with **`(py_env)`**, and `python` works on both Mac and Windows, as the labs expect.

> **Every new terminal window or tab needs `py_env` activated again.** Run the `source ...activate` line from the root of your clone. Labs 3 and 5 use two terminals: one runs the app and one runs `curl`.

<br>

## 6. Check that the sample app runs

With `(py_env)` active, run this from the root of the clone:

```
python app/app.py
```

Flask should report `Running on http://127.0.0.1:5000`. Open a **second** terminal and run:

```
curl -i -H "Authorization: Bearer secret-token" http://127.0.0.1:5000/items
```

A `200 OK` response means Part 1 is done. Stop the server with `Ctrl+C`.

> **Mac: "Address already in use" / port 5000 is in use?** macOS's **AirPlay Receiver** uses port 5000. Turn it off in *System Settings > General > AirDrop & Handoff > AirPlay Receiver*, then start the app again.

**Now go to Part 2 for the option you chose.**

<br><br>

---

# Part 2, Option A - VS Code without Docker

1. **Install VS Code** from [code.visualstudio.com/download](https://code.visualstudio.com/download). Windows: `winget install --id Microsoft.VisualStudioCode -e`. Mac: `brew install --cask visual-studio-code`. Current VS Code (1.116 and later) has **Copilot Chat built in**.
2. **Put `code` on your PATH.** The labs run `code <file>` often. On Windows, the installer adds it by default. On Mac, press `Cmd+Shift+P` in VS Code and run **Shell Command: Install 'code' command in PATH**. Then reopen your terminal.
3. **Open the project** by running `code .` from the clone root. Choose **Yes, I trust the authors** when VS Code asks; MCP servers in Lab 7 need a trusted folder. If you see a **Reopen in Container** prompt, **dismiss it**.
4. **Windows only: make Git Bash the default terminal.** Press `Ctrl+Shift+P`, run **Terminal: Select Default Profile**, and choose **Git Bash**.
5. **Recommended:** install the **Python** extension (by Microsoft). Then run **Python: Select Interpreter** and pick the one in `py_env`, so new terminals activate it automatically.
6. **Sign in to Copilot.** Click the **Copilot icon** in the status bar and choose **Sign in with GitHub**. Then check that **Inline suggestions** are enabled, as in step 4 of [README.md](./README.md). In the Chat panel, set **Session Target** (if you see it) to **Local**.
7. *(Optional)* To use the same VS Code settings as the codespace, create `.vscode/settings.json` (the folder is git-ignored) with this content:

```json
{
  "accessibility.voice.keywordActivation": "off",
  "github.copilot.chat.setupTests.enabled": false,
  "chat.defaultToCopilotHarness": false,
  "chat.editor.preferCopilotHarness": false
}
```

**Differences from the codespace while doing the labs:**

| Where | What changes |
|---|---|
| Labs 3 and 5: **Split Terminal** | Activate `py_env` in the new terminal unless the Python extension does it for you |
| Lab 5: Agent asks to run commands "within /workspaces" | It shows your clone's path instead. Allow it as usual. |
| Lab 6: `.txt`-then-rename steps | They're only needed in the codespace's read-only preview. Follow them anyway; they still work. |
| Lab 7: your PAT | Stored in VS Code's secret storage **on your machine**. Delete the token at [github.com/settings/tokens](https://github.com/settings/tokens) when you're done. |
| Appendix 2 reset | Press `Ctrl+C` in the server terminal instead of `pkill`, and run the other reset commands from your clone's folder |

<br><br>

---

# Part 2, Option B - Another IDE with Copilot

Copilot is available in **JetBrains IDEs** (PyCharm is a good choice for these Python labs), **Visual Studio** (Windows), **Eclipse**, and **Xcode** (Mac).

1. **Install the Copilot plugin and sign in.** Follow GitHub's instructions for your IDE: [Installing the GitHub Copilot extension in your environment](https://docs.github.com/en/copilot/how-tos/set-up/install-copilot-extension). Choose your IDE in the tabs at the top of the page. In JetBrains, the plugin is called **GitHub Copilot** in *Settings > Plugins > Marketplace*.
2. **Open your clone's folder** as a project, and trust it if the IDE asks.
3. **Point the IDE at `py_env`** as the project's Python interpreter, if the IDE supports Python, so its terminal activates it. Otherwise, run lab commands in **Git Bash** (Windows) or **Terminal** (Mac) with `py_env` activated.
4. **Open the Copilot Chat window** (in JetBrains, it's on the right-hand tool bar). Make sure you see the chat **mode** selector (Ask / Agent).

Feature support differs between IDEs and changes often. GitHub's [Copilot feature matrix](https://docs.github.com/en/copilot/reference/copilot-feature-matrix) has the current list. Here's how each lab maps:

| Lab | What to do in another IDE |
|---|---|
| 1 - Completions and NES | Completions work in every IDE. Next Edit Suggestions are fully supported in Visual Studio and in preview in JetBrains, Eclipse and Xcode, so you may need to turn them on in the Copilot settings. Create `index.js` with the IDE's *New File* command instead of `code index.js`. |
| 2 - Ask / Agent / Plan | Ask and Agent are in the Chat window's mode selector. Plan mode isn't available in every IDE. If yours doesn't have it, use Ask mode and ask for a step-by-step plan *without* changing files. Accept or reject Agent edits with your IDE's buttons, which may not be labeled Keep/Undo. |
| 3 - Onboarding | Use the prompts as written. Replace `#codebase` with your IDE's way of adding the whole project as context, or just say "in this project." Run the app and `curl` in two terminals. |
| 4 - Tests | Works the same in Chat |
| 5 - Agent feature work | Works the same in Agent mode. Use **Git Bash** or **Terminal** for `curl`. |
| 6 - Custom instructions and models | Create `.github/copilot-instructions.md` directly; you can skip the `.txt` rename. It's supported in Visual Studio and in preview in JetBrains, Eclipse and Xcode. The **model picker** is in the Chat window. |
| 7 - MCP | MCP servers are set up in the IDE's Copilot settings, not in `.vscode/mcp.json`. Recent JetBrains versions include a built-in GitHub MCP server you can turn on. Otherwise, add a server with the URL `https://api.githubcopilot.com/mcp/` and the header `Authorization: Bearer <your PAT>`, as in [extra/mcp_github_settings_pat.json](./extra/mcp_github_settings_pat.json). Steps 9–10 (the MCP marketplace) are VS Code-only. |
| 8 - GitHub.com | Browser only. No difference. |

<br><br>

---

# Part 2, Option C - No IDE: Copilot CLI

> **Requires a paid Copilot plan (Pro or higher), or a company plan whose admin has turned Copilot CLI on.** Copilot CLI generally isn't available on **Copilot Free**. If you're on Free, use [Option B](#part-2-option-b---another-ide-with-copilot) if you can install an IDE, or [Option D](#part-2-option-d---no-ide-and-copilot-free-browser-plus-terminal) if you can't.

**GitHub Copilot CLI** is Copilot's agent in your terminal. It can answer questions about the code, plan, edit files, run commands (with your approval), use custom instructions, switch models, and use MCP servers. **The GitHub MCP server comes already configured.** You'll use it with any plain-text editor: Notepad, TextEdit, nano, or whatever you have.

## C1. Install Copilot CLI

**Windows:** Copilot CLI needs **PowerShell 7** (the built-in Windows PowerShell 5.1 isn't enough). Install both in PowerShell:

```
winget install --id Microsoft.PowerShell -e
winget install GitHub.Copilot
```

**Mac:**

```
brew install --cask copilot-cli
```

or, without Homebrew:

```
curl -fsSL https://gh.io/copilot-install | bash
```

*(Any OS with Node.js 22+ can use `npm install -g @github/copilot` instead.)*

Details: [Installing GitHub Copilot CLI](https://docs.github.com/en/copilot/how-tos/set-up/install-copilot-cli)

## C2. Start it and sign in

Open a terminal **in the root of your clone** and start Copilot CLI:

```
cd <your clone folder>
copilot
```

1. When asked whether you trust the files in this folder, choose to trust it.
2. Type **`/login`** and follow the prompts to sign in with your GitHub account in the browser.
3. Type a quick test question, like `What does prime.py do?`. You should get an answer about the file.

## C3. Copilot CLI basics you'll use in the labs

| You want to… | In Copilot CLI |
|---|---|
| Ask a question about the code | Type it. Point at a file with `@`, e.g. `Explain @prime.py` |
| Have Copilot change code (Agent) | Ask for the change. It shows each edit and asks permission before writing files or running commands. Choose *Yes* to allow. |
| Plan before changing anything (Plan) | Press **`Shift+Tab`** to cycle into plan mode. Press it again to leave. |
| Ask *without* any edits (like Ask mode) | Use plan mode, or add "don't change any files" to your prompt |
| Run a shell command yourself | Start the line with `!`, e.g. `!git status`, or use another terminal window |
| Choose a model | **`/model`** |
| See MCP servers and tools | **`/mcp`** |
| Start fresh (like the "+" new chat) | Type **`/exit`**, then run `copilot` again |
| Review or undo Copilot's edits | Run `git diff` in another terminal. Undo with `git checkout -- <file>`. |

**Terminal layout for the labs:** keep **three** terminal windows open in your clone folder.

1. **Copilot CLI** (`copilot`)
2. **The app** (`python app/app.py`, with `py_env` activated)
3. **Your commands** (`curl`, `git`, opening files; with `py_env` activated)

On Windows, use Git Bash for windows 2 and 3.

**Opening files:** where the labs say `code <file>`, open the file in your text editor instead.

- **Windows:** `notepad index.js`
- **Mac:** `open -e index.js` (TextEdit) or `nano index.js`

Create the file first if it doesn't exist yet, e.g. `touch index.js`.

## C4. Doing each lab with Copilot CLI

| Lab | How to do it |
|---|---|
| **1 - Completions and NES** | Not possible from the terminal; ghost-text completions need an editor. Watch the instructor demo. If you can install any IDE from Option B, you can do it there. |
| **2 - Ask / Agent / Plan** | **Steps 3–4 (Ask):** `Simplify the code in @prime.py for clearer logic. Show me the code but don't change any files.` Copy in the parts you want with your editor. **Step 6 (Agent):** give the docstrings prompt as written, approve the edit, then check it with `git diff prime.py`. **Steps 7–9:** break the code in your editor, then ask `Fix the error in @prime.py`. **Steps 10–12 (Plan):** press `Shift+Tab` into plan mode, give the prompt, answer its questions, and approve the plan to implement it. |
| **3 - Onboarding** | Use the prompts as written, replacing `#codebase` with "in this repository" or `@app/app.py`. Start the app in terminal 2 and run the suggested `curl` commands in terminal 3. |
| **4 - Tests** | **Steps 2–5:** `How do I completely test the is_prime function in @prime.py? Put the tests in test_prime.py.` Approve the file write (and `pytest`, if it asks). **Steps 6–8:** `What other conditions should be tested in @test_prime.py? Add them to the file.` **Steps 9–10 (Review):** `Review @prime.py and list potential issues and improvements.` The answer appears in the terminal, not as inline comments. |
| **5 - Agent feature work** | Do steps 1–2 in terminals 2 and 3. Give the step 5 prompt without `#codebase`. Copilot can read issue #8 itself through the built-in GitHub MCP server. Approve edits and commands, review with `git diff app/`, then do step 10 in terminal 3. |
| **6 - Custom instructions and models** | Create `.github/copilot-instructions.md` directly in your editor (skip the `.txt` rename). Then **restart Copilot CLI** (`/exit`, `copilot`) so it picks the file up, and continue with the lab's prompts. Use **`/model`** for the model selection part. On Free, only automatic model selection is available. |
| **7 - MCP** | No PAT or `mcp.json` is needed. The GitHub MCP server is built in and uses your `/login`. **Skip steps 1–5.** Run **`/mcp`** to see the server and its tools, then use the step 6 and step 8 prompts as written. Steps 9–10 (the marketplace) are VS Code-only. *(To add other MCP servers later, use `/mcp add`.)* |
| **8 - GitHub.com** | Browser only. No difference. |

<br><br>

---

## PowerShell versions of lab commands

Git Bash is recommended on Windows. If you must use PowerShell, here are equivalents:

```
# Activate py_env
.\py_env\Scripts\Activate.ps1
# (If scripts are blocked: Set-ExecutionPolicy -Scope CurrentUser RemoteSigned)

# Lab 5 - use curl.exe (not curl) and keep the command on one line
curl.exe -i -H "Authorization: Bearer secret-token" "http://127.0.0.1:5000/items/search?q=milk"

# Lab 6
New-Item -ItemType Directory -Force .github
Move-Item .github/copilot-instructions.txt .github/copilot-instructions.md

# Lab 7 (Option A)
New-Item -ItemType Directory -Force .vscode
Copy-Item extra/mcp_github_settings_pat.json .vscode/mcp.json

# Appendix 2 reset: stop the app with Ctrl+C, then
Remove-Item -ErrorAction SilentlyContinue index.js, test_prime.py, utils.py, app/test_search.py
```

<br>

## Troubleshooting

| Symptom | Fix |
|---|---|
| `python: command not found` (Mac) | Use `python3` to create the environment. Once `py_env` is active, `python` works. |
| Microsoft Store opens when you type `python` | Turn off the Python *App execution aliases* (Part 1, step 3) and open a new terminal |
| `ModuleNotFoundError: No module named 'flask'` | `py_env` isn't active in this terminal. Activate it (Part 1, step 5). |
| `Address already in use` on port 5000 (Mac) | Turn off AirPlay Receiver (Part 1, step 6) |
| `415 UNSUPPORTED MEDIA TYPE` from `curl` | Add `-H "Content-Type: application/json"` to POST or PATCH commands |
| Copilot CLI won't start on Windows | Install PowerShell 7 (Option C, step C1) and open a new terminal |
| Copilot CLI says you aren't authorized or aren't entitled | Copilot CLI needs a paid plan. On Copilot Free, use Option B or D. On a company plan, your admin may have turned Copilot CLI off. Otherwise, run `/login` again. |
| VS Code Chat shows only **Agent**, or keeps asking you to sign in | Click the Copilot status-bar icon and sign in. Make sure **Session Target** is **Local**. |
| Copilot can't connect on a corporate network | VPNs and proxies can block Copilot. Try without the VPN, or ask IT to allow GitHub Copilot's domains. |

<br><br>

---

## License and Use

These materials are provided as part of the virtual training conducted by **TechUpSkills (Brent Laster)**.

Use of this repository is permitted **only for registered workshop participants** for their own personal learning and
practice. Redistribution, republication, or reuse of any part of these materials for teaching, commercial, or derivative
purposes is not allowed without written permission.

© 2026 TechUpSkills / Brent Laster. All rights reserved.
