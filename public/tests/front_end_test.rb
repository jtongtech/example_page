require 'selenium-webdriver'
require 'test/unit'


class FrontEndTesting < Test::Unit::TestCase

 def setup
   caps = Selenium::WebDriver::Remote::Capabilities.chrome(chromeOptions: { args: [ "--headless" ]})  
   @driver = Selenium::WebDriver.for :chrome, desired_capabilities:caps
   @driver.manage.window.maximize
   @driver.navigate.to("http://localhost:4567/")
   @wait = Selenium::WebDriver::Wait.new(:timeout => 15)
 end  

 def teardown
   sleep 0.5
   @driver.close
 end

 def test_front_end
    sleep 0.5
    actualURL = @driver.current_url
    assert_equal('http://localhost:4567/', actualURL, 'URL Did not match')
    assert @wait.until{@driver.find_element(:xpath, '/html/body/div[1]/div/div').displayed?}
    assert @wait.until{@driver.find_element(:xpath, '/html/body/div[1]/div/ul/li[1]/a').displayed?}
    @driver.find_element(:xpath, '/html/body/div[1]/div/ul/li[1]/a').click()
    assert @wait.until{@driver.find_element(:xpath, '/html/body/div[1]/div/ul/li[1]/ul/li[1]/a').displayed?}
    @driver.find_element(:xpath, '/html/body/div[1]/div/ul/li[1]/ul/li[1]/a').click()
    assert @wait.until{@driver.find_element(:xpath, '/html/body/div[4]/div/div[4]/div[1]').displayed?}
    assert @wait.until{@driver.find_element(:xpath, '/html/body/div[4]/div/div[4]/div[4]/div[2]').displayed?}
    @driver.find_element(:xpath, '//*[@id="Birds"]').click()
   
 end
end