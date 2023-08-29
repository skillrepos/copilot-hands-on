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
