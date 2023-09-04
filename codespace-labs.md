# Copilot Deep Dive
## An introduction to GitHub Copilot
## Session labs for codespace only
## Revision 1.0 - 08/28/23

**Startup IF NOT ALREADY DONE!**

**NOTE: To copy and paste in the codespace, you may need to use keyboard commands - CTRL-C and CTRL-V.**

**Lab 1 - Learning how to create good prompts for Copilot**

**Purpose: In this lab, we’ll start to learn about Copilot and how it generates code based on the prompts we provide**

1. On the activity bar at the left of the codespace, click on the Explorer view icon, select one of the top-level files, then click the + icon for a new file at the top.
   Name the new file *index.js*.
   
![Creating new js file](./images/cdd1.png?raw=true "Creating new js file")

2. Afterwards this file should be open in a tab in the editor.

3. Let's see how Copilot responds to a generic request. Go to that tab and type in a comment that says

```
// function to parse data
```
4. Hit return and notice the code that Copilot suggested. This is not what we wanted, but hit tab to select that line.
   
5. Hit return and Copilot will generate the remainder of the function.  Hit tab to accept it. Afterwards your code will look something like below.

![Copilot generated function](./images/cdd2.png?raw=true "Copilot generated function")
   
6. This code is not specific enough for Copilot to interpret what we want to do.  Highlight the code and delete it, so we can try again.

7. Now type a comment at the top that says

```
// function to parse url
```
8. Hit enter and you will probably see a line like

```
function parseURL(url) {
```

9. After that Copilot may not offer a suggestion.  Sometimes it is necessary to further "nudge" Copilot by giving more prompts. Hit return and type the comment below to nudge Copilot.

```
// parse url
```
![nudge comment](./images/cdd3.png?raw=true "nudge comment")   

10. Hit return and Copilot should start generating suggestions again. You can just hit tab to accept each line and then return to get the next part of the code until the function is complete.

11. Suppose you're not happy with that suggestion. Copilot can provide other options for the code. To see those, hit Ctrl + Enter and a second window will open up with other suggestions.
Be patient - it takes a bit of time for Copilot to generate alternative suggestions. After a moment though, you will usually have 10 alternatives to pick from.
You can scan through these and then pick a different one if you want by clicking on the "Accept Solution" link above the solution.  Note that this will add the code to the existing set, so you may want to delete the other code first.

![alternative suggestions](./images/cdd4.png?raw=true "alternative suggestions")   

12. Let's do one more pass at getting a specific prompt for Copilot. Delete all the code currently in index.js. This time we will not enter a comment, but will enter a specific funtion name.
Type the following in the empty file.  Do not hit tab or return yet.

```
function parseURLandReturnComponents
```

13.  With this function name, Copilot should suggest a full function definition - in fact it will suggest several.  To see the options, hover over the first line and a small window should appear.
This window will not how many options there are (probably 3) and provide "<" and ">" links to toggle between them.  Click on the "<" and ">" buttons to see the differences in the available suggestions.

![alternative suggestions inline](./images/cdd5.png?raw=true "alternative suggestions inline")   

14. When you find an alternative you like, go ahead and tab to select it.

 <p align="center">
**[END OF LAB]**
</p>

**Lab 2 - Using Copilot to create test cases**

**Purpose: In this lab, we’ll see an example of how Copilot can create test cases**

1. We have a framework called FastAPI installed in the codespace for building RESTful APIs in Python. We're going to use it to create a simple API to determine if a number is prime and create some tests using Copilot.
   
2. On the activity bar at the left of the codespace, click on the Explorer view icon, select one of the top-level files, then click the + icon for a new file at the top.
   Name the new file *main.py*.

3. Add a comment that describes what we want to have created and hit Enter.

```
# create a fastapi app with an api to determine if a number is prime or not
```
![initial comment](./images/cdd6.png?raw=true "initial comment")   

4. It is likely that nothing is happening meaning that Copilot is not showing any suggestions. Sometimes you may need to nudge Copilot in a different way by hitting Enter again to get it to generate the next line.  Go ahead and hit Enter and see if Copilot offers the start of some code.

![after nudge](./images/cdd7.png?raw=true "after nudge") 

5. Accept the line by hitting Tab and then continue with the Enter/Tab combo until you get the lines below. Pause there for the next step.

```
class Number(BaseModel):
    number: int
```
![pause after this section](./images/cdd8.png?raw=true "pause after this section") 


6.  Hit Enter and Copilot should suggest the following code.  Do not hit Tab yet.

```
@app.get("/")
```

7. We only want to accept part of this line, so instead of Tab, we'll use the Ctrl + Right Arrow combo (non-Mac) or Cmd + Right Arrow combon (Mac) to accept parts of the suggestion. Use the key combo four times to accept the @app.get part of the suggestion.

![after partial accept](./images/cdd9.png?raw=true "after partial accept") 

8. At the current point in the line, type in
```
    ("/prime
```
Copilot should suggest the rest of the line to have a number parameter as shown below. Go ahead and hit Tab to accept the suggestion.

![suggested completion](./images/cdd10.png?raw=true "suggested completion") 

9. After this, hit Enter and Copilot should suggest the rest of the function. It will probably suggest a standard subroutine (starting with "def").  We want this to be an asynchronous function (starting with "async def") so if you don't have async at the start, type in "async".  Notice that the function body may change in response.  Select Tab to accept. Your code should look something like below.

![completed code](./images/cdd11.png?raw=true "completed code") 

10. Optional: If you want, you can try out the code generated by Copilot to see if it works. Run the application "uvicorn" in the terminal part of your Codespace. Run the command below in the Terminal.

```
uvicorn main:app
```
11. After a moment, you should see the app start running and a dialog box will pop up with a button to push to open the app in a browser from the Codespace.  Click on the "Open in Browser" button.

![starting up the app](./images/cdd12.png?raw=true "starting up the app") 

12. When the webpage comes up, you'll see a message like *{"detail":"Not Found"}*. In the url add the endpoint text "/prime/9" (or whatever number you want) and you should see the expected result message returned. You can try additional numbers if you want.

![testing the api](./images/cdd13.png?raw=true "testing the api") 


**Lab 3 - Using Copilot to create test cases**

**Purpose: In this lab, we’ll see how to use Copilot to create test cases**

1. On the activity bar at the left of the codespace, click on the Explorer view icon, select one of the top-level files, then click the + icon for a new file at the top.
   Name the new file *test-prime.py*.
   
2. Afterwards this file should be open in a tab in the editor. Add a comment that describes what we intend to happen and hit Enter.

```
# Test the FastAPI app using pytest:
```
![initial comment](./images/cdd14.png?raw=true "initial comment")   

3. Hit Enter a couple of times until you see the first actual code line "import pytest".  Hit Tab to accept.

![initial code](./images/cdd15.png?raw=true "initial code")   

4. Now, let Copilot fill out the rest of the test program and test cases by hitting Enter to suggest lines of code and then hitting Tab to accept. You can stop after a couple of test cases are generated. The screenshot below shows 4. (Remember to pause and give Copilot a second to generate code, but if you don't see a suggestion, hit Enter and see if it suggests it on the next line.

![code with test cases](./images/cdd16.png?raw=true "code with test cases")  

5. Notice that the test cases picked up on the context from the api we defined in main.py automatically. (They reference the /prime/<number> format.)

6. Let's have it test for something else. Add a comment to tell it to test for a negative value.

```
# test for a negative value
```
7. Hit return and you should see that it has generated a test case for a negative value.  Hit Tab to accept.

![test case for negative value](./images/cdd17.png?raw=true "test case for negative value")

8. Now let's add a test for an invalid value. Type the following comment and hit Enter to see what Copilot suggests.

```
# test for an invalid value
```

9. Copilot may suggest a standard test with a value that results in false as shown below.

![initial suggestion](./images/cdd18.png?raw=true "initial suggestion")

10. But this is not really an invalid value. Hover over the first line and see if there are other suggestions. Click on the ">" sign to advance to the next suggestion. Look for one (may be the 2nd one) that supplies a text string after "/prime". Do not hit Tab yet.

![alternative suggestion](./images/cdd19.png?raw=true "alternative suggestion")

11. Notice that while this has the test case we want, it also asserts a response that we did not build into the app. So we just want to accept the first three lines of the suggestion. Hover over each of the lines in turn. In the popup, select the "..." at the end. Then select "Accept line" from the additional options. After accepting the first 3 lines, you can click anywhere to ignore the rest of the suggestion.

![accepting the first 2 lines](./images/cdd20.png?raw=true "accepting the first two lines") 

12. Your final test case should look like the below.

![final test case](./images/cdd21.png?raw=true "final test case") 

 <p align="center">
**[END OF LAB]**
</p>

**Lab 4 - Using Copilot to explain code**

**Purpose: In this lab, we’ll see some examples of how to have Copilot help explain code**

1. If not already there, open the *test-prime.py* file and go to the end of the file.
   
2. Add a comment starting with "q:" to ask a question about what this code does. After you enter the comment, hit Enter to see the answer.

```
# q: what does the code in this file do?
```
![answer to what the code in the file does](./images/cdd22.png?raw=true "answer to what the code in the file does")  

3. Change the same comment starting with "q:" to ask a question about what the app does. After you enter the comment, hit Enter to see the answer.

```
# q: what does the code in the app do?
```
![answer to what the code in the app does](./images/cdd23.png?raw=true "answer to what the code in the app does")  

4. Let's try one more. Change the same comment starting with "q:" to tell Copilot to explain the lines in this file.

```
# q: explain in detail what each line of this file does
```

5. Hit Enter and Copilot will start responding with the explanation of each line. You will need to hit Tab for each suggested line and then hit Enter to see the next line. Note that you will need to give Copilot time to complete some lines. And some lines will have multiple suggestions as the line builds out. Just pause and hit Tab when needed to make sure the lines are complete before hitting return. You can generate the explanation for as many lines as you want. You don't need to do them all.

Example output from this process is shown below.

![line-by-line explanation](./images/cdd24.png?raw=true "line-by-line explanation")

6. On a new line, add a comment to start explaining how the tests can be run. Enter the text below and then hit Tab to accept the rest of the suggestion:

```
# run this
```

![starting the run info](./images/cdd25.png?raw=true "starting the run info") 

7. Hit Enter and Tab repeatedly to build out an example of what the output from running the tests might look like. Note in some cases you may have to hit Enter on a blank line to nudge Copilot to give the next suggestion.

![filling out the run info](./images/cdd26.png?raw=true "filling out the run info") 

8. Notice that some details shown in the example output may not match up with the file contents. For example, the number of tests shown in the example output may not match up with the number of test cases. And the root directory may not match.

9. To see how the example run info from Copilot corresponds to the output from an actual run, you can run the tests in the Codespace terminal.

![actual run output](./images/cdd27.png?raw=true "actual run output") 

<p align="center">
**[END OF LAB]**
</p>

**Lab 5 - Using Copilot to help with SQL**

**Purpose: In this lab, we’ll see some examples of how to have Copilot help with writing SQL**

1. On the activity bar at the left of the codespace, click on the Explorer view icon, select one of the top-level files, then click the + icon for a new file at the top.
   Name the new file *dev.sql*.
   
2. Afterwards this file should be open in a tab in the editor. Assume we have a database or database definition that defines a dataset for students, staff, curriculums, courses, schools of study, locations, and registrations for a university system. Let's see what Copilot would generate without any other context for a query to get all students in a course. Enter the following comment below and press Tab to accept suggestions.  Remember that you may have to hit Enter multiple times to get Copilot to prompt.

```
-- define a select statement to get all students enrolled in a course
```

3. Let's see if we get any different results if we provide Copilot additional context. Open the file create-tables.sql in the GitHub repository. Scroll through it and take a quick look at the contents.

4. Now with that file open, switch back to the dev.sql file and enter the same command again and see what Copilot suggests this time. You can accept the suggestions or cycle through options or use the Ctrl + Enter to see other options.

```
-- define a select statement to get all students enrolled in a course
```

5. Let's try something a little more complex. Let's ask Copilot to define a query to get how many hours a student is currently enrolled in. You can choose from the options as before to complete the query.  

```
-- define a query to get how many hours a student is currently enrolled in
```

6. In some cases, we might be able to use a separate index to speed up operations.  Let's ask Copilot to create a new index based on the last query.

```
-- write the index for the previous query
```

7. Let's suppose we want to have a table to capture student attendance. We can ask Copilot to create the table definition for us.

```
-- define a table for student attendance to capture attendance by class
```

8. In the definition Copilot provided, it may have added a comment for the enrollment status in the same format as the comment in the courses.registration table definition in the create-tables.sql file.

9. Copilot can also create stored procedures. Let's ask it to create a new stored procedure for getting a list of enrolled students at a particular location.

```
-- define a stored procedure to get course enrollment by location
```

10. Within the query, it may have included the 'registration status = 2' condition. That was only mentioned in the comments for the courses.registration table definition in the create-tables.sql file.
    
11. We can be more prescriptive with our stored procedure definition.  Let's add a more complex request.

```
-- define a stored procedure to get instructor details associated with a location
-- include instructor details, location details, and courses associated with the instructor
-- use instructor_id as the input parameter
```

12. Finally, let's see Copilot optimize a query for us. Suppose we want to get all the course registrations for September, 2023.  Enter the following query in the file.

```
select * from courses.registration where year(registration_date) = 2023 and month(registration_date) = 9
```

13. Ask Copilot to optimize the previous query. 

```
-- optimize the query above
```

14. Take a look at the differences in the new query that Copilot produced. In actual practice, this should run a bit faster.
    
<p align="center">
**[END OF LAB]**
</p>

**Lab 6 - Teaching Copilot about updates **

**Purpose: In this lab, we’ll see an example of what to do when Copilot does not have the most up-to-date information**

1. On the activity bar at the left of the codespace, click on the Explorer view icon, select one of the top-level files, then click the + icon for a new file at the top.
   Name the new file *explore.go*.

2. This file should now be open in an editor tab. Let's say we want to seed a random number generator with Go. Let's ask Copilot to write a function to do that. Then you can accept the suggested code.

```
// write a function to seed a random number generator
```

3. Copilot has probably generated code something like the below. Notice that it used the rand.Seed function. The challenge is that as of Go 1.20, the Seed function is deprecated.  Ref: https://cs.opensource.google/go/go/+/refs/tags/go1.21.0:src/math/rand/rand.go;l=394

   <insert screenshot here of code with Seed>

4. Let's see if Copilot understands that this is deprecrated. We'll ask it via a query.

```
// q: Is the Seed function deprecated in Go?
```

5. Copilot may respond with a link to documentation, which really doesn't answer the question.  Let's tell it how to respond.

```
// q: Is the Seed function deprecated in Go? Respond yes or no.
```

6. This time Copilot probably responded no. So one way we can help Copilot understand language updates is by providing the context in our file. So let's start again. Delete the comment and code block from step 3.

7. Now,let's provide Copilot some more direct context by copying in updated code examples. After deleting the comment and code block from step 3, add in the following example of the replacement for the Seed deprecation into your file.  This is taken from pkg.go.dev/math/rand.

```
	// Create and seed the generator.
	// Typically a non-fixed seed should be used, such as time.Now().UnixNano().
	// Using a fixed seed will produce the same output on every run.
	r := rand.New(rand.NewSource(99))
```

8. Now, let's try the creation of the function again. Underneath the comments and code you just pasted, enter in the same comment as before. You may need to start typing "func" to nudge Copilot.

```
// write a function to seed a random number generator
```

9. This time, the code should be using the same format and NewSource function as you added in Step 7.

<p align="center">
**[END OF LAB]**
</p>

**Lab 7 - Leveraging Copilot for simple tasks and discovery **

**Purpose: In this lab, we’ll see some examples of how to use Copilot to do simple repetitive type of tasks and discovery**

1. You can do this lab in the same misc.go file as before. Suppose we want to create a map of Kubernetes components to their abbreviations. Prompt Copilot with the comment below.

```
// create a map of Kubernetes resources to abbreviations
```

2. Press Tab and Enter to get the first few in the map. This would be tedious for us to have to go through each one. So just use the Ctrl + Enter option to get suggested solutions for the remaining ones. Pick one of the suggested solutions to finish out the map entries.

To-do: insert picture here unless you can get multi-line suggestions to work

3. Now, suppose we want to know what the API is for to get a list of pods for Kubernetes in a namespace called "test". Enter the prompt comment below. You may need to hit return to nudge Copilot.

```
// q: what is the Kubernetes API to get a list of pods in the namespace "test"?
```

4. We can get more specific as well. Try this one.

```
// q: what is the k8s 1.27 rest call to get a list of pods in the namespace "test" with label "type=test"?
```

5. Knowing the API is good, but let's have Copilot write an actual function for us to use. Enter the comment below.

```
// write the code to get a list of pods in the namespace "test" and print their names
```

6. You can accept the suggested answer or use the Ctrl + Enter option to choose a different answer.

7. Now, let's have Copilot explain the code it just created. Above the start of the function, add this comment:

```
// explain the steps in the code below
```

8. Hit Tab to accept the suggested explanation of the steps.

   

5. 
