Author: Hunter Celeste
Date Started:   3/10/2023
Date Completed: 5/5/2023
Project Type: iOS App Project
App Name: Quick Pick-up

App Design: 
This app was orginally designed used the Figma tool/site. This was designed
using a multistep process from starting at low level designs and working up in detail.

Low Fedlity -> UI Design -> UI Design with color

Some of the app views were removed from the project due to time constraints. The dark 
mode was also removed due to time constraints but is possible to implement later due 
to the color assets already being in place. A link the figma project is listed below.

https://www.figma.com/file/WOqetNd1UhS0jOP29IZOyl/FP?node-id=0%3A1&t=ZcLPI76vsO335S7S-1

App Structure:
This project was designed in xcode on mac in the swift language.

App Database:
It uses Firebase and Firestore from google as the database for this app.
There are 4 different collections in this NOSQL database:
	-users
	-locations
	-pickups
	-items
Using firebase libraries I read from users, locations and items during the app
and write to both users and pickups.
Firebase Examples will be on github under Firebase1 and Firebase2
Addtional files: plist from Firebase to connect to database.

App imports:
In this project I additionally use CoreLocation import from apple. This allows
us to find the current location of the user and to be able to extract the
Zip Code. This also requires permissions from the user which is displayed when
it is activated with the Use Current Locations Feature.

App Description:
 This app was intended to show avaiable locations near you for item
pick-up. Often in my area free items would be dropped off at locations in good condition
and people from the area would pick them up. I designed an app to track the different
locations based on zip codes and have a list of items associated with this system. This
app also has a log-in and sign-up system as well. As well as it recording the items that you
have picked up.

App Features:
	-Login System based on Firebase database
	-Sign-up System that writes to Firebase database
	-Using current location through CoreLocation
		-Obtaining permissions through the app
	-Location can also be entered by user as well
	-Back navigation to previous pages
	-Pick-Ups are recordered and written to database