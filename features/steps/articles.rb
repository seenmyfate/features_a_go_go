class Articles < Spinach::FeatureSteps
  feature 'Articles'
  Given 'I have articles titled "Bacon" and "Cheese"' do
    ["Bacon","Cheese"].each { |title| Article.create!(:title => title) }
  end

  When 'I go to the list of articles' do
    visit articles_path
  end

  Then 'I should see "Bacon"' do
    page.has_content? "Bacon"
  end

  And 'I should see "Cheese"' do
    page.has_content? "Cheese"
  end
end
