class SearchText
  include PageObject

  text_field       :searchField,         name: 'q'
  image           :searchButton,        id:'hplogo'

  def visit_url()
    $browser.navigate.to($testData['url'])
  end

  def searchField(text)
    searchField_element.send_keys text
  end

  def searchButton()
    searchButton_element.click()
  end

end
