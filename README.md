rExperimentPrjct
================

Experiment rails and detect common FAQ

To create new app in current dir:
rails new .

To push to new repo in github:
git init
git add .
git commit -m "First Push"
git remote add origin https://github.com/blabla/bla.git		<https is your github repo url>
git pull origin master <if you create a readme in git>
git push origin master
<you are done>

check status:
git status / git log

get started with changing index page:
rake db:create
rails generate controller home index	<=This will create a controller
					  & index.html.erb in app/views/home>
modify routes.rb			change root :to =>"home#index"

Create resources using Scaffold:
rails generate scaffold Post name:string title:string context:text
<check db/migrate/...rb to view the database structure>
<the def change is the function called when db migrate, creating tables with defined types>
rake db:migrate 

To migrate db:
rake db:migrate		<this will only effect development>
If need to specify:
rake db:migrate RAILS_ENV=production
\_\_\_

To set validation on creating new record:
go to app/model/post.rb, and add this into Class:"
validates :names,	:presence => true
validates :title,	:presence => true,
			:length => {:minimum => 5}
"
This will ensure names and title need to filled before submit.

To load the updated code while in console:
<run> reload!

Before bundle with pg:
sudo apt-get install libpq-dev
