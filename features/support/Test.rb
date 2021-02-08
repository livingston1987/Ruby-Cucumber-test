require 'watir'

browser = Watir::Browser.new :chrome
browser.cookies.clear
browser.window.maximize
browser.goto('http://amazon.com')
browser.span(:text=>'Hello, Sign in').hover
sign_link = browser.span(:text=>'Sign in')
sign_link.wait_until_present
sign_link.click
