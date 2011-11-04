### Features a go go

This is an example app demoing 3 differnt ways to go at automated acceptance testing using:

* Capybara
* Cucumber
* Spinach

And the overly simple example:

		Feature: Articles
		  In order to make an awesome blog
		  As an author
		  I want to create and manage articles
		
		  Scenario: Articles List
		    Given I have articles titled "Bacon" and "Cheese"
		    When I go to the list of articles
		    Then I should see "Bacon"
		    And I should see "Cheese"

#### Run it

	bundle && rake gogo

