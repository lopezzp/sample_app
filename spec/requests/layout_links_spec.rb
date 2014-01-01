require 'spec_helper'

	describe "LayoutLinks" do
		it "should have a Home page at '/'" do
		visit root_path
		click_link "Home"
		response.should have_selector('title', :content => "Home")
	end
	it "should have a Contact page at '/contact'" do
		visit root_path
		click_link "Contact"
		response.should have_selector('title', :content => "Contact")
	end
	it "should have an About page at '/about'" do
		visit root_path
		click_link about_path
		response.should have_selector('title', :content => "About")
	end
	it "should have a Help page at '/help'" do
		visit root_path
		click_link help_path
		response.should have_selector('title', :content => "Help")
	end
	it "should have a Sign Up page at '/signup'" do 
		visit root_path
		click_link signup_path
		response.should have_selector("title",:content => "Sign up")
end