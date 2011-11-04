require_relative 'support/env'

feature "Articles", %q{
  In order to make an awesome blog
  As an author
  I want to create and manage articles
} do

  background do
    ["Bacon","Cheese"].each { |title| Article.create!(:title => title) }
  end

  scenario %q{
    Given I have articles titled "Bacon" and "Cheese"
    When I go to the list of articles
    Then I should see "Bacon"
    And I should see "Cheese"
  } do
    visit articles_path
    page.should have_content('Bacon')
    page.should have_content('Cheese')
  end

end

