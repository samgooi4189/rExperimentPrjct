require 'rubygems'
require 'mechanize'

a = Mechanize.new 
a.user_agent_alias = 'Linux Firefox'
a.get('http://www.today.wisc.edu/') do |page|
        #puts page.links.inspect
        puts page.parser.css(".title a").collect{|link| link["href"]}

	#event_page = a.click(page.link_with(parser.css(".title a")))
	#puts event_page.text
end

