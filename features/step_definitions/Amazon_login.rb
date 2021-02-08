Given(/^User launches Amazon Application$/) do
  @amazon_page = SearchPage.new(@browser)
  @amazon_page.visit_amazon
end

When(/^User provides Valid (.*) and (.*)$/) do |username, password|
  @amazon_login = LoginPage.new(@browser)
  @amazon_login.login(username,password)
end

Then(/^User should be able to see  firstname (.*) on his account page$/) do |name|
  @amazon_login.val_login_pass(name)
end

When(/^User provides Valid (.*) but invalid (.*)$/) do |username, password|
  @amazon_login.login(username,password)
  end

Then(/^User should be able to get Login failed (.*)$/) do |message|
  @amazon_login.val_login_fail(message)
end

