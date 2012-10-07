rExperimentPrjct
================

Experiment rails and detect common FAQ

<h2>To create new app in current dir:</h2>
<p>rails new .<p>

<h2>To push to new repo in github:</h2>
* git init<br />
* git add .<br />
* git commit -m "First Push"<br />
* git remote add origin https://github.com/blabla/bla.git<br />
&lt;https is your github repo url&gt;<br />
* git pull origin master <br />
&lt;if you create a readme in git&gt;<br/>
* git push origin master<br/>
&lt;you are done&gt;


<h2>check status:</h2>
* git status / git log

<h2>get started with changing index page:</h2>
* rake db:create<br />
* rails generate controller home index<br />
&lt;=This will create a controller<br />
&amp; index.html.erb in app/views/home&gt;<br />
* modify routes.rb<br />			
change root :to =&gt;"home#index"

<h2>Create resources using Scaffold:</h2>
* rails generate scaffold Post name:string title:string context:text<br />
&lt;check db/migrate/...rb to view the database structure&gt;<br />
&lt;the def change is the function called when db migrate, creating tables with defined types&gt;<br />
* rake db:migrate 

<h2>To migrate db:</h2>
* rake db:migrate<br />
&lt;this will only effect development&gt;<br />
<h3>If need to specify:</h3>
* rake db:migrate RAILS&lowbar;ENV=production

<h3>To set validation on creating new record:</h3>
* go to <b>app/model/post.rb</b>, and add this into Class:"<br />
validates :names,	:presence =&gt; true<br />
validates :title,	:presence =&gt; true,<br />
:length =&gt; {:minimum =&gt; 5}<br />
"<br />
This will ensure names and title need to filled before submit.

<h2>To load the updated code while in rails console:</h2>
*  reload!

<h2>Before bundle with pg:</h2>
* sudo apt-get install libpq-dev

<h2>Deploy to heroku:</h2>
* add gem 'heroku' in Gemfile<br />
* configure Gemfile:<br />
group :development, :test do<br/>
   gem 'sqlite'<br />
end<br/>
group :production do<br />
   gem 'pg'<br />
end<br />
* sudo apt-get install postgresl<br />
&lt;if you dont install postresql locally, you wont able to install pg&gt;<br />
* bundle install<br />
* heroku run rake db:migrate<br />
* <b>type in command:</b> <br />
wget -qO- https://toolbelt.heroku.com/install.sh | sh<br />
heroku login<br />
git add .<br />
git commit -m "init deploy"<br />
heroku create<br />	
&lt;will create new app at heroku&gt;<br />
heroku key:add<br />	
&lt;if you dont have rsa key stored at heroku yet&gt;<br />
git push heroku master<br />



