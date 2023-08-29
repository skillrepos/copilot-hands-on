# Copilot Deep Dive
## An introduction to GitHub Copilot
## Session labs for codespace only
## Revision 1.0 - 08/28/23

**Startup IF NOT ALREADY DONE!**

**NOTE: To copy and paste in the codespace, you may need to use keyboard commands - CTRL-C and CTRL-V.**

**Lab 1- Learning how to create good prompts for Copilot**

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
