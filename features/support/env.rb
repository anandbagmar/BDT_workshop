require 'capybara/cucumber'
require 'capybara/session'
require 'pry'
Capybara.default_driver = :selenium
Capybara.current_driver = :selenium

$PROJECT_ROOT = File.dirname(__FILE__)
puts "$PROJECT_ROOT:#{$PROJECT_ROOT}"
Dir.glob(File.join($PROJECT_ROOT, "features","domain_layer", "*.rb")).each do |file|
  puts "Requiring: #{file.inspect}"
end


Before do |scenario, session|
  puts "Initialising session"
  $SESSION_DATA ||= SessionInitialiser.create_session()
end






