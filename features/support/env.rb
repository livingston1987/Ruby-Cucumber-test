require 'watir'
require 'page-object'
Before do
  @browser = Watir::Browser.new :chrome
  @browser.cookies.clear
  @browser.window.maximize
end

