# Hands-on GitHub Copilot
## Practical Tips and Best Practices
## Session labs (codespace version)
## Revision 1.16 - 05/20/25

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

2. Afterwards this file should be open in a tab in the editor.

3. Let's see how Copilot responds to a generic request. Go to that tab and type in a comment that says

```
// function to parse data
```
4. Hit return and notice the code that Copilot suggested. This is likely more generic than we want, but hit tab to select that line. (Note that you should give Copilot a second to provide code suggestions before moving on to the next line.)
   
5. After hitting tab, Copilot will generate another part of the function. (If not, you may need to hit return.) Hit tab to accept it. Continue until you get a complete function (or Copilot stops generating additional code suggestions). One example of what code may look like is below.

![Copilot generated function](./images/cpho5.png?raw=true "Copilot generated function")
   
6. This prompt is not specific enough for Copilot to interpret what we want to do.  Highlight the code and delete it, so we can try again.

7. Now type a comment at the top that says

```
// function to parse url
```
8. Hit enter and you will probably see a similar line to

```
function parseURL(url) {
```

9. Just hit Tab to accept it and Enter again. Copilot should continue to respond with another suggestion. *Only if you're not getting responses from Copilot, hit return and type the comment below to nudge Copilot.*

```
// parse url
```
![nudge comment](./images/cdd3.png?raw=true "nudge comment")   

10. Continue to iterate with Copilot suggesting lines and you hitting *Tab* to accept each line and then *Enter* until the function is complete. You may get some blank lines along the way or for some lines you might need to hit Tab twice to accept the code if it is indented more. But just hit return until you get to the end of a function. (You will be at the end when the indentation is done.  Also Copilot may start to suggest another function in comments like // test...)
 
11. Let's do one more pass at getting a specific prompt for Copilot. Delete all the code currently in index.js. This time we will not enter a comment, but will enter a specific function name.
Type the following in the empty file. (There are no parentheses after the *splitURLandReturnComponents* text.)  Do not hit tab or return yet.

```
function splitURLandReturn
```

12.  With this function name, Copilot should suggest a full function definition - in fact it may suggest several.  To see the options, hover over the first line and a small window should appear. This window will show many options there are and provide "<" and ">" links to toggle between them.  If there is more than one, click on the "<" and ">" buttons to see the differences in the available suggestions.

![alternative suggestions inline](./images/cdd221.png?raw=true "alternative suggestions inline")   

When you find an alternative you like, go ahead and tab to select it. Note that some may be incomplete.

 <p align="center">
**[END OF LAB]**
</p>
</br></br></br>

**Lab 2 - Using Copilot to simplify code**

1. Open an existing file we have in the project named prime.py. You can click on [**prime.py**](./prime.py) in the codespace or open it via the command below.

```
code prime.py
```

2. Highlight the code and switch to the Copilot Chat panel. (If you don't see the panel, select the Chat extension icon in the top bar to open the chat window.) Tell Copilot to simplify the code by typing *simplify* in the chat window and hitting *Enter* or the *Submit* arrow.
```
simplify
```

![simplifying via chat box](./images/cdd222.png?raw=true "simplifying via chat box") 

3. Copilot will likely provide an explanation of how it simplified things in the Chat panel. It will also create a new code block in the Chat panel with the simplified text. 

4. Hover over the simplified text in the Chat panel. A bar of controls will pop up. Use the second control to tell Copilot to insert the suggestion at the cursor to replace the text that's currently there. (Click on the control that's labeled as *Insert at cursor*. This should replace the highlighted text.)

![insert simplified text](./images/cdd223.png?raw=true "insert simplified text") 
   
5. Now, let's introduce an error into the code to see how Copilot can fix it. Pick an instance of a variable name and change it to one that doesn't exist. For example, change an instance of "n" to "x". 

![introduce error](./images/cdd226.png?raw=true "introduce error")   

6. Notice the light bulb icon that has popped up. Click on that, scroll to the bottom (if needed), and you'll have additional options to fix or explain with Copilot. (If you don't see the light bulb icon, you can right-click, select *Copilot* and then select *Fix*.)

![Copilot options inline](./images/cdd225.png?raw=true "Copilot options inline")   

7. Go ahead and click on the "Fix using Copilot" option.

8. After a few moments, it should propose a fix that you can just accept (via the Accept button). You can also click on the *Show Changes* icon to see before/after for the proposed changes. (If it doesn't propose a fix in the dialog, you can skip to step 12 and use the /fix command in chat instead.)

![Fixing with Copilot](./images/cdd227.png?raw=true "Fixing with Copilot")       

9. (Optional) If you'd like, you can go back and make the error again, highlight the code, and then use the /fix command in the chat window to get similar results.

<p align="center">
**[END OF LAB]**
</p>
</br></br></br>

**Lab 3 - Using Copilot after the coding**

**Purpose: In this lab, we’ll see a few other ways to leverage Copilot after the initial coding is done**

1. Now that we have some code to work with, let's see what else Copilot can do for us. Let's have it explain the current code in our *prime.py* file.  Select the code. Then, use the appropriate shortcut key for your keyboard/platform to bring up the Copilot interactive chat dialog. (*This should be Ctrl+I on Windows, Option+I on Mac, or Cmd+I if you are using a Mac but don't have an Option key on your keyboard.*) Tell Copilot to explain the code by typing the command below in the dialog. Hit Enter.

```
/explain
```

![Interactively telling Copilot to explain code](./images/cdd229.png?raw=true "Interactively telling Copilot to explain code")

2. Then, you should see the output in the dialog. Click on the *View in Chat* button to see the output in the separate chat panel.

![Output of interactively telling Copilot to explain code in dialog](./images/cdd230.png?raw=true "Output of interactively telling Copilot to explain code in dialog")

![Output of interactively telling Copilot to explain code](./images/cdd231.png?raw=true "Output of interactively telling Copilot to explain code")

3. Now, let's do the same request but through a comment. In the *prime.py* file, below the code, enter the following comment and hit Enter.
```
# explain the code above line-by-line
```
4. After this, Copilot should start showing the explanation in comments. Just hit tab to accept each line and then Enter to move to the next one. ((Note that it might start repeating if you continue after it is done explaining the function the first time.)

![Output of telling Copilot to explain code via comment](./images/cdd232.png?raw=true "Output of telling Copilot to explain code via comment")

5. We can also query Copilot inline via asking a question in a comment. Delete the commented explanation and try out the question below. To be clear you can prefix it with :q but that is not required with the chat feature installed.

```
# q: what does the function above do?
```

![Prompting for what code does with q:](./images/cdd212.png?raw=true "Prompting for what code does with q:")

6. Finally, let's see how to use the doc feature to automatically document our code. Highlight the actual code.

7. Now, enter the shortcut key to bring up the inline chat dialog and enter the **/doc** command. After a few moments, Copilot should generate some documentation for the code. You can go ahead and *Accept* the changes.

![Generated doc for the code](./images/cdd233.png?raw=true "Generated doc for the code")  

8. While this is useful documentation for the start of the function, we'd like to have more extensive comments in the function body. So,let's get Copilot's help with that. **Highlight the function code.** Bring up the chat dialog again and enter the text "verbosely comment this code". After Copilot completes its suggestions, if you're happy with them, you can just click *Accept*. 

![Regenerating doc](./images/cdd234.png?raw=true "Regenerating doc")  

<p align="center">
**[END OF LAB]**
</p>
</br></br></br>

**Lab 4 - Using Copilot to generate tests**

**Purpose: In this lab, we'll see some examples of having Copilot generate tests**

1. Start out in the *prime.py* file we've been using. Position the cursor below the code.

2. Enter a comment to create unit tests
```
# create a function to do 5 unit tests of the code above
```
![generating tests via comment](./images/cdd215.png?raw=true "generating tests via comment") 

4. What if we didn't know how to test the code at all? Let's ask Copilot. Highlight the *is_prime()* function.

![selecting code](./images/cdd216.png?raw=true "selecting code") 

5. Now, switch to the chat interface and ask Copilot using the following prompt:

```
How do I test this code?
```
![prompting on how to test](./images/cdd217.png?raw=true "prompting on how to test") 

(If you happen to encounter a dialog about confirming your testing environment, just hit *Accept* and run the query again.)

6. After entering this, you should see a plan for testing the code in the Chat interface. Copilot will also populate a file for you with the proposed test code, and then want you to *Save As* a valid filename. You can just enter *test_prime.py* in the dialog and hit *OK*.

![testing explanation](./images/cdd236.png?raw=true "testing explanation") 

7. You can then click on the new *test_prime.py* file in the list on the left and open it up to see the contents.

![testing contents](./images/cdd237.png?raw=true "testing contents") 

8. To see what it would have done without running the shortcut */tests* command directly, scroll back up through the chat panel and find the *used /tests (rerun without)* section and then click on the *rerun without* link.

![rerun without option](./images/cdd238.png?raw=true "rerun without option")

9. The output of this should look mostly like the results from the original run except that the code for the new testing file will be displayed in the chat area and you'd have to hover and use one of the icons to transfer it.  Also, you'll see some terminal commands to run the test probably.

![rerun without option](./images/cdd239.png?raw=true "rerun without option")

10. Since we're here, let's run the testing command in the terminal. Hover over the the window in the chat panel with the command to run the tests. Click on the first control that looks like a terminal.

![insert into terminal](./images/cdd240.png?raw=true "insert into terminal")

11. You should see the command automatically put into the terminal in your codespace. Click in the terminal area and hit *Enter*. The commands should then execute and tests should hopefully pass.

![Tests running in terminal](./images/cdd241.png?raw=true "Tests running in terminal")


12. We can also ask Copilot for other cases to test. Select the code in the testing file you just saved and, in the chat interface, prompt Copilot with

```
What other conditions should I test?
```

13. Copilot should respond with a list of other conditions to test and example code that you can add if you want.

![Additional conditions to test](./images/cdd242.png?raw=true "additional conditions to test") 


<p align="center">
**[END OF LAB]**
</p>
</br></br></br>

**Lab 5 - Using Copilot to help with SQL**

**Purpose: In this lab, we’ll see some examples of how to have Copilot help with writing SQL**

1. Create a new file named dev.sql. You can create it via entering the line below in the terminal.

```
code dev.sql
```
   
2. Afterwards this file should be open in a tab in the editor. Assume we want to work with a database or database definition that defines a dataset for students, staff, curriculums, courses, schools of study, locations, and registrations for a university system. Let's see what Copilot would generate for a query to get all students in a course - without any other context.

Enter the following comment below and press Tab to accept suggestions. Remember that you may have to hit Enter multiple times to get Copilot to prompt. Or if you don't get a suggestion or only get a comment, try "nudging" Copilot via typing "select". 

```
-- define a select statement to get all students enrolled in a course
```

3. Go ahead and save this file as part of the project.  You can do this from the "3-line" menu under File->Save, or just use the keyboard shortcut (Cmd + S | Ctrl + S)     

4. Let's see if we get any different results if we provide Copilot additional context. Open the file create-tables.sql in the editor from the GitHub repository. (You can either select and open it from the file list or use the command below from the terminal.) Scroll through it and take a quick look at the contents.

```
code create-tables.sql
```

5. Now with that file open, go back up to the top of the dev.sql file.  Highlight and delete the comment and resulting query from step 2.
  
6. Enter the same comment as before to request the query. (Basically, repeat step 2.) See what Copilot suggests this time. You can accept the suggestions or cycle through options. (If you first get a duplicate line as the query, just hit Enter and Copilot should start making more meaningful suggestions.)

```
-- define a select statement to get all students enrolled in a course
```

7. If all goes well, this second pass should generate a query with many more specific references to the names and identifiers used in *create-tables.sql*.  (**If not, delete the result and try nudging it by typing "select s.".**) Take a look at the query and then compare the names/identifiers used to the ones in the *create-tables.sql* file. This will show that Copilot picks up on context from other files available to it to make better suggestions.

![New query](./images/cdd97.png?raw=true "New query") 

   
8. In some cases, we might be able to use a separate index to speed up operations.  Let's ask Copilot to create a new index based on the last query. Add the following line after the current query in the file *dev.sql*.

```
-- write an index to improve the performance of the query
```
![index](./images/cdd98.png?raw=true "index") 

9. Let's suppose we also want to have a table to capture student attendance. We can ask Copilot to create the table definition for us.

```
-- define a table for student attendance to capture attendance by class
```

(Here again, if you don't get a meaningful response from Copilot, you may need to nudge it by typing *CREATE*.) In the definition Copilot provided, it may have added a comment for the status in the same format as the comment in the courses.registration table definition in the create-tables.sql file.

![status values](./images/cdd99.png?raw=true "status values") 

10. Copilot can also create stored procedures. Let's ask it to create a new stored procedure for getting a list of enrolled students at a particular location. Let's use the shortcut to open the inline chat dialog. Go to the bottom of the *dev.sql* file, invoke Copilot Chat via the shortcut and then enter the line below in the dialog. You can also choose to change the model to Claude 3.5 Sonnet if you want. If you want to change the model, select it in the model drop-down, then you will probably need to select the *Enable* button and re-enter the prompt.  After the prompt is executed, you can choose to **Accept** or **Discard** the result.

```
define a stored procedure to get course enrollment by location
```
![prompt for stored procedure](./images/cdd182.png?raw=true "prompt for stored procedure") 
  
11. We can be more prescriptive with our stored procedure definition.  Let's add a more complex request. Go to the Chat interface and enter the prompt below.

```
define a stored procedure to get instructor details associated with a location
include instructor details, location details, and courses associated with the instructor
use instructor_id as the input parameter
```
![More extensive stored procedure definition](./images/cdd183.png?raw=true "More extensive stored procedure definition") 

12. Finally, let's see Copilot optimize a query for us. Suppose we want to get all the course registrations for September, 2023.  Enter the following query in the *dev.sql* file.

```
select * from courses.registrations where year(registration_date) = 2023 and month(registration_date) = 9;
```

13. Ask Copilot to optimize the previous query. You can do this via highlighting the query (make sure to highlight the *entire* query), and in a chat interface enter "optimize" in the dialog. You can Accept or Discard the suggested optimization after that.

```
optimize
```
![Optimizing a query](./images/cdd184.png?raw=true "Optimizing a query") 

14. If you switched to the Claude 3.5 Sonnet model, you can switch back to the GPT 4o one if you want via the dropdown in the dialog.

![Switching models](./images/cdd185.png?raw=true "switching models") 
    
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

**Lab 7 - YAML generation, API use, translating code and the 2023 problem**

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
![Kubernetes manifest](./images/cdd120.png?raw=true "Kubernetes manifest")

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
![Go translation](./images/cdd125.png?raw=true "Go translation")

<p align="center">
**[END OF LAB]**
</p>
</br></br></br>
    

**Lab 8 - Chat Participants**

**Purpose: In this lab, we'll see how to work with GitHub Copilot Chat Participants.**

1. Now let's see how Copilot can help with tasks using chat participants. First, we'll have Copilot help us commit a change.  Let's use the *explore.go* file we created in Lab 6. If you haven't already, make sure that file is saved.
   
2. Now, let's invoke the **@terminal** chat participant to ask a common question about how to stage your code changes. Go to the *chat* interface and enter the prompt below. Afterwards, the command to do the staging should show up in the chat output.

```
@terminal how do I stage explore.go?
```
![query output](./images/cdd134.png?raw=true "query output") 

3. Hover over the window with the commands in it, and then click on the icon that pops up for the terminal. Click on that to insert the command into the terminal. Then hit return.

![insert into terminal](./images/cdd245.png?raw=true "insert into terminal")


4. Now let's commit our change through the interface and have Copilot suggest a commit message for us. Click on the source control icon in the sidebar (#1 in the figure below). Your *explore.go* file should be selected. In the box titled "Message" above the *Commit bar*, click on the *sparkle icon* at the far right side (#2 in the figure below).

![insert into terminal](./images/cdd246.png?raw=true "insert into terminal")

5. After this, Copilot should (hopefully) generate an appropriate commit message in that box. Since we started the codespace via the button in the readme, you won't have direct commit access, so you can just proceed to the next step.

6. Now, let's switch gears and use the **@workspace** chat participant to help identify where we use certain things in our code. With the *explore.go* file still active in your editor, in the separate *chat* interface , enter the following prompt:

```
Which files are using SQL?
```

7. After executing this, you'll likely have some suggested information on how to search for files that use SQL in your project with search functionality for Visual Studio Code.
   
![initial query response](./images/cdd191.png?raw=true "initial query response")   

8. This is not the kind of answer we were looking for. Let's repeat the query with the *@workspace* chat participant.
```
@workspace Which files are using SQL?
```

9. After executing this, you should see Copilot assessing all of the files in the workspace and then returning a more specific and expected answer.
    
![more specific response](./images/cdd192.png?raw=true "more specific response")

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

 ![about the repo query](./images/cdd247.png?raw=true "About the repo query") 
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

