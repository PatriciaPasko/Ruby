
Given(/^User enters udemy url$/) do
  @udemy= udemySearchPOM.new($browser)
  @udemy.navigate_url

end

When(/^User searches for "([^"]*)"$/) do |text|
  @text=text
  @udemy.searchField(text)
  @udemy.searchButton
end


Then(/^User should validate result fetched$/) do
  @udemy.totalResults
end