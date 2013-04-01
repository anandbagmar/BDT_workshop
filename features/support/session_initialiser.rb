module SessionInitialiser
  class << self
    attr_reader :mysession

    def create_session
      @mysession = Capybara::Session.new(:selenium)
      self
    end
  end
end