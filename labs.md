# Hands-on GitHub Copilot
## Practical Tips and Best Practices
## Session labs (codespace version)
## Revision 3.1 - 02/17/26

**Versions of dialogs, buttons, etc. shown in screenshots may differ from current version of Copilot**

**Follow the startup instructions in the README.md file IF NOT ALREADY DONE!**

**NOTES:**
1. We will be working in the public GitHub.com, not a private instance.
2. Chrome may work better than Firefox for some tasks.
3. Substitute the appropriate key combinations for your operating system where needed.
4. The default environment will be a GitHub Codespace (with Copilot already installed). If you prefer to use your own IDE, you are responsible for installing Copilot in it. Some things in the lab may be different if you use your own environment.
5. To copy and paste in the codespace, you may need to use keyboard commands - CTRL-C and CTRL-V.
6. VPNs may interfere with the ability to run the codespace. It is recommended to not use a VPN if you run into problems.
7. If you use the free Copilot plan (no signup), some advanced functionality (Agent mode, model selection, etc.) may not be available.
8. Copilot's responses are non-deterministic — your results may differ slightly from what is shown in screenshots or described in steps. This is expected.
</br></br></br>

**Lab 1 - Code Completions and Next Edit Suggestions**

**Purpose: In this lab, we'll learn how Copilot generates code from prompts and how Next Edit Suggestions (NES) can predict your next edit across a file.**

1. Create a new file. In the terminal, enter

```
code index.js
```
<br><br>

2. Afterwards this file should be open in a tab in the editor. Let's see how Copilot responds to a generic request. Type in a comment that says

```
// function to parse data
```
![Copilot generated function](./images/cdd263.png?raw=true "Copilot generated function")
<br><br>

3. Hit *Enter* and notice the grayed-out code that Copilot suggests. This is likely more generic than we want, but hit *Tab* to accept the suggestion. Continue hitting *Tab* and *Enter* to accept additional lines until you get a complete function or Copilot stops suggesting. (Give Copilot a second to provide suggestions before moving on.)

![Copilot generated function](./images/cpho07.png?raw=true "Copilot generated function")

<br><br>

4. This prompt wasn't specific enough for Copilot to know what we actually wanted. **Select all the code and delete it** so we can try a more specific prompt.
<br><br>

5. Now type a more specific comment at the top:

```
// function to parse a URL and return its protocol, host, path, and query parameters as an object
```
<br><br>

6. Hit *Enter*. You should see Copilot suggest a much more relevant function — likely named something like `parseURL`. Hit *Tab* to accept each line and *Enter* to continue until the function is complete. Notice how the more descriptive prompt led to more useful code.

![Copilot generated function](./images/cpho08.png?raw=true "Copilot generated function")

<br><br>

7. Next, let's see how Copilot presents multiple alternatives. Enter the line of code below and then hit *Enter*. With the cursor on the next line, you should see a grayed-out suggestion. Hover over that suggestion. A small toolbar will appear with **"<"** and **">"** arrows to cycle through alternatives. Select the one you prefer with *Tab*.

![Copilot generated alternatives](./images/cpho09.png?raw=true "Copilot generated alternatives")

<br><br>

8. Now let's experience **Next Edit Suggestions (NES)**. NES predicts your next edit based on changes you just made — even in a different part of the file. Delete the current contents of the file and paste in the following code:

```javascript
function greet(name) {
  return "Hello, " + name + "!";
}

function farewell(name) {
  return "Goodbye, " + name + "!";
}

function welcome(name) {
  return "Welcome, " + name + "!";
}
```
<br><br>

9. Let's modernize these functions. In the `greet` function, change the return statement to use a template literal:

```javascript
  return `Hello, ${name}!`;
```

After making this change, look at the `farewell` function below. You should see Copilot's NES automatically suggest the same template literal update there — highlighted with a dimmed/ghost text preview or a decorating indicator in the gutter.

![NES 1](./images/cpho10.png?raw=true "NES 1")

<br><br>

10. Press *Tab* to accept the NES suggestion in `farewell`. Now look at the `welcome` function — NES should suggest the same pattern there too. Press *Tab* again to accept it. You've just updated three functions by only typing one change manually. This is the power of Next Edit Suggestions.

![NES 2](./images/cpho11.png?raw=true "NES 2")

<br><br>

 <p align="center">
**[END OF LAB]**
</p>
</br></br></br>

**Lab 2 - Understanding Chat Modes: Ask, Edit, and Agent**

**Purpose: In this lab, we'll explore the three Copilot Chat modes and learn when to use each one.**

1. Open the file *prime.py*. You can click on [**prime.py**](./prime.py) **in the codespace** or open it via the terminal:

```
code prime.py
```
<br><br>

2. If not already open, open the Copilot Chat panel by clicking the Chat icon in the top bar (or side bar). Make sure the mode is set to **"Ask"**. If you need to change the mode, click on the mode selector dropdown at the bottom of the Chat input area and select **"Ask"**. (If you see a "Finish Setup" option in the bottom bar of the codespace, click that first and then "Set up Copilot".)

![Opening chat](./images/cpho12.png?raw=true "Opening chat")


![Ask mode](./images/cpho13.png?raw=true "Ask mode")

<br><br>

3. **Highlight all the code** in *prime.py*. In the Chat input, type the following and hit *Enter*:

```
simplify this code for clearer logic
```

Copilot will respond with an explanation of how it simplified the code and provide a new code block in the Chat panel. This is **Ask mode** — it answers questions and provides suggestions in the chat, but doesn't directly change your files.

![simplify logic](./images/cpho14.png?raw=true "Simplify logic")

<br><br>

4. Hover over the code block in the Chat output. You'll see a toolbar appear. Click the **"Insert at Cursor"** button to replace the highlighted code with the simplified version. (In Ask mode, *you* control when and how suggestions are applied.)

![Insert mode](./images/cpho15.png?raw=true "Insert mode")

<br><br>

5. Now let's try **Agent mode** for a direct edit. Click the mode selector dropdown and switch to **"Agent"**. 

![Agent mode](./images/cpho16.png?raw=true "Agent mode")

<br><br>

6. In the Chat mode input area, type the following and submit:

```
Add detailed docstrings to each function in prime.py explaining parameters, return values, and examples
```

Agent mode will analyze the file, propose edits directly in the editor, and may iterate to ensure completeness. You'll see inline diffs — review the changes, then click "Keep" to apply them or "Undo" to reject. Unlike *Ask* mode, *Agent* mode applies changes directly in your files and can work across multiple files autonomously

![Agent mode](./images/cpho17.png?raw=true "Agent mode")

<br><br>

7. Now let's introduce an error into the code to see how Copilot can fix it. Switch back to **"Ask"** mode. In the *prime.py* file, intentionally break the code by changing a variable name — for example, change an instance of `n` to `x`.
<br><br>

8. Highlight the broken code. Bring up the inline chat interface with Cmd/Ctrl+1. The inline chat dialog will probably already be populated with a command like "Fix the attached problem". If so, you can just hit *Enter*. If not, you can use the */fix* command.

![Fix with Copilot](./images/cpho21.png?raw=true "Fix with Copilot")

(As another alternative to start a fix, you can right-click, select *Generate Code* and then select *Fix*.)

![Fix with Copilot](./images/cpho20.png?raw=true "Fix with Copilot")

9. Copilot will analyze the error and propose a fix inline. You can apply the fix using the same controls as before (the *Keep* button). 

![Keep fix](./images/cpho19.png?raw=true "Keep fix")

<br><br>

9. Let's see one more useful slash command. Highlight the code in the *prime.py* file and have Copilot explain it by typing */explain* in the chat interface.

```
/explain
```

Copilot will provide a detailed explanation of what the code does, line by line. 

![Explain](./images/cpho22.png?raw=true "Explain")

Other useful slash commands include `/tests`, `/doc`, and `/new`.
<br><br>

10. Finally, let's try *Plan* mode. Switch back to "Plan" mode using the mode selector dropdown.

![Switch to plan mode](./images/cpho28.png?raw=true "Switch to plan mode")

Plan mode creates a structured implementation plan before any code is written - useful for larger tasks where you want to think through the approach first. Enter the following prompt:

```
Add input validation and error handling to the functions in prime.py
```

<br><br>

11. As it prepares the plan, Plan mode may ask you clarifying questions (e.g., what types of validation? how to handle errors?). Answer them to refine the plan. If there are multiple, you can use the "<" and ">" keys to move between them. When you've answered all the questions, you can then use the "Submit" option to continue.

![Answering questions](./images/cpho31.png?raw=true "Answering questions")

<br><br>

12. After Copilot processes your answers, it will present a full plan.  You can then click on the "Start Implementation" button to have the plan executed in Agent mode (or use the other button to open the plan in the editor). Watch how Agent mode reasons about the task, makes changes across the file, and potentially runs commands to verify its work. When finished, review the diffs and click either the "Keep" (all) buttons or go through the "Keep" buttons for the individual changes to apply the changes.

![Ready to implement](./images/cpho33.png?raw=true "Ready to implement")

As it is making the changes, Agent mode may stop and ask you if its ok if it runs commands. You can just choose "Allow" and let it run through the changes. Then choose "Keep/Undo" as appropriate to finalize them.

![Implementing](./images/cpho34.png?raw=true "Implementing")

<br><br>

**Quick reference — when to use each mode:**
    - **Ask**: Learning, Q&A, exploring ideas. You control what gets applied.
    - **Plan**: Structured planning for larger tasks. Copilot asks clarifying questions, recommends approaches, and produces a step-by-step plan before any code is written. Can hand off to Agent for implementation.
    - **Agent**: Autonomous, multi-step tasks. Copilot reasons, edits files, runs commands, and iterates. (We'll cover Agent mode in depth in Lab 5.)
    - **Note**: Earlier versions of Copilot included a separate "Edit" mode. This has been unified into Agent mode, which now handles both targeted edits and autonomous tasks.

<p align="center">
**[END OF LAB]**
</p>
</br></br></br>

**Lab 3 - Using Copilot to Understand and Onboard to a Codebase**

**Purpose: In this lab, we'll use Copilot to quickly get up to speed on any project.**

1. For our labs in this workshop, we have a set of code that implements a simple to-do app, written in Python with a toolkit called *Flask*. We interact with it via curl commands for simplicity. The files for this app are in a subdirectory named *app*. You can look at the files if you want:

```
cd app
ls
```

![Viewing files](./images/cpho35.png?raw=true "Viewing files")

<br><br>

2. Since this is a new project to us, let's have Copilot produce some onboarding documentation. Set mode back to **Ask** mode. Click on the "+" sign at the top to start a new chat. Then enter the following prompt. The `#codebase` reference tells Copilot to consider the entire project. (If you see a momentary flash about "Sign in to access Copilot", wait until the dialog returns and enter the prompt again.) After inputting the prompt hit *Enter/Submit*.

```
Create an onboarding guide for the app directory in #codebase. Do not create a separate block for it.
```

![Prompt to create onboarding guide](./images/cpho36.png?raw=true "Prompt to create onboarding guide")

<br><br>

3. After Copilot completes processing, you should see the onboarding documentation displayed in the Chat output area. Scroll through it to learn about the project structure, key files, and how things fit together.

![Onboarding guide](./images/cpho37.png?raw=true "Onboarding guide")

<br><br>

4. We can also ask Copilot more tightly scoped questions. For example, still in **Ask** mode in the same chat, let's ask it how to run the project:

```
Explain how I can run and see the functionality in the app directory.
```

![Explain how to run](./images/cpho38.png?raw=true "Explain how to run")

<br><br>

5. In the Chat output, you'll see commands to start the server and run a demo script. (Notice if these are meant to be started from the root of the project or the app directory. If they look like `python app/app.py` then, in the terminal, cd to the root of the project.) Then, hover over the server start command — if you see a terminal icon, click it to insert the command into the terminal. If not, click **"..."** and select **"Insert into terminal"**.

![Insert into terminal](./images/cpho39.png?raw=true "Insert into terminal")

<br><br>

6. In the terminal, hit *Enter* to start the server.

![Running the server](./images/cpho40.png?raw=true "Running the server")
   
<br><br>

7. Because the running server is using this terminal, open a second terminal by clicking the dropdown to the right of the "+" in the *TERMINAL* area, then select **"Split Terminal"** from the pop-up menu.

![Splitting the terminal](./images/cpho41.png?raw=true "Splitting the terminal")

<br><br>

8. Back in the Chat output, find the command to run the example usage script - probably `bash scripts/use-app.sh` under a "Testing" section or similar. Insert it into the new terminal using the same method as step 5. Hit *Enter* and watch the script execute commands against the server.

![Running the usage script](./images/cpho42.png?raw=true "Running the usage script")

<br><br>

9. Now let's ask Copilot about a specific file. Open *app/app.py* in the editor, highlight all the code, and ask:

```
Explain the main routes and error handling in this file.
```

![Route and error handling explanation](./images/cpho43.png?raw=true "Route and error handling explanation")

Copilot will break down the endpoints, their purposes, and how errors are handled — giving you a deep understanding of the file without reading every line yourself.
<br><br>

<p align="center">
**[END OF LAB]**
</p>
</br></br></br>

**Lab 4 - Generating and Improving Tests with Copilot**

**Purpose: In this lab, we'll use Copilot to generate tests, suggest edge cases, and review implementation code.**

1. In the editor, switch to the *prime.py* file we used in Lab 2.
<br><br>

2. **Highlight the `is_prime()` function.** Open a new chat by clicking the **"+"** icon in the upper right of the Chat panel.
<br><br>

3. Let's see the "quick" approach to generating tests. With the code highlighted, ask Copilot:

```
How do I test this code?
```

You should see a plan for testing along with a proposed test code block in the Chat output.

![Proposed testing plan](./images/cpho44.png?raw=true "Proposed testing plan")

<br><br>

4. Hover over the generated code block, click **"..."** and then **"Insert into New File"** to create a new file with the test code.

![Insert plan into new file](./images/cpho45.png?raw=true "Insert plan into new file")

<br><br>

5. Save the file as **test_prime.py** (File > Save As, or Ctrl+S / Cmd+S and enter the filename).

![Save file](./images/cpho46.png?raw=true "Save file")

<br><br>

7. We can also ask Copilot for additional edge cases. Select the code in *test_prime.py* and in the Chat, ask:

```
What other conditions should be tested?
```
<br><br>

7. Copilot will suggest additional test conditions (negative numbers, boundary values, large primes, etc.) and generate a code block. Hover over that block and click the **"Apply in Editor"** icon (leftmost control). If prompted to select a target, choose **"Active editor 'test_prime.py'"**.

![Apply in editor](./images/cpho47.png?raw=true "Apply in editor")

<br><br>

8. You should see the additional test cases added to the file. Review the changes and click **"Keep"** to persist them.

![Inspecting changes](./images/cpho48.png?raw=true "Inspecting changes  ")
<br><br>

10. Now let's have Copilot **review** our implementation code. Go back to the *prime.py* file and select all the code. Right-click and select **Copilot > Review and Comment** from the context menu. (Depending on your version, this may be under *Generate Code > Review* or accessible via a keyboard shortcut.)

![Initiating review](./images/cpho49.png?raw=true "Initiating review")

<br><br>

11. After a few moments, Copilot will add inline review comments identifying potential issues, improvements, or suggestions. If you look in the **COMMENTS** panel at the bottom (next to TERMINAL), you'll see all comments listed. Click any row to navigate to that suggestion. For each comment, you can click **"Apply and Go to Next"** to accept or **"Discard and Go to Next"** to skip. (If there's only one comment, it will just have **"Apply"** and **"Discard"**.)

![Review comment](./images/cpho50.png?raw=true "Review comment")

<br><br>

<p align="center">
**[END OF LAB]**
</p>
</br></br></br>

**Lab 5 - Agent Mode: Implementing a Feature Autonomously**

**Purpose: In this lab, we'll use Copilot's Agent mode to autonomously implement a feature from a GitHub Issue.**

1. Make sure the sample app is running. If it's not still running from Lab 3, start it in one of the terminals. If you need a second terminal, click the **Split Terminal** icon in the upper right of the terminal area.

```
python app/app.py
```
<br><br>

2. Our app is missing a *search* feature. Verify this by running the following command in the other terminal:

```
curl -i \
  -H "Authorization: Bearer secret-token" \
  http://127.0.0.1:5000/items/search?q=milk
```

You should get a **404** response — the search endpoint doesn't exist yet.

![Search endpoint not found](./images/cpho51.png?raw=true "Search endpoint not found")

<br><br>

3. We have a GitHub Issue describing this feature request. Take a look at it: [GitHub Issue #8](https://github.com/skillrepos/copilot-hands-on/issues/8)


![Endpoint issue](./images/cpho52.png?raw=true "Endpoint issue")

<br><br>

4. Let's have **Agent mode** implement this feature. Open a new chat (click the **"+"** icon) and switch to **"Agent"** mode using the mode selector dropdown at the bottom of the Chat input. Also open *app/app.py* in the editor to set it as active context.
<br><br>

6. Enter the following prompt in Agent mode:

```
Referencing the issue at https://github.com/skillrepos/copilot-hands-on/issues/8, implement the requested search feature in our Python #codebase in /app. Do not create or add any tests.
```

![Prompt to resolve issue](./images/cpho53.png?raw=true "Prompt to resolve issue")

<br><br>

6. Watch Agent mode work. Unlike Ask or Edit mode, the Agent will **autonomously**: analyze the codebase, reason about what changes are needed, edit one or more files, and possibly run terminal commands to verify its work. You may see it update *app.py* and potentially *datastore.py*. If Agent requests permission to run a terminal command, click **"Allow"** to let it proceed.


![Implementing feature](./images/cpho54.png?raw=true "Implementing feature")
   
<br><br>

7. When the Agent finishes, you'll see a summary of files changed above the Chat input (e.g., "2 files changed"). Click the **"+ -"** icon on the right to view the diffs.

![Seeing multiple diffs](./images/cpho55.png?raw=true "Seeing multiple diffs")

<br><br>

8. Review the diffs for each changed file. When satisfied, you can click the **"Keep"** button in the box above the chat input area to apply all the changes. (If you only wanted certain changes, you could "keep/undo" each change in each file. Close any diff comparison tabs.

<br><br>

9. Now test the search feature. Check the server terminal — if you see a "Detected change... reloading" message, the app has auto-reloaded. If not, kill the server (Ctrl+C) and restart with `python app/app.py`. Then run the search command again:

```
curl -i \
  -H "Authorization: Bearer secret-token" \
  http://127.0.0.1:5000/items/search?q=milk
```

This time you should get a **200** response instead of 404, confirming the search endpoint is now implemented.

![Seeing multiple diffs](./images/cpho56.png?raw=true "Seeing multiple diffs")

<br><br>

10. (Optional) If you have extra time, ask the Agent to create and run tests for the new feature. Be prepared to click **"Allow"** for any terminal commands the Agent needs to run.

```
Create and run tests for the new search feature.
```
<br><br>

<p align="center">
**[END OF LAB]**
</p>
</br></br></br>

**Lab 6 - Custom Instructions and Model Selection**

**Purpose: In this lab, we'll configure Copilot with project-specific instructions and explore how to select different AI models.**

1. Custom instructions let you tell Copilot about your team's coding standards, conventions, and preferences. These instructions are stored in a file that Copilot reads automatically. Let's create one. (Because of limitations in VS Code, we'll have to do this in a roundabout way.) In the terminal, run:

```
mkdir -p .github
code .github/instructions.txt
code .github/copilot-instructions.md
```
<br><br>

2. In the new file, add the following custom instructions and **save** (cmd/ctrl+S):

```markdown
# Copilot Custom Instructions

- Always add a comment at the top of every generated code block that says: "Generated with Copilot"
- Add a brief comment above every function explaining what it does
- Use descriptive variable names (no single-letter variables like x, i, n)
- Always include error handling with clear, user-friendly error messages
- Add a blank line between each function for readability
- When generating any code, include at least one example usage in a comment at the end
```

![Custom instructions](./images/cpho57.png?raw=true "Custom instructions")

<br><br>

3.  Now, we need to rename the file to the expected name. Run the command below in the terminal. Afterwards, you may not be able to click and see the file. But you can `cat` it in the terminal if you want.

```
mv .github/instructions.txt .github/copilot-instructions.md
```

![Custom instructions](./images/cpho58.png?raw=true "Custom instructions")

<br><br>

4. Now let's explore **model selection** (if your plan allows). In the Chat panel, look for the model name displayed near the mode selector or at the top of the Chat area. If it is "Auto", click on it to open the model picker. You'll see available models such as **GPT-4.1**, **Claude Sonnet**, and others depending on your plan. Pick one of the available ones that has a 0, 1 or <1 multiplier.

![Selecting specific models](./images/cpho61.png?raw=true "Selecting specific models")

<br><br>

5.  Now let's see these instructions in action. Open a new file:

```
code utils.py
```
<br><br>

6. In the Copilot Chat (Ask mode), enter the following prompt:

```
Write a function that reads a CSV file and returns a list of dictionaries where each dictionary represents a row.
```
<br><br>

7. Examine the generated code. You should be able to spot your custom instructions at work: a "Generated with Copilot" comment at the top, a comment above the function, descriptive variable names, error handling, and an example usage comment at the end. If you check the References section in the Chat output (click to expand it), you should see .github/copilot-instructions.md listed — confirming Copilot used your instructions.

![Generated code](./images/cpho59.png?raw=true "Generated code")

<br><br>

8. Insert the generated code into the *utils.py* file and save it. Now let's test it further. Switch to **Agent** mode, then ask in the chat:

```
Add a function to write a list of dictionaries to a CSV file.
```

Again, verify that the output follows your custom instructions (descriptive names, error handling, comments, example usage, etc.).

![Generated code](./images/cpho60.png?raw=true "Generated code")

<br><br>

9. You can review the proposed changes and just select to `Keep` them if you're good with them.
   

10. Now, if your plan allows, select a different model than the current one (for example, switch to **Claude Sonnet** if you were on GPT-4.1, or vice versa). Switch back to **Ask** mode. Now enter this prompt:

```
Write a function that takes a JSON file path and returns a sorted list of all unique keys found across all objects in the file.
```
<br><br>

11. Compare the output with what you might expect from the other model. You may notice differences in coding style, verbosity, and approach. Both should follow your custom instructions since those are applied regardless of which model is selected. Different models may excel at different tasks — Claude models tend to be preferred for complex multi-file reasoning, while GPT models may be faster for simple completions.

![Generated code with different model](./images/cpho62.png?raw=true "Generated code with different model")

<br><br>

12. **Key takeaways:**
    - Custom instructions in `.github/copilot-instructions.md` apply automatically to all Chat interactions and are shared via your repo (great for teams)
    - You can also create path-specific instructions using `.instructions.md` files in subdirectories
    - Model selection is available — experiment to find which models work best for your tasks
    - Premium models consume "premium requests" from your monthly allocation

<p align="center">
**[END OF LAB]**
</p>
</br></br></br>

**Lab 7 - Extending Copilot with MCP Servers**

**Purpose: In this lab, we'll set up and use the GitHub MCP Server to give Copilot access to external tools.**

1. MCP (Model Context Protocol) servers extend Copilot's Agent mode with external tool integrations. For authentication to the GitHub MCP Server, we need a personal access token (PAT). Click the link below, provide a note, and click the green **"Generate token"** button at the bottom:

Link: [Generate classic personal access token (repo & workflow scopes)](https://github.com/settings/tokens/new?scopes=repo,workflow)

![Getting token](./images/cpho63.png?raw=true "Getting token")

![Getting token](./images/mcp87.png?raw=true "Getting token")
<br><br>

2. On the next screen, **copy the generated token and save it** — you won't be able to see it again! (**Important:** Never commit PATs to a repository. This token is for local use only.)

![Copying token](./images/mcp11.png?raw=true "Copying token")

<br><br>

3. Now we'll add the MCP Server configuration. We already have a sample config file we can use. Run these commands in the terminal:

```
cd /workspaces/copilot-hands-on
mkdir -p .vscode
cp extra/mcp_github_settings.json .vscode/mcp.json
code .vscode/mcp.json
```
<br><br>

4. In the *mcp.json* file, click the small **"Start"** link that appears above the server name. A dialog will prompt you to paste your PAT. Paste it and hit *Enter*. (The token will be masked.) 


![Starting the server](./images/mcp23.png?raw=true "Starting the server")

After a moment, you should see the text change to **"Running | Stop | Restart | ## tools | More..."**.

![Starting the server](./images/mcp24.png?raw=true "Starting the server")

<br><br>

5. To see the available tools, make sure you're in **Agent** mode in the Chat panel. Click the small **tool icon** (wrench/hammer) in the Chat input area. Scroll down to the **MCP Server: GitHub MCP Server** section. You'll see all the tools Copilot can now use — things like searching issues, reading file contents from repos, listing PRs, and more.

![Viewing available tools](./images/mcp25.png?raw=true "Viewing available tools")

<br><br>

6. Let's use these tools. In Agent mode, enter one of the following prompts:

```
Give me a list of the open issues for the current GitHub repo
```

or

```
What are the latest changes in <your-repo-name>?
```
<br><br>

7. Watch the output — you'll see a note like **"Ran <tool_name> - GitHub MCP Server"** early in the response. This confirms Copilot is using the MCP tools to access GitHub data directly rather than guessing from its training data.


![Example usage](./images/ct162.png?raw=true "Example usage")

<br><br>

8. Now let's combine MCP-sourced GitHub context with our local code. Enter the following prompt:

```
Is the first issue in the GitHub repository already solved by my local code?
```

If you need to **Allow** or **Approve** operations from the Agent, go ahead. Copilot will use the MCP server to read the issue, then analyze your local files to determine if the issue is resolved.

![Example usage](./images/ct163.png?raw=true "Example usage")

<br><br>

9. If you click the **Extensions** icon on the left sidebar, you'll see a category for **MCP SERVERS - INSTALLED** showing the GitHub MCP Server. Clicking the globe icon will show you a page listing additional MCP servers you can browse and add.


![Extensions and browser](./images/mcp97.png?raw=true "Extensions and browser")

<br><br>

10. If you then click on the globe icon (#2 in the screenshot above), you can get to another page that shows a list of available MCP servers to use.

![MCP Servers](./images/mcp98.png?raw=true "MCP Servers")

11. **Key takeaways:**
    - MCP servers give Agent mode access to external tools and data sources
    - The GitHub MCP Server is just one example — servers exist for Docker, databases, and many other tools
    - MCP tools only work in **Agent** mode (not Ask or Edit)
    - MCP configuration lives in `.vscode/mcp.json` and can be shared with your team via the repo

<p align="center">
**[END OF LAB]**
</p>
</br></br></br>

**Lab 8 for free Copilot plan - Copilot in GitHub.com**

**Purpose: In this lab, we'll use the integrated Copilot features available on GitHub.com.**

1. Switch to GitHub in your browser and go to https://github.com/skillrepos/sec-demo. Make sure you are logged in with your GitHub account that has Copilot access.
<br><br>

2. Fork the repository into your own GitHub space via the **Fork** button at the top right. Make sure to **uncheck** the *Copy the main branch only* box on the next screen. Then click **Create fork**.
<br><br>

3. After the fork is complete, click on the Copilot button (or down arrow next to it) at the top right and select **Assistive** from the menu. The Chat dialog will open with a text input and some suggested questions. Click on **"Tell me about this repository"** (or type it in). Copilot will provide an overview of the project.
<br><br>

4. In the file list, click on **main.go** to open it. Start a new conversation in the Copilot Chat (click the **"+"** sign) and click **"Summarize this file for me"** or type that question.
<br><br>

5. In this repo, the *dev* branch has security fixes for the *main* branch. Let's create a pull request. In the Chat input, ask Copilot:

```
Generate a url that I can use to create a pull request to merge the dev branch into the main branch
```

Click the generated link to start the pull request.
<br><br>

6. On the pull request creation screen, update the title if you want. Then click the **Copilot actions** button below the description field and select **Summary**. Copilot will generate a detailed PR description in markdown.

(**NOTE:** If you are on the free plan and don't see the Copilot icon in the pull request area, you can skip this step and just create the pull request with a manual description.)
<br><br>

7. Click **Preview** to see the formatted summary, then click **Create pull request**.
<br><br>

8. In the PR view, click the **Files changed** tab to see the diffs. On the right side of the screen, look for a small floating Copilot icon with a dropdown arrow. Click it and select **Explain** to get an explanation of the changes in that section.
<br><br>

9. Let's add more context. Click **Ask Copilot** at the top of the screen. In the file selector dialog, select **models/models.go**, check the box, and click **Save** or **Start Chat**. You'll see the file attached as context.
<br><br>

10. In the Chat input, ask:

```
Why do these changes need to be made?
```

Copilot will use the attached file as context and explain the security rationale. Notice the reference indicator (e.g., "1 reference - models.go") confirming it used the context.
<br><br>

<p align="center">
**[END OF LAB]**
</p>
</br></br></br>

**Lab 8 for paid Copilot plans - Copilot in GitHub.com**

**Purpose: In this lab, we'll use the integrated Copilot features on GitHub.com, including the Copilot coding agent to create a pull request.**

1. Switch to GitHub in your browser and go to https://github.com/skillrepos/sec-demo. Make sure you are logged in with your GitHub account that has a paid Copilot plan.
<br><br>

2. Fork the repository into your own GitHub space via the **Fork** button at the top right. Make sure to **uncheck** the *Copy the main branch only* box on the next screen. Then click **Create fork**.
<br><br>

3. After the fork is complete, click on the Copilot button at the top right. In the Chat dialog, enter `Tell me about this repository.` to get an overview. Then click on **main.go** in the file list and ask Copilot: `Explain how this file works and what its purpose is.` Copilot will provide a detailed breakdown of the file.
<br><br>

4. Go back to the main page for the repo. This repo has a *dev* branch with security fixes for the *main* branch. Let's use the **coding agent** to create a pull request. Click on the **"Open agents panel"** (next to the Copilot icon at the top of the screen). In the dialog, enter:

```
Merge dev branch into main branch
```

The coding agent will start a background task to create the pull request. (This may take 1-2 minutes — the agent runs in a GitHub Actions environment in the background.)
<br><br>

5. When the PR is ready, navigate to the **Pull requests** tab at the top of the repo. Click into the PR to review it. Notice the auto-generated description. If you see a **"Ready for review"** indicator, click it to view any comments the coding agent added.
<br><br>

6. Click the **Files changed** tab to review the diffs. Look for the small floating Copilot icon (with a dropdown arrow) on the right side of a change section. Click it and select **Explain** to get an AI-powered explanation of the changes.
<br><br>

7. Click **Ask Copilot** at the top of the screen. In the file selector dialog, select **models/models.go**, check the box, and click **Save** or **Start Chat**. Then ask:

```
Why do these changes need to be made?
```

Copilot will use the file as context and explain the security reasoning behind the changes.
<br><br>

8. **Key takeaways:**
    - The **coding agent** (paid plans) can autonomously create PRs from natural language descriptions
    - It runs in a secure GitHub Actions environment in the background
    - Important: the person who asked Copilot to create the PR cannot approve it — this ensures independent code review
    - Copilot on GitHub.com provides code explanations, PR summaries, and contextual chat across any repository

<p align="center">
**[END OF LAB]**
</p>
</br></br></br>

<p align="center">
**THANKS!**
</p>
</br></br></br>

# Appendix 1
## Alternate ways to "fork" repo if not allowed to use actual *Fork* button.

**Option 1 - Using Import**

1. Sign into GitHub if not already signed in.

2. Go to [**https://github.com/new/import**](https://github.com/new/import)

3. On that page, fill out the form as follows:

In "Your source repository details", in the "The URL for your source repository *" field, enter

```
https://github.com/skillrepos/sec-demo
```

Under "Your new repository details", make sure your userid shows up in the "Owner *" field and enter

```
sec-demo
```

in the "Repository name *" field.

The visibility field should be set to "Public".

4. If you haven't already, click on the green "Begin import" button.

5. After this, you should see the import processing...

6. This will take several minutes to run. When done, you should see a "complete" message and your new repo will be available. (There is a link in the complete message to click on to directly access it.)


**Option 2 - Using clone and push**

1. Sign into GitHub if not already signed in.

2. If you don't already have one, create a GitHub token or SSH key. If you are familiar with SSH keys, you can add your public key at [**https://github.com/settings/keys**](https://github.com/settings/keys). Otherwise, you can create a "classic" token by following the instructions at [**https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-personal-access-token-classic**](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-personal-access-token-classic). If you use a GitHub token, make sure to save a copy of it to use in the push step.

3. Clone down the repository:

```
git clone https://github.com/skillrepos/sec-demo (if using token)
```

or

```
git clone git@github.com:skillrepos/sec-demo (if using ssh)
```

4. Create a new repository in your GitHub space named *sec-demo*. Go to [**https://github.com/new**](https://github.com/new). Fill in the "repo name" field with "sec-demo" and then click on the "Create repository" button.

5. On the page that comes up after that, select the appropriate protocol (https or ssh) and then follow the instructions for "...or push an existing repository from the command line" to push your content back to the GitHub repository. If you're using https you will be prompted for a password at push time. Just paste in the classic token.
