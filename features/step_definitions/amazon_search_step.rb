require_relative '../support/amazon_search_page'

Given(/^a user goes to Amazon home page$/) do
  @amazon_page = SearchPage.new(@browser)
  @amazon_page.visit_amazon
end

When(/^a user searches for "([^"]*)"$/) do |keyword|
  @amazon_page.search_keyword(keyword)
  @amazon_page.click_search
end

Then(/^amazon should return results for "([^"]*)"$/) do |arg|
  expect(@amazon_page.search_result_present?(arg)).to eql true
  @amazon_page.close
end