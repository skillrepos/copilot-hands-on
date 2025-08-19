# Hands-on GitHub Copilot
## Practical Tips and Best Practices
## Session labs (codespace version)
## Revision 1.23 - 08/19/25

**Versions of dialogs, buttons, etc. shown in screenshots may differ from current version of Copilot**

**Follow the startup instructions in the README.md file IF NOT ALREADY DONE!**

**NOTES:**
1. We will be working in the public GitHub.com, not a private instance.
2. Chrome may work better than Firefox for some tasks.
3. Substitute the appropriate key combinations for your operating system where needed.
4. The default environment will be a GitHub Codespace (with Copilot already installed). If you prefer to use your own IDE, you are responsible for installing Copilot in it. Some things in the lab may be different if you use your own environment.
5. To copy and paste in the codespace, you may need to use keyboard commands - CTRL-C and CTRL-V.**
6. VPNs may interfere with the ability to run the codespace. It is recommended to not use a VPN if you run into problems.
7. If you use the new free Copilot plan (no signup), some advanced functionality may not be available.
</br></br></br>

**Lab 1 - Learning how to create good prompts for Copilot**

**Purpose: In this lab, we’ll start to learn about Copilot and how it generates code based on the prompts we provide**

1. Create a new file. In the terminal, enter

```
code index.js
```
<br><br>

2. Afterwards this file should be open in a tab in the editor.

![New file](./images/cdd262.png?raw=true "New file")
<br><br>


3. Let's see how Copilot responds to a generic request. Go to that tab and type in a comment that says

```
// function to parse data
```
![Copilot generated function](./images/cdd263.png?raw=true "Copilot generated function")
<br><br>

4. Hit return and notice the code that Copilot suggested. This is likely more generic than we want, but hit tab to select that line. (Note that you should give Copilot a second to provide code suggestions before moving on to the next line.)
<br><br>

5. After hitting tab, Copilot will generate another part of the function. (If not, you may need to hit return.) Hit tab to accept it. Continue until you get a complete function, function skeleton, or Copilot stops generating additional code suggestions. One example of what code may look like is below.

![Copilot generated function](./images/cpho5.png?raw=true "Copilot generated function")
<br><br>

6. This prompt is not specific enough for Copilot to interpret what we want to do.  Highlight the code and delete it, so we can try again.
<br><br>

7. Now type a comment at the top that says

```
// function to parse url
```
<br><br>

8. Hit enter and you will probably see a similar line to

```
function parseURL(url) {
```

or you might see an entire function definition.
<br><br>

9. Just hit Tab to accept it and Enter again. Copilot should continue to respond with another suggestion. *Only if you're not getting responses from Copilot, hit return and type the comment below to nudge Copilot.*

```
// parse url
```
![nudge comment](./images/cdd3.png?raw=true "nudge comment")   
<br><br>
10. Continue to iterate with Copilot suggesting lines and you hitting *Tab* to accept each line and then *Enter* until the function is complete. You may get some blank lines along the way or for some lines you might need to hit Tab twice to accept the code if it is indented more. But just hit return until you get to the end of a function or Copilot stops generating code. (You will be at the end when the indentation is done.  Also Copilot may start to suggest another function in comments like // test...)

<br><br> 
11. Let's do one more pass at getting a specific prompt for Copilot. Delete all the code currently in index.js. This time we will not enter a comment, but will enter a specific function name followed by an open left parenthesis. Type the following in the empty file. (There are no parentheses after the *splitURLandReturnComponents* text.)  Do not hit tab or return yet.

```
function splitURLandReturn(
```
<br><br>

12.  With this function name, Copilot should suggest a full function definition - in fact it may suggest several.  To see the options, hover over the first line and a small window should appear. This window will show many options there are and provide "<" and ">" links to toggle between them.  If there is only one, you might try typing a space. Then click on the "<" and ">" buttons to see the differences in the available suggestions.

![alternative suggestions inline](./images/cdd221.png?raw=true "alternative suggestions inline")   

When you find an alternative you like, go ahead and tab to select it. Note that some may be incomplete.
<br><br>
 <p align="center">
**[END OF LAB]**
</p>
</br></br></br>

**Lab 2 - Using Copilot to simplify code**

1. Open an existing file we have in the project named prime.py. You can click on [**prime.py**](./prime.py) **in the codespace** or open it via the command below.

```
code prime.py
```
<br><br>

2. **Highlight the code** and switch to the Copilot Chat panel. (If you don't see the panel, select the Chat extension icon in the top bar to open the chat window.) Make sure the mode is set to "Ask". If you don't see the full Copilot panel or have access to the "Chat" area, check in the bottom bar of the codespace and see if there's a "Finish Setup" option. If so, click on that and then click the "Set up Copilot" blue button. If you need to change the mode in the Chat dialog, click on the down arrow next to "Ask/Edit/Agent" and select "Ask" (see second screenshot below).

   
![finish setup](./images/ext85.png?raw=true "finish setup")
<br><br>  

![change mode](./images/cdd264.png?raw=true "change mode")
<br><br>  
  
3. After highlighting all the code in the *prime.py* file, tell Copilot to simplify the code by typing *simplify* in the chat window and hitting *Enter* or the *Submit* arrow.

```
simplify
```

![simplifying via chat box](./images/cdd222.png?raw=true "simplifying via chat box") 
<br><br>

4. Copilot will likely provide an explanation of how it simplified things in the Chat panel. It will also create a new code block in the Chat panel with the simplified text. 

<br><br>

5. Hover over the simplified text in the Chat panel. A bar of controls will pop up. Use the second control to tell Copilot to insert the suggestion at the cursor to replace the text that's currently there. (Click on the control that's labeled as *Insert at cursor*. This should replace the highlighted text.)

![insert simplified text](./images/cdd223.png?raw=true "insert simplified text") 
<br><br>

   
6. Now, let's introduce an error into the code to see how Copilot can fix it. Pick an instance of a variable name and change it to one that doesn't exist. For example, change an instance of "n" to "x". 

![introduce error](./images/cdd226.png?raw=true "introduce error")   
<br><br>

7. Notice the light bulb icon that has popped up. Click on that, scroll to the bottom (if needed), and you'll have additional options to fix or explain with Copilot. (If you don't see the light bulb icon, you can right-click, select *Copilot* and then select *Fix*.)

![Copilot options inline](./images/cdd225.png?raw=true "Copilot options inline")   
<br><br>

8. Go ahead and click on the "Fix using Copilot" or "Fix" option.
<br><br>

9. After a few moments, it should propose a fix that you can just accept (via the *Accept* button). (If it doesn't propose a fix in the dialog, you can skip to step 12 and use the /fix command in chat instead.)

![Fixing with Copilot](./images/cdd227.png?raw=true "Fixing with Copilot")       
<br><br>

10. (Optional) If you'd like, you can go back and make the error again, highlight the code, and then use the /fix command in the chat window to get similar results.

<p align="center">
**[END OF LAB]**
</p>
</br></br></br>

**Lab 3: Using Copilot For Onboarding, Explaining and Running Projects**

**Purpose: In this lab, we'll look at how to use Copilot to help quickly get up to speed on any project**

1. For our labs in this workshop, we have a set of code that implements a simple to-do app, written in Python with a toolkit called *Flask*. We interact with it via curl commands for simplicity. The files for this app are in a subdirectory named app. You can look at the files that make up the simple app if you want.

```
cat app/<filename>
```

![cd](./images/ac4.png?raw=true "cd")
<br><br>

2. Since this is a new project to us, let's have Copilot produce some "onboarding" documentation for us. We'll use the #codebase chat variable to indicate it should do this against the contents of the current project. Enter the following prompt in the Copilot Chat dialog box and then submit it or hit *Enter*. (If you see a momentary flash about "Sign in to access Copilot", just wait till the dialog returns and enter the prompt again.)

```
Create an onboarding guide for #codebase. Do not create a separate block for it.
```
![Onboarding prompt](./images/ac11.png?raw=true "Onboarding prompt")
<br><br>

3. After Copilot completes its processing, you should the onboarding documentation displayed in the Chat output area. You can scroll through it to learn more about the project if you want. (You could also copy and paste the contents into a .md (markdown) file if you wanted to save it separately.)

![Viewing the onboarding guide](./images/cdd257.png?raw=true "Viewing the onboarding guide")
<br><br>

4. Next, let's ask Copilot to explain how to demo the code. Enter the following prompt in the Chat dialog.

```
Explain how I can run and see the functionality of #codebase.
```

![Asking how to run](./images/ac35.png?raw=true "Asking how to run")
<br><br>

5. In the Chat output, you'll see it reference a command to start the server and one to run an example usage script. Hover over the command to start the server. If you see a popup icon that looks like a terminal, click on that to insert it into the terminal. If you don't see a terminal icon when you hover over it, click on the "..." at the end of the popup and select "Insert into terminal". (If you see additional "[" "]" or other characters in the command, just ignore them and enter the "python app" command.)

![Enter command to start server](./images/ac36.png?raw=true "Enter command to start server")
<br><br>

6. In the terminal, hit Enter to actually start the server.

![Enter command to start server](./images/ac15.png?raw=true "Enter command to start server")
<br><br>

7. Because the running server is using this terminal, we need to open a second terminal to run the script. Do this by right-clicking in the terminal and select "Split Terminal".

![Split terminal](./images/ac16.png?raw=true "Split terminal") 
<br><br>

8. Back in the chat interface, find the output section with the command to run the usage script. Hover over that command and click the popup icon that looks like a terminal or use the "..." and "Insert into terminal" sequence to insert it into the terminal. (If you don't see that entry in the onboarding guide, you can try using the prompt "**Tell me about the example script to see functionality**" or just enter the command.)

![Enter command to run script](./images/ac37.png?raw=true "Enter command to run script")
<br><br>

9. Hit *Enter* and you can see the script executing running commands against the server. If you want to look more at what the script is doing, you can [view use-app.sh](scripts/use-app.sh)

![Script output](./images/ac18.png?raw=true "Script output")
<br><br>

**Lab 4 - Using Copilot to generate tests**

**Purpose: In this lab, we'll see some examples of having Copilot generate tests**

1. Switch back to the *prime.py* file we were using in Lab 2. Position the cursor below the code.
<br><br>

2. Enter a comment to create unit tests
```
# create a function to do 5 unit tests of the code above
```
![generating tests via comment](./images/cdd215.png?raw=true "generating tests via comment") 
<br><br>

3. What if we didn't know how to test the code at all? Let's ask Copilot. Highlight the *is_prime()* function.

![selecting code](./images/cdd216.png?raw=true "selecting code") 
<br><br>

4. **Open a new chat** using the "+" sign in the uppper right and ask Copilot using the following prompt:

![Opening a new chat](./images/cdd258.png?raw=true "Opening a new chat") 

```
How do I test this code?
```
![prompting on how to test](./images/cdd217.png?raw=true "prompting on how to test") 

(If you happen to encounter a dialog about confirming your testing environment, just hit *Accept* and run the query again.)
<br><br>

5. After entering this, you should see a plan for testing the code in the Chat interface. Copilot will also populate a file for you with the proposed test code, and then want you to *Save As* a valid filename. You can just enter *test_prime.py* in the dialog and hit *OK*.

![testing explanation](./images/cdd236.png?raw=true "testing explanation") 
<br><br>
6. You can then click on the new *test_prime.py* file in the list on the left and open it up to see the contents.

![testing contents](./images/cdd237.png?raw=true "testing contents") 
<br><br>
7. To see what it would have done without running the shortcut */tests* command directly, scroll back up through the chat panel and find the *used /tests (rerun without)* section and then click on the *rerun without* link.

![rerun without option](./images/cdd238.png?raw=true "rerun without option")
<br><br>
8. The output of this should look mostly like the results from the original run except that the code for the new testing file will be displayed in the chat area and you'd have to hover and use one of the icons to transfer it.  Also, you'll see some terminal commands to run the test probably.

![rerun without option](./images/cdd239.png?raw=true "rerun without option")
<br><br>
9. Since we're here, let's run the testing command in the terminal. Hover over the the window in the chat panel with the command to run the tests. Click on the first control that looks like a terminal.

![insert into terminal](./images/cdd240.png?raw=true "insert into terminal")
<br><br>
10. You should see the command automatically put into the terminal in your codespace. Click in the terminal area and hit *Enter*. The commands should then execute and tests should hopefully pass.

![Tests running in terminal](./images/cdd241.png?raw=true "Tests running in terminal")
<br><br>

11. We can also ask Copilot for other cases to test. Select the code in the testing file you just saved and, in the chat interface, prompt Copilot with

```
What other conditions should I test?
```
<br><br>
12. Copilot should respond with a list of other conditions to test and example code that you can add if you want. (If you don't see generated code for this, try opening a new chat with the "+" sign in the upper right and posing the question there. This may then add new test cases directly into the *test_prime.py* file.)

![Additional conditions to test](./images/cdd242.png?raw=true "additional conditions to test") 
<br><br>

<p align="center">
**[END OF LAB]**
</p>
</br></br></br>


**Lab 5 - YAML generation, API use, translating code and the 2023 problem**

**Purpose: In this lab, we’ll learn about how to have Copilot help with YAML generation, API usage, translating code and explore the 2023 problem.**

1. Create a new file - **deployment.yaml**

```
code deployment.yaml
```

2. Bring up the Copilot Chat dialog via your keyboard shortcut and enter in the following request.

```
write spec for deployment in Kubernetes with 2 replicas and image from busybox
add command to run in containers: sleep 3600
add label app: myapp
add label type: front-end
```

3. After a few moments, you should see it respond with the code. You can just Accept this.
   
![Kubernetes manifest](./images/cdd259.png?raw=true "Kubernetes manifest")
<br><br>

4. Suppose we don't know how to execute this code. Let's ask Copilot. Highlight the generated YAML in the deployment.yaml file.  Then go to the larger Chat interface and ask it. Put the following in the Chat interface.

```
How do I execute this?
```

5. Copilot should respond with something like the following:

![How to execute deployment](./images/cdd188.png?raw=true "How to execute deployment")


6. While we're in the Chat interface, let's ask it for the latest K8s version. Put the following into the dialog.

```
what is the latest Kubernetes version?
```

7. Depending on the current model selected, you may get varying answers. In the case shown, the AI suggests that as of the current date, the current version is 1.28. The challenge with this is that the current version is actually 1.33 (as of 5/13/25). This highlights the out-of-date issue with the LLM.

![Answer to latest K8s version](./images/cdd244.png?raw=true "Answer to latest K8s version")


8. Let's have Copilot generate some code to work with Kubernetes through the API. In the chat interface, enter the following.

```
How do I call the K8s API for scaling a deployment to 5 replicas with Python?
```
9. The results may tell us that we first need to make sure something like PIP is installed. If so, we don't need to worry about this at the moment. Go to the actual generated code in the chat output. Click in that output area and paste the code into a new file via clicking on the "..." and then the *Insert into new file* menu option.

![Add code to new file](./images/cdd190.png?raw=true "Add code to new file")


10. Suppose we change our mind and want to convert this code to Go. Click in the new file, and highlight the new code. Then, in the Chat interface tell it to translate to Go. Then, look in the separate chat output and you should see the equivalent Go code available.

```
translate to Go 
```
![Go translation](./images/cdd260.png?raw=true "Go translation")

<p align="center">
**[END OF LAB]**
</p>
</br></br></br>
    
**Lab 6 - Teaching Copilot about updates**

**Purpose: In this lab, we’ll see an example of what to do when Copilot does not have the most up-to-date information**

1. Create a new file called *explore.go* via the same approach as you used to create other files.

2. This file should now be open in an editor tab. Let's say we want to seed a random number generator with Go. Let's ask Copilot to write a function to do that. Prompt it through the inline chat dialog interface using the statement below. Then you can accept the suggested code.

```
write a function to seed a random number generator
```
![Asking Copilot to write function to seed a random number generator](./images/cdd117.png?raw=true "Asking Copilot to write function to seed a random number generator") 

3. Copilot has probably generated code using the rand.Seed function. The challenge is that as of Go 1.20, the Seed function is deprecated.  Ref: https://cs.opensource.google/go/go/+/refs/tags/go1.21.0:src/math/rand/rand.go;l=394

4. Let's see if Copilot understands that this is deprecrated. We'll ask it via a query. Switch to the separate chat inferface and enter the query below.

```
Is the Seed function deprecated in Go?
```

5. Depending on various factors (model, etc.) Copilot may respond *no* or *yes* to this. If Copilot responded *no*, you'll see chat output like the first figure below. If Copilot responded with a *yes* answer, it would also include about how to fix the code as shown in the second figure below. This shows the disparity we may sometimes see between generated code suggestions and what the model actually *understands*. For our purposes here, we're going to use a different approach to help Copilot understand how to fix this. So don't update the current code from the chat output.

![Is Seed function deprecated? no](./images/cdd243.png?raw=true "Is Seed function deprecated? no") 
</br></br>
![Is Seed function deprecated? yes](./images/cdd202.png?raw=true "Is Seed function deprecated? yes") 

6. One way we can help Copilot understand language updates is by providing the context in our file. So let's start again. Delete the current content in the explore.go file. Now,let's provide Copilot some more direct context by copying in updated code examples. After deleting the code block from step 3, copy and paste in the following example of the replacement for the Seed deprecation into your explore.go file.  This is taken from pkg.go.dev/math/rand.

```
	// Create and seed the generator.
	// Typically a non-fixed seed should be used, such as time.Now().UnixNano().
	// Using a fixed seed will produce the same output on every run.
	// r := rand.New(rand.NewSource(99))
```

7. Now, let's try the creation of the function again. Underneath the comments and code you just pasted, invoke the dialog via your keyboard shortcut and enter the statement below again.
```
write a function to seed a random number generator
```

8. This time, the code should be using the same format and NewSource function as you put in the file in step 6. You can just Accept the change. (If you don't see a complete function, but just a single line, try changing the prompt to be "write a complete function to seed a random number generator".

![Updated random number gen code after including updated usage](./images/cdd119.png?raw=true "Updated random number gen code after including updated usage")

9. After accepting the change, go ahead and save this file. In preparation for the next lab, open a new chat by clicking on the "+" sign in the upper right part of the chat pane. (Make sure you have clicked in the chat panel first.)

![New chat](./images/cdd187.png?raw=true "New chat") 

<p align="center">
**[END OF LAB]**
</p>
</br></br></br>


**Lab 7: Using Copilot's Agent Functionality to Implement a New Feature**

**Purpose: In this lab, we'll see how to use Copilot to automatically implement a feature request to our codebase.**

1. We need to make sure our app is running. If not still running from lab 3, go ahead and run the command below in one of the terminals.

```
python app/app.py
```

2.Our code is missing a *search* feature currently. Try the following command in the second terminal.

```
# Search items:
curl -i \
  -H "Authorization: Bearer secret-token" \
  http://127.0.0.1:5000/items/search?q=milk
```

2. Notice that we get a 404 response and a message indicating that the URL was not found on the server.

![404 response](./images/ac19.png?raw=true "404 response")

3. In our repository, we already have a GitHub Issue for this feature. Take a look at it by clicking on this link: [GitHub Issue #1](https://github.com/skillrepos/copilot-adv/issues/1)

![Open issue](./images/ac20.png?raw=true "Open issue")

4. Let's let Copilot's Agent mode have a shot at implementing the feature. Open a new chat by clicking on the large "+" symbol in the top row of the Chat interface. Then, in Copilot's Chat entry area, change the mode to "Agent" by clicking on the drop-down labeled "Ask" at the bottom.

![Start new chat](./images/ac23.png?raw=true "Start new chat")

![Switch to Agent mode](./images/ac21.png?raw=true "Switch to Agent mode")

5. Once in Agent mode, enter the following prompt in the chat area and then submit it.

```
Referencing the issue at https://github.com/skillrepos/copilot-adv/issues/1, propose a diff to our Python codebase that implements the requested feature. Do not create or add any tests.
```
![Context and prompt](./images/ac22.png?raw=true "Context and prompt")

6. After Copilot processes the prompt, it may show one or two files changed - *app.py* and perhaps *datastore.py* - in a box above the Chat text entry area. Click on the "+ -"  icon on the right of the "2 files changed" area in the dialog. (See figure below).  

![View all edits](./images/ac24.png?raw=true "View all edits")

7. Take a look at the single or multiple diffs (#1 and #2 in screenshot). When you are satisfied with the proposed changes, click on the *Keep* button in the *Files changed* dialog (#3 in screenshot). Then you can close the tab that was opened to show the comparisons.(#4 in screenshot)

![Review edits](./images/ac25.png?raw=true "Review edits")


8. Now, let's try the *search* operation again. If your app was running when you made the changes in step 7, it should have automatically reloaded. If you see a message in its output of the sort "Detected change ... reloading", you should be good to go. But if you don't have that you can kill the process (CTRL+C) and then run the app again.

9. You can try the search operation with the same curl command as before. This time, it should run and return a 200 code rather than 404 since the search endpoint is implemented. If the item is found, it will return the found item. If not, it returns the empty set "[]".

```
# Search items:
curl -i \
  -H "Authorization: Bearer secret-token" \
  http://127.0.0.1:5000/items/search?q=milk
```

![Review edits](./images/ac26.png?raw=true "Review edits")

<p align="center">
**[END OF LAB]**
</p>
</br></br></br>


**Lab 8: Refactoring and Updating Code via Copilot Edits**

**Purpose: In this lab, we'll see how to use Copilot Edits functionality to refactor targeted sets of code, both for efficiency and improvements.**

1.  Open a new chat and change Copilot's mode to "Edit".

![Change to Edit](./images/sdlc75.png?raw=true "Change to Edit")

2. Now let's give the AI a targeted set of context to work with.  Add the 3 files from our app in the "app" directory (app/app.py, app/auth.py, and app/datastore.py) as context. You can do this in a couple of ways. You can drag and drop the files from the explorer file list on the left into the dialog area or you can use the "Add Context" button and select the files. (You may need to click on "Files and Folders" in the context picker dialog.) **If other files show up as context, you can click on them in the dialog and an "X" should show up to remove them. (Or you can close them if they're open in the current tab in the IDE.)**

![Selecting files for context](./images/sdlc76.png?raw=true "Selecting files for context")
<br><br>

![Add context](./images/sdlc45.png?raw=true "Add context")
<br><br>
   
3. Let's ask Copilot to refactor our selected files to be more efficient and add logging. Enter the prompt below and submit it.

```
Refactor the files to make them more efficient.
Add logging for all endpoints. 
```

![Refactor prompts](./images/ac27.png?raw=true "Refactor prompts")
<br><br>

4. After this runs, you will likely see output like the screenshot below. Copilot will analyze the targeted files and suggest changes for efficiency and to add logging.

![Change suggestions](./images/ac28.png?raw=true "Change suggestions")
<br><br>

5. You can go ahead and review the changes if you want, and then Keep or Undo. To do the final step (where we show the logging, you need to Keep those changes at least.)

![View all edits](./images/cdd265.png?raw=true "View all edits")
<br><br>


6. Now, let's have Copilot review our current app code. Click on the *app.py* file and select all the code (either highlight it all or use CTRL+A). Then right-click and select *Copilot -> Review and Comment* from the menu.

![Having Copilot review](./images/ac29.png?raw=true "Having Copilot review")
<br><br>   

7. After this runs, if Copilot has items worth noting, it will add them inline. You can scroll through the code to find the items that Copilot identified, along with any suggested changes.  If you want to apply the change you can select the "Apply and Go to Next" button. If you want to skip the change, you can click on the "Discard and Go to Next" button. If you look in the *COMMENTS* panel at the bottom (next to *TERMINAL*), you'll see all the comments listed. **If there are several, for the sake of time, it's suggested you pick just a couple to really inspect and discard the others**.

![Reviewing suggestions](./images/ac30.png?raw=true "Reviewing suggestions")
<br><br>

8. (Optional) To show that the logging works, you can use the script we used previously in the "scripts" directory named use-app.sh. Running it now should cause INFO messages to be output to stderr. (Don't forget to make sure the app is running first in a separate terminal via *python app.py* If you hit errors running the app, it's possible that some edits could have affected the app code. If you hit errors, you can copy the error message, switch Chat to Agent mode, and paste the error and let Copilot try to fix it. 

```
../scripts/use-app.sh
```

![Logging events](./images/ac32.png?raw=true "Logging events")

9. You can stop the server via CTRL-C.

 <p align="center">
**[END OF LAB]**
</p>
</br></br></br>


**Lab 9 - Copilot in GitHub**

**Purpose: In this lab, we'll see how to use the integrated chat interface in GitHub.**

1. To give us a project to work with, we'll fork a repository from my GitHub area. Switch back to GitHub in the browser and go to https://github.com/skillrepos/sec-demo. (Make sure you are logged in as your GitHub userid that has Copilot access.)

2. Fork the skillsrepo/demo repository into your own GitHub space via the *Fork* button at the top right. Make sure to **uncheck** the *Copy the main branch only* box on the second screen.

![fork repo](./images/cdd172.png?raw=true "Fork repo")
![uncheck checkbox](./images/cdd147.png?raw=true "Uncheck checkbox")

3. After the fork is complete, in your fork, click on the *Chat with Copilot* button at the top right. The chat dialog will open up and then you will have a chat input box and some suggested questions. Click on the *Tell me about this repository* question.  (If you don't see it, you can select one of the others or type in the question.) After this runs, you'll get some basic info about the repository.

 ![about the repo query](./images/cdd261.png?raw=true "About the repo query") 
 </br></br>
 ![about the repo response](./images/cdd248.png?raw=true "About the repo response") 
 
4. Now, in the list of files in the repo, select the *main.go* file to open it up. Start a new conversation in the Copilot Chat interface by clicking on the "+" sign. Click on the *Summarize this file for me* question or type it into the input area.  After this runs, you'll see a summarization of the file.

 ![about the file query](./images/cdd249.png?raw=true "About the file query") 
 </br></br>
 ![about the file response](./images/cdd250.png?raw=true "About the file response") 
 
5. In this repo, we have a *dev* branch with some fixes for security vulnerabilities in the *main* branch. Let's create a pull request to merge the *dev* branch into the *main* branch. We could initiate the pull request manually, but since we have the Copilot Chat available, let's have it expedite the process by creating a simple link for us to use to start the pull request. In the Chat input area, tell Copilot to generate an appropriate URL via the prompt below and then submit it. After Copilot is done, you should see a link displayed.
```
Generate a url that I can use to create a pull request to merge the dev branch into the main branch
```

 ![generate pr link](./images/cdd251.png?raw=true "Generate pr link") 
 
6. Click on the link in the chat dialog. This should open up a screen with either a pull request already initiated or a file comparison screen with a button to create the pull request. If it's the latter, go ahead and click the button to create the pull reuqest for merging the dev branch into the main branch. (Close the Chat interface by clicking on the **^** symbol in the upper right corner of the dialog.)

 ![pull request initiation](./images/cdd252.png?raw=true "Pull request initiation")  
  
7. In the pull request, update the title if you want. Then, we'll have Copilot automatically generate a description of our pull request. To do this, click on the *Copilot actions* button in the row under the *Add a description*. In the pop-up, select *Summary*. This will run for a few moments and then generate a draft summmary.

(Note: *If you are on the free (not trial) plan, you won't see the Copilot icon in the pull request area. If that's the case, you can just create the pull request, open up the "Files changed" tab, pick a change and go to step 10.*)

 ![generate summary](./images/cdd155.png?raw=true "Generate summary")  
 ![summary](./images/cdd156.png?raw=true "Summary")  
  
8. The summary will be in *markdown* format. You can click on the *Preview* button to see a readable presentation. When ready, click the *Create pull request* button to finish the creation.

 ![summary](./images/cdd157.png?raw=true "Summary") 

9. Notice that in the *Security Improvements* section, Copilot has generated links for each of the changes in the *models/models.go* file. Let's click on the 2nd link to look at those changes. (**If you do not have the links, you can click on the *Files changed* tab in the pull request to see the changes.**)

 ![looking at a change](./images/cdd158.png?raw=true "Looking at a change") 

10. This will open up the change comparison screen. Let's ask Copilot for some more information about the highlighted change. On the right of the screen will be a small, floating Copilot icon with a drop-down arrow. Click on that and select the *Explain* option. After this runs, you'll see an explanation of the highlighted section.

 ![request explanation](./images/cdd159.png?raw=true "Request explanation") 
 ![section explanation](./images/cdd160.png?raw=true "Section explanation")

11. Now, let's add a file to the context for the chat. Click on the *Ask Copilot* button at the top of the screen. In the *Select files to discuss* dialog, select *models/models.go*, check the box and then *Save*. You'll then see the file attached as context in the Chat dialog.
    
![add file for context](./images/cdd161.png?raw=true "Add file for context")
![file added to context](./images/cdd162.png?raw=true "File added to context")

12. Finally, we'll prompt Copilot about why the changes need to be made. In the Chat input area, enter the prompt *Why do these changes need to be made?* It will use this file as context and respond accordingly. Notice in the screenshot below, the indicator for *1 reference - models.go*.
```
Why do these changes need to be made?
```
![answer with file as context](./images/cdd163.png?raw=true "Answer with file as context")

We're not going to go through and resolve the pull request, so you are done!

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

![filling out form](./images/cdd195.png?raw=true "Filling out form")

4. If you haven't already, click on the green "Begin import" button.

5. After this, you should see the import processing... 

![import processing](./images/cdd196.png?raw=true "Import processing")

6. This will take several minutes to run. When done, you should see a "complete" message and your new
repo will be available. (There is a link in the complete message to click on to directly access it.)

![processing finished](./images/cdd197.png?raw=true "Processing finished")


**Option 2 - Using clone and push**

1. Sign into GitHub if not already signed in.

2. If you don't already have one, create a GitHub token or SSH key. If you are familiar with SSH keys, you can add your public key at
[**https://github.com/settings/keys**](https://github.com/settings/keys). Otherwise, you can just create a "classic" token by following the
instructions at [**https://docs.github.com/en/authentication/keeping-your-account-and-datasecure/managing-your-personal-access-tokens#creating-a-personal-access-token-classic**](https://docs.github.com/en/authentication/keeping-your-account-and-datasecure/managing-your-personal-access-tokens#creating-a-personal-access-token-classic). If you use a GitHub token, make sure to save a copy of it to use in the push step.

3. Clone down the [**skillrepos/greetings-ci**](https://github.com/skillrepos/greetings-ci) repository.

```
git clone https://github.com/skillrepos/greetings-ci (if using token)
```

or 

```
git clone git@github.com:skillrepos/greetings-ci (if using ssh)
```
4. Create a new repository in your GitHub space named *sec-demo*. Go to [**https://github.com/new**](https://github.com/new). Fill in
the "repo name" field with "sec-demo" and then click on the "Create repository" button.
   
![create new repo](./images/cdd198.png?raw=true "Create new repo")


5. On the page that comes up after that, select the appropriate protocol (https or ssh) and then follow
the instructions for "...or push an existing repository from the command line" to push your content
back to the GitHub repository. If you're using https you will be prompted for a password at push
time. Just paste in the classic token. (Note that for security reasons, you will not see the token
displayed.)

![push to repo](./images/cdd199.png?raw=true "Push to repo")

