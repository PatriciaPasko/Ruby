

Given(/^I enter url$/) do
  @search = SearchText.new($browser)
  @search.visit_url
  sleep(1)
end


When(/^I click on text "What do you want to learn" in the search $/) do |test|
  @test = test
  end
  And (/^ enter text "Java" and click on search$/) do
  # $browser.find_element(:name, 'q').send_keys text
  @search.searchField(text)
  sleep(1)
  # $browser.find_element(:id, 'hplogo').click
  @search.searchButton()
  sleep(1)
end

Then(/^Then I should be navigated to a page$/) do
  $browser.find_element(:name, 'q').send_keys :enter
  sleep(1)
  val = $browser.find_element(:xpath, '(//h3[@class="udemy"])[1]').text
  # fail "!!!MisMatch!!! Please check text"  if ($browser.find_element(:xpath, '(//h3[@class="LC20lb DKV0Md"])[1]').text) != @text
  expect(val).to include @text
end
