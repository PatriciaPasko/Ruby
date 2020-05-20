class SearchPage
  include PageObject

  search_field        :searchField,         xpath:"//input[@id='search-field-home']"
  search_button       :searchButton,        xpath:"//input[@id='search-field-home']/../descendant::button"
  element_validation  :totalResults,        xpath:"//h1[@class='udlite-heading-xxl']"

  def navigate_url()
    $browser.navigate.to($testData['udemyUrl'])
  end

  def searchField(text)
    searchField_element.send_keys text
  end

  def searchButton()
    searchButton_element.click()
  end
  def totalResults()
    puts totalResults_element.text
  end
end
