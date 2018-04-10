class HomePage
  include PageObject

  def select_puppy_number(num)
    button_element(value: 'View Details', index: num).click
  end
end