# PC-maker
Site of the company for pc assembly, where the site presents an opportunity to order a computer from parts selected by you, but presented in the company's warehouse.

## How does it work?
The client will be given the opportunity to personally select all the parts and then, after filling out the application, after receiving a call from a consultant - consultations with an employee of the company on the efficiency of the assembly and, if necessary, its correction. When the final decision is made, the price for the selected components and the work of the master will be announced.

## General concept of the site
The site is divided into 2 functional parts:
* The left part - navigation. It occupies 20% of the site screen and is static. It is used to navigate to the main functional sections.
* The right part - working. Part that performs the main functional functions of the site.

Greetings. The first navigation point. This is the page that the user sees for the first time when visiting the site.
![Main page](https://imgur.com/OQn0IpF)

## About PC assembly
This paragraph presents the general principles of PC assembly. The only place in the whole site where JavaScript is implemented.
![Paragraph hidden](https://imgur.com/3tKha2k)
![Paragraph disclosed](https://imgur.com/Zdy5Kps)

## Build your PC
In essence, the main part of the site where the main interaction of the site with the database is carried out. Each component is linked to its table in the database. About the connection in the database will be told a little later.
The button "Check" fills in the selected options and records them in a separate table with which 4, 5 and 6 items work separately.
![Assembly](https://imgur.com/A5WmSBR)

## Your order ID
This item passes the value assigned during assembly in the item above. Further will be needed for order placement, as this item is present in the form.
![Order ID](https://imgur.com/ChkGjtZ)

## Recent builds
3 cards that get values when a new build is created and are shifted to make room for new configurations. Thereby allowing others to use a build already built by someone else, or to get a build ID if your previous build was better than the new one.
![Recent builds](https://imgur.com/BKVaLtP)

## Sending a request
This is a form for submitting a build request. All data is sent to the database, in a separate table, where data from the fields name, phone number and letter are combined by means of a many to many relationship through the mediator table.
![Request](https://imgur.com/CU13Wi6)
