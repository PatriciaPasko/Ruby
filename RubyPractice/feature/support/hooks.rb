Before do |scenario|
  $browser = Selenium::WebDriver.for $testData['browser'].to_sym
  $browser.manage.window.maximize
end

After do |scenario|
  $browser.quit
end
