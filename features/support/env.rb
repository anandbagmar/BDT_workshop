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

#$sessiondata = SessionInitialiser.new.create_session()

Before do |scenario, session|

  puts "Initialising session"
  #@session = SessionInitialiser.initialize(Capybara::Session.new(:selenium))
  #$SESSION_DATA ||= SessionInitialiser
  $SESSION_DATA ||= SessionInitialiser.create_session()

  #$session = Capybara::Session.new(:selenium)
  #$session
end






