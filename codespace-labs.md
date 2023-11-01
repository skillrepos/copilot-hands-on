# Copilot Deep Dive
## An introduction to GitHub Copilot
## Session labs for codespace only
## Revision 2.1 - 10/29/23

**Startup IF NOT ALREADY DONE!**

**NOTE: To copy and paste in the codespace, you may need to use keyboard commands - CTRL-C and CTRL-V.**

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
4. Hit return and notice the code that Copilot suggested. This is not what we wanted, but hit tab to select that line.
   
5. Hit return and Copilot will generate the remainder of the function.  Hit tab to accept it. Afterwards your code may look something like below.

![Copilot generated function](./images/cdd2.png?raw=true "Copilot generated function")
   
6. This prompt is not specific enough for Copilot to interpret what we want to do.  Highlight the code and delete it, so we can try again.

7. Now type a comment at the top that says

```
// function to parse url
```
8. Hit enter and you will probably see a line like

```
function parseURL(url) {
```

9. Just hit Tab to accept it and Enter again. After that Copilot may or may not offer a suggestion.  If it does, great - you can just hit Tab and accept it.  If not, it may be necessary to further "nudge" Copilot by giving more prompts. Only if you're not getting responses from Copilot, hit return and type the comment below to nudge Copilot.

```
// parse url
```
![nudge comment](./images/cdd3.png?raw=true "nudge comment")   

10. Only if needed, hit return and Copilot should start generating suggestions again. You can just hit tab to accept each line and then return to get the next part of the code until the function is complete. You may get some blank lines along the way - just hit return until you get to the end of a function.

11. Suppose you're not happy with that suggestion. Copilot can provide other options for the code. To see those, hit **Ctrl + Enter** and a second window will open up with other suggestions.
Be patient - it takes a bit of time for Copilot to generate alternative suggestions. After a moment though, you will have up to 10 alternatives to pick from.
You can scan through these and then pick a different one if you want by clicking on the "Accept Solution" link above the solution.  Note that this will add the code to the existing set, so you may want to delete the other code first.

![alternative suggestions](./images/cdd4.png?raw=true "alternative suggestions")   

12. Let's do one more pass at getting a specific prompt for Copilot. Delete all the code currently in index.js. This time we will not enter a comment, but will enter a specific funtion name.
Type the following in the empty file.  Do not hit tab or return yet.

```
function splitURLandReturnComponents (
```

13.  With this function name, Copilot should suggest a full function definition - in fact it may suggest several.  To see the options, hover over the first line and a small window should appear. This window will not how many options there are (probably 2 or 3) and provide "<" and ">" links to toggle between them.  Click on the "<" and ">" buttons to see the differences in the available suggestions.

![alternative suggestions inline](./images/cdd5b.png?raw=true "alternative suggestions inline")   

14. When you find an alternative you like, go ahead and tab to select it.

 <p align="center">
**[END OF LAB]**
</p>

**Lab 2 - Using Copilot to simplify and explain code**

1. Create a new file named prime.py. Create it via the same process as we used in Lab 1 by entering the line below in the terminal.

```
code prime.py
```

2. Start typing a function definition as below
```
def is_prime(n
```
3. Pick one of the offered suggestions and hit Tab.

4. Highlight the text and hit **Ctrl+Enter** to see options

5. Pick one of the options that is longer and/or more complex and **Accept Solution**.

![alternative suggestions](./images/cdd34.png?raw=true "alternative suggestions") 

6. Highlight the code and select the Chat extension icon to open the chat window.  Tell Copilot to simplify the code by typing in the chat window.
```
/simplify
```

![simplifying via chat box](./images/cdd35.png?raw=true "simplifying via chat box") 

7. Hover over the simplified text and tell Copilot to insert the suggestion at the cursor to replace the text that's currently there.

![replace from chat suggestion](./images/cdd36.png?raw=true "replace from chat suggestion")    

8. Now, let's introduce an error into the code to see how Copilot can fix it. Pick an instance of a variable name and change it to one that doesn't exist. For example, change an instance of "n" to "x". 

![introduce error](./images/cdd37.png?raw=true "introduce error")   

9. Notice the light bulb icon that has popped up. Click on that and you'll have additional options to fix or explain with Copilot.

![Copilot options inline](./images/cdd38.png?raw=true "Copilot options inline")   

10. Go ahead and click on the "Fix using Copilot" option.

11. After a few moments, it will propose a fix that you can just accept (via the Accept button).

![Fixing with Copilot](./images/cdd39.png?raw=true "Fixing with Copilot")       

12. (Optional) If you'd like, you can go back and make the error again, highlight the code, and then use the /fix command in the chat window to get the same results.

<p align="center">
**[END OF LAB]**
</p>

**Lab 3 - Using Copilot after the coding**

**Purpose: In this lab, we’ll see a few other ways to leverage Copilot after the initial coding is done**

1. Now that we have some code to work with, let's see what else Copilot can do for us. Let's have it explain the current code in our *prime.py* file.  Select the code. Then, use the **Cmd+I** keys to bring up the Copilot interactive chat dialog.

![Interactively telling Copilot to explain code](./images/cdd40.png?raw=true "Interactively telling Copilot to explain code")


2. Tell Copilot to explain the code by typing the command below in the dialog. Then, you should see the output in the chat window.

```
/explain
```
![Output of interactively telling Copilot to explain code](./images/cdd41.png?raw=true "Output of interactively telling Copilot to explain code")

3. Now, let's do the same request but through a comment. In the *prime.py* file, below the code, enter the following comment and hit Enter.
```
# explain the code above line-by-line
```
4. After this, Copilot should start showing the explanation in comments. Just hit tab to accept each line and then Enter to move to the next one.

![Output of telling Copilot to explain code via comment](./images/cdd42.png?raw=true "Output of telling Copilot to explain code via comment")

5. We can also query Copilot inline via asking a question in a comment. Try out the question below. To be clear you can prefix it with :q but that is not required with the chat feature installed.

```
# q: what does this function do?
```

![Prompting for what code does with q:](./images/cdd43.png?raw=true "Prompting for what code does with q:")

6. Finally, let's see how to use the doc feature to automatically document our code. Highlight the actual code.

7. Now, enter **Cmd+I** and enter the **/doc** command. After a few moments, Copilot should generate some documentation for the code. Do not Accept or Discard yet.

![Generated doc for the code](./images/cdd44.png?raw=true "Generated doc for the code")  

8. Let's see what other doc could be generated. Click on the circular arrow button next to Discard at the bottom of the dialog and click on it to regenerate another possible doc.

![Regenerating doc](./images/cdd45.png?raw=true "Regenerating doc")  

9. Once you find a doc example you like, go ahead and click **Accept**.

<p align="center">
**[END OF LAB]**
</p>

**Lab 4 - Using Copilot to generate tests**

**Purpose: In this lab, we'll see some examples of having Copilot generate tests**

1. Start out in the *prime.py* file we've been using. Position the cursor below the code.

2. Enter a comment to create unit tests
```
# create a function to do 5 unit tests of the code above
```

3. *If you don't get a suggestion*, enter code below to start nudging. Otherwise you can just accept the suggestion.

```
def test_is_prime():
```
![generating tests via comment](./images/cdd46.png?raw=true "generating tests via comment") 

4. Let's try a slightly different way of generating tests.  First, highlight and delete any parts of the current test function, including comments.

5. Now type the code below - we are deliberately not adding the closing parenthesis, so if it gets added, delete it.

```
def test_is_prime(
```
6. Now,put your cursor at the end of the line (after the opening parenthesis).  You should see the lightbulb icon come up.  Click on that and then click on "Fix using Copilot".

![Using fix to finish generating tests](./images/cdd47.png?raw=true "Using fix to finish generating tests") 

7. After a few moments, you should see that Copilot has generated anywhere from a few tests to a large list of potential tests. We won't use these for now, so you can click the *Discard* button.

![Fix-generated tests](./images/cdd48.png?raw=true "Fix-generated tests") 
   
8. Let's have chat generate the tests.  Go ahead and highlight/delete any existing ones and the test function in the prime.py file.

9. Select the set of code for *is_prime*. Then Go to chat and tell it to generate tests

```
/tests
```
![Tests-generated tests](./images/cdd49.png?raw=true "Tests-generated tests") 

10. Now we'll put this into a new file by hovering over the output in the Chat window, then selecting the "..." from the pop-up menu and selecting "Insert into new file".  Don't worry about the file name for now.

![Insert tests into new file](./images/cdd50.png?raw=true "Insert tests into new file") 

<p align="center">
**[END OF LAB]**
</p>

**Lab 5 - Using Copilot to help with SQL**

**Purpose: In this lab, we’ll see some examples of how to have Copilot help with writing SQL**

1. Create a new file named dev.sql. You can create it via entering the line below in the terminal.

```
code dev.sql
```
   
2. Afterwards this file should be open in a tab in the editor. Assume we want to work with a database or database definition that defines a dataset for students, staff, curriculums, courses, schools of study, locations, and registrations for a university system. Let's see what Copilot would generate without any other context for a query to get all students in a course. Enter the following comment below and press Tab to accept suggestions. Remember that you may have to hit Enter multiple times to get Copilot to prompt. Or if you don't get a suggestion or only get a comment, try "nudging" Copilot via typing "select". 

```
-- define a select statement to get all students enrolled in a course
```

3. Let's see if we get any different results if we provide Copilot additional context. Open the file create-tables.sql in the GitHub repository. (You can either select and open it from the file list or use the command below from the terminal.) Scroll through it and take a quick look at the contents.

```
code create-tables.sql
```

4. Now with that file open, highlight and copy the contents. Switch back to the dev.sql file and paste the contents from the create-tables.sql file at the bottom of the dev.sql file.
  
5. Go back up to the top of the dev.sql file.  Highlight and delete the comment and resulting query from step 2.
  
6. Enter the same comment as before to request the query. (Basically, repeat step 2.) See what Copilot suggests this time. You can accept the suggestions or cycle through options.

```
-- define a select statement to get all students enrolled in a course
```

7. In some cases, we might be able to use a separate index to speed up operations.  Let's ask Copilot to create a new index based on the last query.

```
-- write an index to improve the performance of the query
```

8. Let's suppose we want to have a table to capture student attendance. We can ask Copilot to create the table definition for us.

```
-- define a table for student attendance to capture attendance by class
```

In the definition Copilot provided, it may have added a comment for the status in the same format as the comment in the courses.registration table definition in the create-tables.sql file.

9. Copilot can also create stored procedures. Let's ask it to create a new stored procedure for getting a list of enrolled students at a particular location. Let's use the **CMD+I** shortcut. Invoke Copilot Chat via the shortcut and then enter the line below in the dialog. You can choose to Accept or Discard the result.

```
define a stored procedure to get course enrollment by location
```
  
10. We can be more prescriptive with our stored procedure definition.  Let's add a more complex request. Go to the Chat interface extension via clicking on the icon on the tool bar (if its not already opened). In the Chat window, enter the prompt below.

```
define a stored procedure to get instructor details associated with a location
include instructor details, location details, and courses associated with the instructor
use instructor_id as the input parameter
```
![More extensive stored procedure definition](./images/cdd51.png?raw=true "More extensive stored procedure definition") 

11. Finally, let's see Copilot optimize a query for us. Suppose we want to get all the course registrations for September, 2023.  Enter the following query in the file.

```
select * from courses.registration where year(registration_date) = 2023 and month(registration_date) = 9
```

12. Ask Copilot to optimize the previous query. You can do this via using the **CMD+I** shortcut and entering "/optimize" in the dialog. You can Accept or Discard the suggested optimization after that.

```
/optimize
```
![Optimizing a query](./images/cdd52.png?raw=true "Optimizing a query") 

    
<p align="center">
**[END OF LAB]**
</p>

**Lab 6 - Teaching Copilot about updates**

**Purpose: In this lab, we’ll see an example of what to do when Copilot does not have the most up-to-date information**

1. Create a new file called *explore.go* via the same approach as you used to create other files.

2. This file should now be open in an editor tab. Let's say we want to seed a random number generator with Go. Let's ask Copilot to write a function to do that. Prompt it through the **CMD+I** interface using the statement below. Then you can accept the suggested code.

```
write a function to seed a random number generator
```
![Asking Copilot to write function to seed a random number generator](./images/cdd53.png?raw=true "Asking Copilot to write function to seed a random number generator") 

3. Copilot has probably generated code using the rand.Seed function. The challenge is that as of Go 1.20, the Seed function is deprecated.  Ref: https://cs.opensource.google/go/go/+/refs/tags/go1.21.0:src/math/rand/rand.go;l=394

4. Let's see if Copilot understands that this is deprecrated. We'll ask it via a query. Use **CMD+I** and the query below.

```
Is the Seed function deprecated in Go?
```

5. Copilot probably responded with no and some info about the function. So one way we can help Copilot understand language updates is by providing the context in our file. So let's start again. Delete the current content in the explore.go file.

6. Now,let's provide Copilot some more direct context by copying in updated code examples. After deleting the code block from step 3, copy and paste in the following example of the replacement for the Seed deprecation into your explore.go file.  This is taken from pkg.go.dev/math/rand.

```
	// Create and seed the generator.
	// Typically a non-fixed seed should be used, such as time.Now().UnixNano().
	// Using a fixed seed will produce the same output on every run.
	r := rand.New(rand.NewSource(99))
```

7. Now, let's try the creation of the function again. Underneath the comments and code you just pasted, invoke the dialog via **CMD+I** and enter the statement below again.
```
write a function to seed a random number generator
```

8. This time, the code should be using the same format and NewSource function as you put in the file in step 7. You can just Accept the change.

![Updated random number gen code after including updated usage](./images/cdd54.png?raw=true "Updated random number gen code after including updated usage")

<p align="center">
**[END OF LAB]**
</p>

**Lab 7 - Kubernetes, YAML generation and the 2021 problem**

**Purpose: Show YAML generation and out of date content.**

1. Create a new file - **deployment.yaml**

```
code deployment.yaml
```

2. Bring up the Copilot Chat dialog via **CMD+I** and enter in the following request.

```
write spec for deployment in Kubernetes with 2 replicas and image from busybox
add command to run in containers: sleep 3600
add label app: myapp
add label type: front-end
```

3. After a few moments, you should see it respond with the code. You can just Accept this.
![Kubernetes manifest](./images/cdd57.png?raw=true "Kubernetes manifest")

4. Suppose we don't know how to execute this code. Let's ask Copilot. Highlight the generated YAML in the deployment.yaml file.  Then go to the larger Chat interface and ask it. Put the following in the Chat interface.

```
How do I execute this - short version?
```

5. Copilot should respond with something like the following:

![How to execute deployment](./images/cdd58.png?raw=true "How to execute deployment")


6. While we're in the Chat interface, let's ask it for the latest K8s version. Put the following into the dialog.

```
what is the latest Kubernetes version?
```

7. Notice that it identifies the latest version as 1.22 as of September 2021. This highlights the out-of-date issue with the LLM.

![Answer to latest K8s version](./images/cdd59.png?raw=true "Answer to latest K8s version")


8. Let's have Copilot generate some code to work with Kubernetes through the API. In the chat interface, enter the following.

```
How do I call the K8s API for scaling a deployment to 5 replicas with Python?
```

9. Click in chat output and paste to new file via clicking on the "..." menu option.

![Add code to new file](./images/cdd60.png?raw=true "Add code to new file")


10. Suppose we change our mind and want to convert this code to Go. Click in the new file, and highlight the new code. Then, in the Chat interface tell it to translate to Go.

```
translate to Go 
```

11. If you look at the output from the Chat interface, you should not how the equivalent Go code available.

![Go translation](./images/cdd61.png?raw=true "Go translation")

<p align="center">
**[END OF LAB]**
</p>
    
**Lab 8 - Exploring Javascript, regular expression generator, auto-generating data**

**Purpose: Show Javascript and regular expression generation, auto-generate routine mappings**

1. Create a new file as **phone.js**

```
code contact.js
```

2. Prompt Copilot to create a function with a regular expression to validate a US phone number. You can use the **CMD+I** interface.
```
create a function to validate any global phone number using a regular expression
```
![Regex function to validate phone #](./images/cdd62.png?raw=true "regex function to validate phone #")

3. Let's tell it to document the function by highlighting the code, invoking **CMD+I** and **/doc**.  You can just Accept the results.

![Automatic doc of function](./images/cdd63.png?raw=true "Automatic doc of function")  

4. Let's see how Copilot can generate some data and mappings for us automatically. Enter the prompt below in the main Chat text entry area.
```
create a mapping of states to area codes
the key is the state abbreviation
the value is an array of area codes
```
5. After running this, Copilot will generate the start of a list as shown below. Hover over the output area and click to insert the updates at the cursor in the *phone.js* file. (This assumes the cursor is below the previous function in the file.)

![Automatic gen of data](./images/cdd65.png?raw=true "Automatic gen of data") 

6. Notice that the example mapping was only for the first few states. We want to get the remaining mappings for the other states.

![Partial list of mappings](./images/cdd66.png?raw=true "Partial list of mappings") 

7. Let's craft a prompt to complete the sequence. Enter the following in the main Copilot Chat entry box and then execute it.

```
create a mapping of the remaining states to area codes 
the key is the state abbreviation
the value is an array of area codes
```
![Completing the mappings](./images/cdd67.png?raw=true "Completing the mappings") 

8. From the generated text in the chat, you can copy the mappings and add them into the code file.
   
![Copying remaining mappings](./images/cdd69.png?raw=true "Copying remaining mappings") 

   
<p align="center">
**[END OF LAB]**
</p>
 
