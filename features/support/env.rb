require 'capybara/cucumber'
require 'capybara/session'
require 'pry'
Capybara.default_driver = :selenium
Capybara.current_driver = :selenium

puts "****test"
$PROJECT_ROOT = File.dirname(__FILE__)
puts "$PROJECT_ROOT:#{$PROJECT_ROOT}"
Dir.glob(File.join($PROJECT_ROOT, "features","domain_layer", "*.rb")).each do |file|
  puts "Requiring: #{file.inspect}"
  #load file
end


Before do |scenario, session|

  puts "Initialising session"
  $session = Capybara::Session.new(:selenium)
  $session
end




