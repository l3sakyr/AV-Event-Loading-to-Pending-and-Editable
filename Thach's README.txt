This project consist of loading events into the pending page automatically.

The dependency of this project is the MYSQL database which is for web-scraped events which are
to be loaded into ArtsVista's pending page.

The gems that have to be in the ArtsVista's master source code in order for this to operate
is the "mysql2" gem.

The database connection information will have to be reconfigured to match what will be used.
In both the database.yml and the controllers.

Developer's Integration Info:

The events_controller and all files in the /app/model are neccessary for the project to run.

The _form.html.erb, new.html.erb, and show.html.erb are the neccessary files for integration.
The index.html, edit.html.erb are the files to show where events will be loaded onto.

In the main pending page you have to add a snippet of code from the index.html.erb in order to
load events in.

The areas you have to test the most would be the pending page, and the two pages which loads in
the events. 

Sincerely,

Thach Le

P.S. This project also contains a dropdown menu placeholder link for "Donations" page.
The only thing you have to do is add in the path of the Donations.