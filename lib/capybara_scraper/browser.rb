class CapybaraScraper::Browser 
  attr_reader :session
  
  def initialize
    @session = Capybara::Session.new(:poltergeist)  
  end
  
  def visit(url)
    begin 
      session.visit(url)
    rescue 
    end
    @page = Nokogiri::HTML(session.html)
    self
  end
  
  def page 
    @page ||= Nokogiri::HTML(session.html)  
  end
  
end