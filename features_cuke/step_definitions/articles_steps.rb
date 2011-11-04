Given /^I have articles titled "([^"]*)" and "([^"]*)"$/ do |*titles|
  titles.each { |title| Article.create!(:title => title) }
end

When /^I go to the list of articles$/ do
  visit articles_path
end

Then /^I should see "([^"]*)"$/ do |title|
  page.has_content? text
end
