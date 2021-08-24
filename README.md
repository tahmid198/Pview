
# Codepath Tech Fellow Training WEEK 7 (8/14)

In-class lab:

In this lab we build an app programmatically from scratch with out stroyboard and demonstrate UITableView.

Requirements: Xcode 11+ 

[Class recording link](https://www.youtube.com/watch?v=40gdqVyr9Hk&list=PLrT2tZ9JRrf5vvh-Xb86rnMuorl2us3zc&index=6)

## User Stories



<details><summary>0. Setting Things Up</summary>
<p>

1. Create a new iOS application project in Xcode and set up the project as usual, give product name and interface should be Storyboard and then click create! 
![image walktrough](./images/creating_project.png)

2. Delete Main.storyboard, then go to info.plist -> Application Scence Manifest -> Screen Configuration -> Application Session Role -> Item 0 (Default Config) -> Storyboard Name (DELETE THIS OR YOU WILL GET ERRORS DURING COMPILE TIME)
![image walktrough](./images/initial_setup.png)

3. In PView.xcodeproj within General settings and Deployment Info delete the text "Main" from the Main Interface text bar or Xcode will search for the Main.storyboard when compilling.
![image walktrough](./images/initial_setup2.png)

</p>
</details>





All scenes are embedded in a window. You want to create that window in a sceneDelegate

One of the first function your code comes into is 'func scene()' to set up a scene

## Video Walkthrough

Here's a walkthrough of implemented user stories:

![image walktrough](./images/part2.gif)

# Parstagram - Part I

This is an Instagram clone with a custom Parse backend that allows a user to post photos and view a global photos feed.

Time spent: **5** hours spent in total

## User Stories

The following **required** functionality is completed:

- [x] User sees app icon in home screen and styled launch screen. (1pt)
- [x] User can sign up to create a new account. (1pt)
- [x] User can log in. (1pt)
- [x] User can take a photo, add a caption, and post it to the server. (3pt)
- [x] User can view the last 20 posts. (4pts)
<!-- 
The following **bonus** features are implemented:

- [] User can pull to refresh. (1pt)
- [] User can load past posts infinitely. (2pts) -->

## Video Walkthrough

Here's a walkthrough of implemented user stories:

![image walktrough](./images/part1.gif)