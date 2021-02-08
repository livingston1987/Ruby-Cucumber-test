
class SearchPage
  include PageObject

  text_field(:search_textbox, :id => "twotabsearchtextbox")
  span(:result_text, :class => "a-color-state a-text-bold")
  button(:search_button, :id => "nav-search-submit-button")


  def visit_amazon
    @browser.goto "https://www.amazon.com"
  end

  def search_keyword(search_key)
   self.search_textbox = search_key
  end

  def click_search
    search_button
  end

  def search_result_present?(search_key)
    result_text.include?(search_key)
  end

  def close
    @browser.close
  end

end


