# PC-maker
Site of the company for pc assembly, where the site presents an opportunity to order a computer from parts selected by you, but presented in the company's warehouse.

## How does it work?
The client will be given the opportunity to personally select all the parts and then, after filling out the application, after receiving a call from a consultant - consultations with an employee of the company on the efficiency of the assembly and, if necessary, its correction. When the final decision is made, the price for the selected components and the work of the master will be announced.

## General concept of the site
The site is divided into 2 functional parts:
* The left part - navigation. It occupies 20% of the site screen and is static. It is used to navigate to the main functional sections.
* The right part - working. Part that performs the main functional functions of the site.

Greetings. The first navigation point. This is the page that the user sees for the first time when visiting the site.

<img width="1280" alt="1" src="https://github.com/n-gheorghiev/PC-maker/assets/126828425/e25e96c4-ddb4-40c6-9c04-f8505d971204">

## About PC assembly
This paragraph presents the general principles of PC assembly. The only place in the whole site where JavaScript is implemented.

<img width="1280" alt="2" src="https://github.com/n-gheorghiev/PC-maker/assets/126828425/fdb26848-3ba3-43d8-ad69-1963f7005a43">

<img width="1280" alt="3" src="https://github.com/n-gheorghiev/PC-maker/assets/126828425/f32022c3-e781-4a9a-a296-171fd16507f4">


## Build your PC
In essence, the main part of the site where the main interaction of the site with the database is carried out. Each component is linked to its table in the database. About the connection in the database will be told a little later.
The button "Check" fills in the selected options and records them in a separate table with which 4, 5 and 6 items work separately.

<img width="1280" alt="4" src="https://github.com/n-gheorghiev/PC-maker/assets/126828425/843bb827-40b4-4fa3-8c17-55a6f22694e8">


## Your order ID
This item passes the value assigned during assembly in the item above. Further will be needed for order placement, as this item is present in the form.

<img width="331" alt="5" src="https://github.com/n-gheorghiev/PC-maker/assets/126828425/9716fd19-b07e-4993-823d-c455c213857d">


## Recent builds
3 cards that get values when a new build is created and are shifted to make room for new configurations. Thereby allowing others to use a build already built by someone else, or to get a build ID if your previous build was better than the new one.

<img width="1280" alt="6" src="https://github.com/n-gheorghiev/PC-maker/assets/126828425/bec83ad5-70a4-48b4-a348-ca21afef918e">


## Sending a request
This is a form for submitting a build request. All data is sent to the database, in a separate table, where data from the fields name, phone number and letter are combined by means of a many to many relationship through the mediator table.

<img width="1280" alt="7" src="https://github.com/n-gheorghiev/PC-maker/assets/126828425/87aa1156-3df0-4062-9795-4b19efcfb227">
