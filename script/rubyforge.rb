require 'rubygems'
require 'mechanize'

a = Mechanize.new
a.get('http://rubyforge.org/') do |page|
	login_page = a.click(page.link_with(:text => %rLog In/))

	my_page = login_page.form_with(:action = '/account/login.php') do |f|
		f.form_loginname = ARGV[0]
		f.form_pw
	end.click_button

	my_page.links.each do |link|
		text = link.text.strip
		next unless text.length > 0
		puts text
	end
end
