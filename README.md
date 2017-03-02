# README

WDI Project 2: CRUD on Rails
Proposal:
Wellnyss (working name)

Users can log in each day, and are asked to assess their mental health/wellness on a scale from 1-10. Based on the input, the user is prompted to set goals, referred to resources, or log outcomes.

User Stories:
As a user I should be able to score my mental health daily to ensure I am thinking about it.
As a user I should be able to get feedback/resources based on my score to improve/maintain wellness.
As a user I should be able to record why I feel good when I feel good to tap those memories when I am not feeling good.
As a user I should  be able to set goals to focus on improving my wellness in specific, targeted ways.
As a user I should be able to sign in and out to protect my privacy.
As a user I should be able to see my self score over time to look for patterns/improvement

technologies used
This app is built in ruby on rails. Devise is used for user authentication.
approach taken
This is a four model application, including users. Assessment, Memory, and Goal store the values. The models are deployed on the main page to create a centralized hub, and minimize navigation.
features
This app features a conditional on the hub page so that the user is asked to complete an assessment the first time they log in each day. A conditional redirect built in to the assessments controller redirects to different models depending on the assessment score.
installation instructions
This is a web app hosted on heroku. It can be found at https://wellnyss.herokuapp.com/. There are no additional installation requirements.
unsolved problems
There are no major outstanding bugs known at this time. In future versions of this app, the goals model should be improved to treat the deadlines as a date rather than a string, so that the app can provide more support in maintaining and achieving these deadlines.
Additionally, future versions of this app should display assessment history as a graph. There are some useful looking javascript plugins that create dynamic graphs so that users can see their progress over time, as well as sorting by weekday, season, time of assessment, and other variables.
Finally, to be truly effective as a gateway to wellness as a paradigm for users, the app will need some sort of out of app reminder function, whether as an email reminder if a user has not checked in in several days, or as a mobile app, or even as a chrome extension, to engage users in daily, low intensity use. 
