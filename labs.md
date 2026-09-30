# Hands-on GitHub Copilot
## Practical Tips and Best Practices
## Session labs (codespace version)

## Revision 4.2 - 09/30/26

**Versions of dialogs, buttons, etc. shown in screenshots may differ from current version of Copilot**

**Follow the startup instructions in the README.md file IF NOT ALREADY DONE!**

**NOTES:**
> 1. We will be working in the public GitHub.com, not a private instance.
> 2. Chrome may work better than Firefox for some tasks.
> 3. Substitute the appropriate key combinations for your operating system where needed.
> 4. The default environment will be a GitHub Codespace (with Copilot already installed). If you prefer to use your own IDE, you are responsible for installing Copilot in it. Some things in the lab may be different if you use your own environment.
> 5. To copy and paste in the codespace, you may need to use keyboard commands - CTRL-C and CTRL-V.
> 6. VPNs may interfere with the ability to run the codespace. It is recommended to not use a VPN if you run into problems.
> 7. On the free Copilot plan, some functionality used in these labs is limited or unavailable — **model selection** (Free uses *Auto* only), **pull request summaries** on GitHub.com, and a small monthly allowance of AI credits that **Plan mode** and **Review** can use up quickly.
> 8. Copilot's responses are non-deterministic — your results may differ slightly from what is shown in screenshots or described in steps. This is expected.
> 9. When the codespace first starts, Copilot may still be signing in. Until it finishes, the Chat panel's mode selector may show only **Agent**. If *Ask* and *Plan* are missing, click the *Sign in* indicator in the lower-right status bar (see README step 4), wait a few seconds, then re-open the selector.
> 10. Unless otherwise noted, pop-up dialogs, when running applications, can be ignored and dismissed.
> 11. Newer VS Code builds add a **Session Target** control (Local / Copilot / Cloud / Claude, plus others from installed extensions) below the Chat input (clicking it opens a *Continue In* menu). These labs use **Local**. If you see that control set to anything else, switch it to **Local** first — the *Ask/Agent/Plan* modes and the *Keep/Undo* review buttons used in the labs are Local-session features.
>
> ![Session Target menu](./images/cpho113.png?raw=true "Session Target menu")

</br></br></br>

## Labs

- [Lab 1 - Code Completions and Next Edit Suggestions](#lab-1---code-completions-and-next-edit-suggestions)
- [Lab 2 - Understanding Chat Modes: Ask, Agent, and Plan](#lab-2---understanding-chat-modes-ask-agent-and-plan)
- [Lab 3 - Using Copilot to Understand and Onboard to a Codebase](#lab-3---using-copilot-to-understand-and-onboard-to-a-codebase)
- [Lab 4 - Generating and Improving Tests with Copilot](#lab-4---generating-and-improving-tests-with-copilot)
- [Lab 5 - Agent Mode: Implementing a Feature Autonomously](#lab-5---agent-mode-implementing-a-feature-autonomously)
- [Lab 6 - Custom Instructions and Model Selection](#lab-6---custom-instructions-and-model-selection)
- [Lab 7 - Extending Copilot with MCP Servers](#lab-7---extending-copilot-with-mcp-servers)
- [Lab 8 - Copilot in GitHub.com](#lab-8---copilot-in-githubcom)

</br></br></br>

## Lab 1 - Code Completions and Next Edit Suggestions

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
![Copilot generated function](./images/cpho107.png?raw=true "Copilot generated function")
<br><br>

3. Hit *Enter* and notice the grayed-out code that Copilot suggests. This is likely more generic than we want, but hit *Tab* to accept the suggestion. Continue hitting *Tab* to accept additional lines until you get a complete function or Copilot stops suggesting. (Give Copilot a second to provide suggestions before moving on.)

![Copilot generated function](./images/cpho07.png?raw=true "Copilot generated function")

<br><br>

4. This prompt wasn't specific enough for Copilot to know what we wanted. **Select all the code and delete it** so we can try a more specific prompt.
<br><br>

5. Now type a more specific comment at the top:

```
// function to parse a URL and return its protocol, host, path, and query parameters as an object
```
<br><br>

6. Hit *Enter*. You should see Copilot suggest a much more relevant function — likely named something like `parseURL`. Hit *Tab* to accept each line and  continue until the function is complete. Notice how the more descriptive prompt led to more useful code.

![Copilot generated function](./images/cpho08.png?raw=true "Copilot generated function")

<br><br>

7. Next, let's see how Copilot presents multiple alternatives. Move to a new line of the file and type the line of code below. A grayed-out suggestion appears as soon as you type the final `{` (don't press *Enter* — that dismisses it). Hover over the suggestion. A small toolbar appears with **Accept**, **Accept Word**, and **"<"** / **">"** arrows with a count such as *1/3* to cycle through alternatives (*1/1* means Copilot offered only one). Select the one you prefer with *Tab*.

```
const formatData = (input) => {
```

![Copilot generated alternatives](./images/cpho80.png?raw=true "Copilot generated alternatives")

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

After making this change, look at the `farewell` function below. You should see Copilot's NES suggest the same template literal update there — shown as an inline diff (old text in red, new text in green), with an arrow in the gutter marking where the suggestion is.

![NES 1](./images/cpho10.png?raw=true "NES 1")

<br><br>

10. Press *Tab* to jump to the NES suggestion in `farewell`, then *Tab* again to accept it. Now look at the `welcome` function — NES should suggest the same pattern there too, and this time one *Tab* accepts it. You've updated three functions by typing one change. This is the power of Next Edit Suggestions.

![NES 2](./images/cpho11.png?raw=true "NES 2")

<br><br>

 <p align="center">
**[END OF LAB]**
</p>
</br></br></br>

## Lab 2 - Understanding Chat Modes: Ask, Agent, and Plan

**Purpose: In this lab, we'll explore the three Copilot Chat modes and learn when to use each one.**

1. Open the file *prime.py*. You can click on [**prime.py**](./prime.py) **in the codespace** or open it via the terminal:

```
code prime.py
```
<br><br>

2. If not already open, open the Copilot Chat panel by clicking the Chat icon in the top bar (or side bar). Make sure the mode is set to **"Ask"** — if not, click the mode selector dropdown at the bottom of the Chat input area and select **"Ask"**. (The **Session Target** control below the input should say **Local** — see note 11.)

![Opening chat](./images/cpho12.png?raw=true "Opening chat")


![Ask mode](./images/cpho13.png?raw=true "Ask mode")

<br><br>

3. **Highlight all the code** in *prime.py*. In the Chat input, type the following and hit *Enter*:

```
simplify this code for clearer logic
```

Copilot responds with an explanation and a new code block in the Chat panel. This is **Ask mode** — it answers in the chat and doesn't change your files.

![simplify logic](./images/cpho14.png?raw=true "Simplify logic")

<br><br>

4. Hover over the code block in the Chat output and, in the toolbar that appears, click **"Insert at Cursor"** to replace the highlighted code with the simplified version. (In Ask mode, *you* decide what gets applied.)

![Insert mode](./images/cpho15.png?raw=true "Insert mode")

<br><br>

5. Now let's try **Agent mode** for a direct edit. Click the mode selector dropdown and switch to **"Agent"**. 

![Agent mode](./images/cpho16.png?raw=true "Agent mode")

<br><br>

6. In the Chat input area, type the following and submit:

```
Add detailed docstrings to each function in prime.py explaining parameters, return values, and examples
```

Agent mode edits the file directly and shows the changes as inline diffs. Click **"Keep"** to apply them or **"Undo"** to reject.

![Agent mode](./images/cpho17.png?raw=true "Agent mode")

<br><br>

7. Now let's introduce an error to see how Copilot fixes it. Switch back to **"Ask"** mode. In *prime.py*, break the code by changing a variable name — for example, change one instance of `n` to `x`. (NES may immediately offer to change it back — press *Escape* to dismiss that suggestion.)
<br><br>

8. **Start a new chat** with the **"+"** icon in the upper right of the Chat panel (otherwise `Cmd/Ctrl+I` attaches your selection to the open chat instead of opening inline chat). Then highlight the broken code and press `Cmd/Ctrl+I`. Once the editor shows the red squiggle, the inline chat is pre-filled with "Fix the attached problem" — hit *Enter*. (If it isn't pre-filled, type `fix`.)

![Fix with Copilot](./images/cpho104.png?raw=true "Fix with Copilot")

(Alternative: right-click the flagged code and select *Fix* — the item only appears once the error is flagged.)

![Fix with Copilot](./images/cpho84.png?raw=true "Fix with Copilot")

9. Copilot proposes a fix inline. Apply it with the *Keep* button. 

![Keep fix](./images/cpho19.png?raw=true "Keep fix")

<br><br>


> $${\color{red}NOTE}$$ **Because of Copilot's restricted model access, if you're running using the Free plan, you may not be able to do the remaining steps or have them complete in a reasonable time.**


10. Finally, let's try *Plan* mode, which produces an implementation plan before any code is written. Start a new chat with the **"+"** icon, switch to **"Plan"** in the mode selector, and enter:

```
Add input validation and error handling to the functions in prime.py. Do not create or add any tests.
```

![Switch to plan mode](./images/cpho28.png?raw=true "Switch to plan mode")

<br><br>

11. Plan mode may ask clarifying questions. Answer them; use the **"<"** and **">"** controls to move between questions, then click **"Submit"** (picking an answer on the last question submits on its own). A second, shorter round may follow.

![Answering questions](./images/cpho31.png?raw=true "Answering questions")

<br><br>

12. Copilot presents the plan. Under *Proceed from Plan*, click **"Start Implementation"**. If Agent mode asks to run commands, choose **"Allow"**. When it finishes, review the diffs and click **"Keep"**.

![Ready to implement](./images/cpho33.png?raw=true "Ready to implement")

![Implementing](./images/cpho34.png?raw=true "Implementing")

<br><br>

**Quick reference — when to use each mode:**
- **Ask**: Q&A and exploring ideas; you control what gets applied.
- **Plan**: larger tasks — clarifying questions and a step-by-step plan first, then hand off to Agent.
- **Agent**: autonomous, multi-step work — edits files, runs commands, iterates (more in Lab 5).

<p align="center">
**[END OF LAB]**
</p>
</br></br></br>

## Lab 3 - Using Copilot to Understand and Onboard to a Codebase

**Purpose: In this lab, we'll use Copilot to quickly get up to speed on a project.**

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

![Onboarding guide](./images/cpho108.png?raw=true "Onboarding guide")

<br><br>

4. We can also ask Copilot more tightly scoped questions. Staying in **Ask** mode, **start a new chat** with the **"+"** icon (a new chat keeps the current mode). Then ask it how to run the project:

```
Explain how I can run and see the functionality in the app directory.
```

<br><br>

5. In the Chat output, you'll see commands to start the server and run a demo script. (Notice if these are meant to be started from the root of the project or the app directory. If they look like `python app/app.py` then, in the terminal, cd to the root of the project.) You can type these commands into the terminal to see the functionality. For example, there's a step in the chat output that says to run `python app/app.py` to start the Flask app. 

![Insert into terminal](./images/cpho110.png?raw=true "Insert into terminal")

<br><br>

6. Enter in the command (adjusted for the path) in the terminal and hit `Enter` to start the server. (If the answer didn't include a start command, run `python app/app.py` from the root of the project.)

![Running the server](./images/cpho40.png?raw=true "Running the server")
   
<br><br>

7. Because the running server is using this terminal, open a second terminal by clicking the dropdown to the right of the "+" in the *TERMINAL* area, then select **"Split Terminal"** from the pop-up menu.

![Splitting the terminal](./images/cpho41.png?raw=true "Splitting the terminal")

<br><br>

8. Back in the Chat output, you can look for commands to demo functionality of the app, probably `curl` commands. If they are in separate white code blocks, you can hover over them and select the icon that looks like a terminal from the pop-up menu to insert into the terminal — this pastes the command; press *Enter* in the terminal to run it. (See first screenshot below.) Otherwise, you can highlight and copy and paste the command into the second terminal and run it to see the functionality. (Note that you may need to use the keyboard copy and paste if the mouse copy and paste doesn't work correctly. If a POST or PATCH command returns `415 UNSUPPORTED MEDIA TYPE`, it is missing the `-H "Content-Type: application/json"` header — add it and rerun.) 

![Inserting curl command into terminal](./images/cpho111.png?raw=true "Inserting curl command into terminal")

![Running curl command](./images/cpho86.png?raw=true "Running curl command")

<br><br>

9. Now let's ask Copilot about a specific file. Open *app/app.py* in the editor, highlight all the code, and ask:

```
Explain the main routes and error handling in this file.
```

![Route and error handling explanation](./images/cpho87.png?raw=true "Route and error handling explanation")

Copilot will break down the endpoints, their purposes, and how errors are handled — giving you a deep understanding of the file without reading every line yourself.
<br><br>

<p align="center">
**[END OF LAB]**
</p>
</br></br></br>

## Lab 4 - Generating and Improving Tests with Copilot

**Purpose: In this lab, we'll use Copilot to generate tests, suggest edge cases, and review implementation code.**

1. In the editor, switch to the *prime.py* file we used in Lab 2.
<br><br>

2. **Highlight the `is_prime()` function.** Open a new chat by clicking the **"+"** icon in the upper right of the Chat panel.
<br><br>

3. Let's see the "quick" approach to generating tests. With the code highlighted, ask Copilot:

```
How do I completely test this code?
```

You should see text explaining how to test along with multiple code blocks and command blocks in the Chat output.

![Proposed testing plan](./images/cpho99.png?raw=true "Proposed testing plan")


<br><br>

4. Hover over the main generated code block to get the popup menu in the upper right corner of the code block. In that popup, click **"..."** and then **"Insert into New File"** to create a new file with the test code. (If the answer suggests a *tests/* folder, ignore that — we save the file in the project root.)

![Insert plan into new file](./images/cpho45.png?raw=true "Insert plan into new file")

<br><br>

5. Save the file as **test_prime.py** (File > Save As, or Ctrl+S / Cmd+S and enter the filename).

![Save file](./images/cpho46.png?raw=true "Save file")

<br><br>

6. We can also ask Copilot for additional edge cases. Select the code in *test_prime.py* and in the Chat, ask:

```
What other conditions should be tested? Suggest a single set of code to add the conditions.
```
<br><br>

7. Copilot will suggest additional test conditions (negative numbers, boundary values, large primes, etc.) and generate a code block. Hover over that block and click the **"Apply in Editor"** icon (leftmost control). If prompted to select a target, choose **"Active editor 'test_prime.py'"**.

![Apply in editor](./images/cpho47.png?raw=true "Apply in editor")

<br><br>

8. You should see the additional test cases added to the file. Review the changes and click **"Keep"** to persist them.

![Inspecting changes](./images/cpho48.png?raw=true "Inspecting changes  ")
<br><br>

> $${\color{red}NOTE}$$ **On the Free plan, code review is limited and the free model may not be supported. If you get an error 400 or similar, you can skip the next two steps.**

9. Now let's have Copilot **review** our implementation code. Go back to the *prime.py* file and select all the code. Right-click and select **Review** from the context menu. (Depending on your version, this may be under *Generate Code > Review* or accessible via a keyboard shortcut.)

![Initiating review](./images/cpho88.png?raw=true "Initiating review")

<br><br>

10. After a few moments, Copilot will add inline review comments identifying potential issues, improvements, or suggestions. The **Comments** panel at the bottom (to the right of *Ports*) opens automatically and lists all of them. Click any row to navigate to that suggestion. For each comment, you can click **"Apply and Go to Next"** to accept or **"Discard and Go to Next"** to skip. (If there's only one comment, it will have **"Apply"** and **"Discard"**.)

![Review comment](./images/cpho50.png?raw=true "Review comment")

<br><br>

<p align="center">
**[END OF LAB]**
</p>
</br></br></br>

## Lab 5 - Agent Mode: Implementing a Feature Autonomously

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

3. We have a GitHub Issue describing this feature request. Take a look at it: [GitHub Issue #8](https://github.com/skillrepos/copilot-hands-on/issues/8) (The issue body says "Lab 2" — that's a leftover from an earlier revision of this course. It is the issue for **this** lab.)


![Endpoint issue](./images/cpho52.png?raw=true "Endpoint issue")

<br><br>

4. Let's have **Agent mode** implement this feature. Open a new chat (click the **"+"** icon) and switch to **"Agent"** mode using the mode selector dropdown at the bottom of the Chat input. Also open *app/app.py* in the editor to set it as active context.
<br><br>

5. Enter the following prompt in Agent mode:

```
Referencing the issue at https://github.com/skillrepos/copilot-hands-on/issues/8, implement the requested search feature in our Python #codebase in /app. Do not create or add any tests.
```

![Prompt to resolve issue](./images/cpho53.png?raw=true "Prompt to resolve issue")

<br><br>

6. You may be asked to allow Copilot to run additional commands (expect up to three prompts; one may show a red risk note). If so, select `Allow`.
   
7. Watch Agent mode work. Unlike Ask mode, the Agent will **autonomously**: analyze the codebase, reason about what changes are needed, edit one or more files, and possibly run terminal commands to verify its work. You may see it update *app.py* and potentially *datastore.py*. If Agent requests permission to run a terminal command, click **"Allow"** to let it proceed.


![Implementing feature](./images/cpho54.png?raw=true "Implementing feature")
   
<br><br>

8. When the Agent finishes, you'll see a summary of files changed above the Chat input (e.g., "2 files changed"). Click the diff icon (a page with **±**) on the right to view the diffs.

![Seeing multiple diffs](./images/cpho55.png?raw=true "Seeing multiple diffs")

<br><br>

9. Review the diffs for each changed file. When satisfied, you can click the **"Keep"** button in the box above the chat input area to apply all the changes. (If you only wanted certain changes, you could "keep/undo" each change in each file.) Close any diff comparison tabs.

![Seeing multiple diffs](./images/cpho112.png?raw=true "Seeing multiple diffs")

<br><br>

10. Now test the search feature. Check the server terminal — if you see a "Detected change... reloading" message, the app has auto-reloaded. If not, kill the server (Ctrl+C) and restart with `python app/app.py`. Then run the search command again:

```
curl -i \
  -H "Authorization: Bearer secret-token" \
  http://127.0.0.1:5000/items/search?q=milk
```

This time you should get a **200** response instead of 404, confirming the search endpoint is now implemented. (The body may be an empty list, `[]` — the reload cleared the app's in-memory items.)

![Seeing multiple diffs](./images/cpho56.png?raw=true "Seeing multiple diffs")

<br><br>

11. (Optional) If you have extra time, ask the Agent to create and run tests for the new feature. Be prepared to click **"Allow"** for any terminal commands the Agent needs to run.

```
Create and run tests for the new search feature.
```
<br><br>

<p align="center">
**[END OF LAB]**
</p>
</br></br></br>

## Lab 6 - Custom Instructions and Model Selection

**Purpose: In this lab, we'll configure Copilot with project-specific instructions and explore how to select different AI models.**

1. Custom instructions tell Copilot about your team's coding standards and conventions, from a file it reads automatically. Let's create one. (In the browser-based codespace, `.md` files open in read-only *preview* mode, so we create the file as `.txt`, edit it, then rename it.) In the terminal, run:

```
mkdir -p .github
code .github/copilot-instructions.txt
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

![Custom instructions](./images/cpho89.png?raw=true "Custom instructions")

<br><br>

3. Rename the file to the name Copilot looks for, then close the old *copilot-instructions.txt* editor tab (now shown struck through). (Clicking the renamed file in the Explorer opens read-only preview — that's expected; `cat` it in the terminal to check the contents.)

```
mv .github/copilot-instructions.txt .github/copilot-instructions.md
```

**Heads-up:** from now on these instructions apply to **every** Chat interaction in this codespace. If you repeat any of Labs 1-5 afterward, the generated code will carry the "Generated with Copilot" comments, extra error handling, and so on. Delete *.github/copilot-instructions.md* to get the original behavior back.

4. Now let's see the instructions in action. Open a new file:

```
code utils.py
```
<br><br>

5. Start a new chat with the **"+"** icon, switch the mode to **Ask** (the chat is still in Agent mode from Lab 5), and enter the following prompt:

```
Write a function that reads a CSV file and returns a list of dictionaries where each dictionary represents a row.
```
<br><br>

6. Examine the generated code. You should spot your custom instructions at work: a "Generated with Copilot" comment at the top, a comment above the function, descriptive variable names, error handling, and an example usage comment at the end. 

![Generated code](./images/cpho59.png?raw=true "Generated code")

<br><br>

7. Insert the generated code into *utils.py* and save it. Now switch to **Agent** mode and ask:

```
Add a function to write a list of dictionaries to a CSV file.
```

Click **Allow** if Agent asks to run a command. Again, verify that the output follows your custom instructions.

![Generated code](./images/cpho60.png?raw=true "Generated code")

<br><br>

8. If Agent already edited *utils.py*, click **Keep** on the change and save. If the code isn't in your file, use `Apply in Editor` on the code block, review the proposed changes, and `Keep` them.
   

> $${\color{red}NOTE}$$ **Because of Copilot's restricted model access, if you're running using the Free plan, you may not be able to do the remaining steps or have them complete in a reasonable time.**

9. The footer under each response (hover over it) names the model *Auto* picked and the AI credits the response used. If your plan allows, click **Auto** at the bottom of the Chat input to open the model picker, expand **Other Models**, and select a different model (for example, **Claude Haiku 4.5** if *Auto* picked **GPT-6 Luna**). Hover over a model to see its cost in credits per 1M tokens. Switch back to **Ask** mode and enter:

```
Write a function that takes a JSON file path and returns a sorted list of all unique keys found across all objects in the file.
```

![Model picker](./images/cpho114.png?raw=true "Model picker")

<br><br>

10. Compare the output with the earlier model's style, verbosity, and approach, and compare the credits shown in each response's footer. Both follow your custom instructions — those apply regardless of model. Lightweight models answer faster and use fewer AI credits; larger models handle complex, multi-file reasoning better.

![Generated code with different model](./images/cpho62.png?raw=true "Generated code with different model")

<br><br>

11. Switch the model back to **Auto**, which picks a model per request and gets a 10% AI-credit discount on paid plans. (The picker warns that switching models mid-session resets the prompt cache and may cost more — in real work, choose the model when you start a chat.)

**Key takeaways:**
- `.github/copilot-instructions.md` applies to all Chat interactions and is shared via your repo (great for teams)
- Path-specific instructions go in `.github/instructions/*.instructions.md` (with an `applyTo` glob); `AGENTS.md` at the repo root is the cross-tool alternative
- Model selection is available on paid plans (Free uses Auto only) — models differ in cost per token, so the pick is also a cost decision


<p align="center">
**[END OF LAB]**
</p>
</br></br></br>

## Lab 7 - Extending Copilot with MCP Servers

**Purpose: In this lab, we'll set up and use the GitHub MCP Server to give Copilot access to external tools.**

1. MCP (Model Context Protocol) servers extend Copilot's Agent mode with external tools. GitHub hosts a remote MCP server that signs you in with your GitHub account, so no token is needed. We already have a config file for it. Run these commands in the terminal:

```
cd /workspaces/copilot-hands-on
mkdir -p .vscode
cp extra/mcp_github_settings.json .vscode/mcp.json
code .vscode/mcp.json
```

The file declares one server: its `type` (`http`) and its `url` (`https://api.githubcopilot.com/mcp/`). That is all VS Code needs to connect.
<br><br>

2. In the *mcp.json* file, click the small **"Start"** link that appears above the server name (it can take a few seconds to appear). VS Code asks whether the server may authenticate to GitHub — click **"Allow"**. A browser tab opens for the GitHub sign-in; approve it if asked and return to the codespace.

![Starting the server](./images/mcp23a.png?raw=true "Starting the server")

![Allow GitHub authentication](./images/cpho115.png?raw=true "Allow GitHub authentication")

If that tab shows *Unauthorized: No valid session for this codespace* instead, close it and follow *Appendix 3* to finish signing in.

After a moment, the text above the server name should change to **"Running | Stop | Restart | ## tools | More..."**.

![Starting the server](./images/mcp24.png?raw=true "Starting the server")

<br><br>

3. To see the available tools, make sure you're in **Agent** mode in the Chat panel. Click the small **Configure Tools** icon (sliders) in the Chat input area. In the list that opens, expand the **GitHub MCP Server** group with its arrow. You'll see all the tools Copilot can now use — things like searching issues, reading file contents from repos, listing PRs, and more. Click **OK** to close the list.

![Viewing available tools](./images/mcp25.png?raw=true "Viewing available tools")

<br><br>

4. Let's use these tools. In Agent mode, enter a prompt like the following one:

```
Give me a list of the open issues for the current GitHub repo
```
<br><br>

5. Watch the output — you'll see a note like **"Ran <tool_name> - GitHub MCP Server"** early in the response. (Click **Allow** if asked to run a `git` command. When the response finishes, these notes collapse under *Completed N steps* — click it to expand.) This confirms Copilot is using the MCP tools to access GitHub data directly rather than guessing from its training data.


![Example usage](./images/ct162.png?raw=true "Example usage")

<br><br>

6. Now let's combine MCP-sourced GitHub context with our local code. Enter the following prompt:

```
Is issue #8 in the GitHub repository already solved by my local code?
```

(Paste the prompt rather than typing it: typing `#` opens a context picker — press *Escape* if it appears.) If you need to **Allow** or **Approve** operations from the Agent, go ahead. Copilot will use the MCP server to read the issue, then analyze your local files to determine if the issue is resolved.

![Checking if issue is resolved](./images/cpho64.png?raw=true "Checking if issue is resolved")

<br><br>

7. If you click the **Extensions** icon on the left sidebar, you'll see a category for **MCP SERVERS - INSTALLED** showing the GitHub MCP Server. Hover over that heading and click the search (magnifier) icon that appears; the view that opens has a button you can click to `Enable MCP Servers Marketplace`.

![Extensions and browser](./images/cpho92.png?raw=true "Extensions and browser")

![Extensions and browser](./images/cpho90.png?raw=true "Extensions and browser")

<br><br>

8. Click that button and confirm with **Enable**. You now get a list of available MCP servers you can install. 

![MCP Servers](./images/cpho91.png?raw=true "MCP Servers")

**Key takeaways:**
- MCP servers give Agent mode access to external tools and data sources
- The GitHub MCP Server is one example — servers exist for Docker, databases, and many other tools
- MCP tools are used in **Agent** mode (not Ask)
- MCP configuration lives in `.vscode/mcp.json` and can be shared with your team via the repo; the workspace must be trusted for those servers to start

**Heads-up:** the server config, its GitHub sign-in, and the running server all persist in this codespace after this lab ends, so Agent mode keeps its GitHub tool access in anything you do afterward. Use **Stop** in *mcp.json* (or delete the file) to turn it back off.

<p align="center">
**[END OF LAB]**
</p>
</br></br></br>

## Lab 8 - Copilot in GitHub.com

**Purpose: In this lab, we'll use the integrated Copilot features available on GitHub.com.**

1. Switch to GitHub in your browser and go to https://github.com/skillrepos/sec-demo. Make sure you are logged in with your GitHub account that has Copilot access.
<br><br>

2. Fork the repository into your own GitHub space via the **Fork** button at the top right. On the next screen, if *Owner* shows *Choose an owner*, pick your personal account. Make sure to **uncheck** the *Copy the main branch only* box. Then click **Create fork**.

![Fork](./images/cpho73.png?raw=true "Fork")

**Re-run note:** this lab changes your GitHub account, so a fresh codespace won't reset it. If you've done it before, the fork screen lists your account as *fork already exists*, and Copilot's link in step 5 opens your earlier pull request instead of the creation form. To run it clean, delete your old *sec-demo* fork (Settings > Danger Zone > Delete this repository) first, or close the earlier PR and use a different branch.
<br><br>

3. After the fork is complete, click on the Copilot button at the top right. The Chat dialog will open with a text input and some suggested questions. Click on the suggested prompt **"Give me a high level overview of this repo"** (suggestions vary; if you don't see it, type the question in). Copilot will provide an overview of the project.

![Chat with Copilot](./images/cpho93.png?raw=true "Chat with Copilot")

![Prompt](./images/cpho94.png?raw=true "Prompt")

![Response](./images/cpho95.png?raw=true "Response")

<br><br>

4. Go back to the repo. In the file list, click on **main.go** to open it. In the toolbar above the file contents, click the **Ask Copilot about this file** icon (the Copilot face, two icons left of *Raw*). If the Copilot panel shows your earlier conversation, click its **New chat** (pencil) icon. Then click the suggested prompt **"Summarize this file for me."**

![Prompt](./images/cpho96.png?raw=true "Prompt")

![Response](./images/cpho97.png?raw=true "Response")

<br><br>

5. Go back to the main repo (github.com/*your-github-userid*/sec-demo). In this repo, the *dev* branch has security fixes for the *main* branch. Let's create a pull request. Click on the Copilot icon at the top. In the Chat input, ask Copilot:

```
Generate a clickable link that I can use to create a pull request to merge the dev branch into the main branch
```

Click the generated link to start the pull request.

![Clickable link](./images/cpho74.png?raw=true "Clickable link")

<br><br>

6. If the next screen shows a **Create pull request** button, click it to open the pull request form. On the form, you can have Copilot generate the title with the Copilot icon in the title field (if the title doesn't change after a few seconds, type one). Then click the **Copilot actions** icon in the toolbar at the top of the description field and select **Summary**. Copilot will generate a detailed PR description in markdown.

(**NOTE:** Pull request summaries are not included in the Free plan. If you don't see the Copilot icon in the description toolbar, skip this step and create the pull request with a manual description.)

![Generate title](./images/cpho98.png?raw=true "Generate title")

![Generate summary](./images/cpho75.png?raw=true "Generate summary")

<br><br>

7. Click **Preview** to see the formatted summary, then click **Create pull request**.

![Create PR](./images/cpho76.png?raw=true "Create PR")

<br><br>

8. In the PR view, click the **Files changed** tab to see the diffs. Find a line that looks interesting. To the right of that line, click the small dropdown icon, select **Copilot** from the menu, then **Explain** to get an explanation of the change on that line. (**Attach to current thread** in the same submenu adds the change to the Copilot Chat panel, so you can ask your own questions about it. To cover several lines, click the first line number, then shift-click the last, before opening the menu.)

![Explain line](./images/cpho77.png?raw=true "Explain line")

![Explain line](./images/cpho78.png?raw=true "Explain line")

<br><br>

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

5. On the page that comes up after that, select the appropriate protocol (https or ssh) and then follow the instructions for "...or push an existing repository from the command line" to push your content back to the GitHub repository. If you're using https you will be prompted for a password at push time. Paste in the classic token.


</br></br></br>

# Appendix 2
## Resetting the codespace between runs

These labs assume a **fresh codespace, run once, in order**. Starting a new codespace is always the cleanest reset and is what we recommend. If you need to re-run the labs in the codespace you already have — for example, you're an instructor rehearsing the material — the commands below put the workspace back to its original state.

**Labs that break on a re-run**

| Lab | Leaves behind | Effect on a re-run |
|---|---|---|
| 5 | Search feature added to *app/app.py* and *app/datastore.py* | Step 2's curl returns 200 instead of the 404 the step says you'll get — the Agent has nothing left to implement |
| 4 | *test_prime.py* | Copilot reports on the existing suite instead of proposing one |
| 3 | Flask server still running on port 5000 | Restarting it gives `Address already in use` |

**Labs that still work, but behave differently**

| Lab | Leaves behind | Effect on a re-run |
|---|---|---|
| 1 | *index.js* | Step 3's first completion is shaped by your old code. Steps 4 and 8 clear the file anyway, so the lab recovers on its own |
| 2 | *prime.py* rewritten (simplified, docstrings, validation) | "simplify this code" has less to simplify, so the response is thinner. Every step still works — and Lab 4 picks up this same file on purpose |
| 6 | *.github/copilot-instructions.md*, *utils.py*, selected model | Instructions apply to **all** later chats, including re-runs of Labs 1-5, so generated code won't match the earlier screenshots |
| 7 | *.vscode/mcp.json*, the server's GitHub sign-in, running MCP server | Agent mode keeps GitHub tool access in every later lab |
| 8 | A *sec-demo* fork and a pull request **in your GitHub account** | Not fixed by a new codespace — see the re-run note in that lab |

Chat in VS Code also keeps local **memory files** per repository (its built-in memory tool), which is why it can open a step by referring to work from a previous run. Two Command Palette commands (Cmd/Ctrl+Shift+P) manage these:

- **Chat: Show Memory Files** — see what Copilot has recorded about this repo
- **Chat: Clear All Memory Files** — wipe them, so the next run starts with no recollection of the last one

**Reset commands** — run these from a terminal in the codespace:

```
cd /workspaces/copilot-hands-on

# stop the sample app if it's running
pkill -f "python app/app.py"

# restore files the labs modified
git checkout -- prime.py app/

# remove files the labs created
rm -f index.js test_prime.py utils.py app/test_search.py
rm -f .github/copilot-instructions.md .github/copilot-instructions.txt
rm -f .vscode/mcp.json

# confirm the workspace is clean
git status
```

`git status` should report no changes. (If it still lists a test file created by the optional Lab 5 step 11 under a different name, delete that file too.) Then start a new chat with the **"+"** icon in the Chat panel, and run **Chat: Clear All Memory Files** from the Command Palette so Copilot doesn't carry notes from the previous run into this one.

</br></br></br>

# Appendix 3
## Finishing the GitHub MCP Server sign-in (fallback for Lab 7)

Use this only if the GitHub sign-in in Lab 7 step 2 does not complete. Try **Option A** first; use **Option B** if your organization blocks the OAuth app. Either one takes you back to Lab 7 step 3.

**Option A - Device code**

1. In the codespace, click **Cancel** on the *Signing in to github.com...* notification in the lower right.

2. When asked whether to try a different way (device code), click **Yes**.

![Device code sign-in](./images/cpho116.png?raw=true "Device code sign-in")

3. Click **Copy & Continue to Browser**. On the GitHub page, click **Continue**, paste the code, and click **Continue** again.

4. Click **Authorize Visual Studio Code** (GitHub may ask you to confirm with your password or 2FA code). Back in *mcp.json*, the text above the server name changes to **"Running | Stop | Restart | ## tools | More..."** — go to Lab 7 step 3.

**Option B - Personal access token**

1. Create a personal access token (PAT). Click the link below, provide a note, and click the green **"Generate token"** button at the bottom:

Link: [Generate classic personal access token (repo scope)](https://github.com/settings/tokens/new?scopes=repo)

![Getting token](./images/cpho79.png?raw=true "Getting token")

![Getting token](./images/mcp87.png?raw=true "Getting token")

2. On the next screen, **copy the generated token and save it** — you won't be able to see it again! (**Important:** Never commit PATs to a repository. This token is for local use only.)

![Copying token](./images/mcp11.png?raw=true "Copying token")

3. Copy the token-based config instead of the default one, and open it:

```
cd /workspaces/copilot-hands-on
mkdir -p .vscode
cp extra/mcp_github_settings_pat.json .vscode/mcp.json
code .vscode/mcp.json
```

4. Click **"Start"** above the server name. A dialog will prompt you to paste your PAT. Paste it and hit *Enter*. (The token will be masked.) The text should change to **"Running | Stop | Restart | ## tools | More..."** — go to Lab 7 step 3.
