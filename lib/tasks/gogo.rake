desc 'Run all of the features'
task :gogo do
  exec "bundle exec spinach features/articles.feature && cucumber features_cuke && rspec features_capybara"
end
