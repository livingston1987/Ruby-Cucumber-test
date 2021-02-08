require 'watir'
require 'page-object'
class LoginPage
  include PageObject


  button(:continue_button, :id => "continue")
  button(:signin_button, :id => "signInSubmit")


  text_field(:email_text, :id => "ap_email")
  text_field(:password_text, :id => "ap_password")

  span(:account_name, :id => "nav-link-accountList-nav-line-1")
  span(:error_message, :class => "a-list-item")
  span(:hover_text, :text=>"Hello, Sign in")

  link(:signon_link, :CSS => "#nav-flyout-ya-signin > a")

  h4(:h4_message, :class => "a-alert-heading")



  def login(username,password)
    self.hover_text.click
    email_text.wait_until(&:present?)
    self.email_text = username
    continue_button
    password_text.wait_until(&:present?)
    self.password_text = password
    signin_button
  end

  def val_login_pass(name)
    account_name.wait_until(&:present?)
    puts account_name
    account_name.include?(name)
  end

  def val_login_fail(message)
    h4_message.wait_until(&:present?)
    error_message.wait_until(&:present?)
    puts error_message
    error_message.include?(message)
  end

  def close
    @browser.close
  end
end