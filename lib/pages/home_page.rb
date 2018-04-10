class HomePage
  include PageObject

  page_url "http://puppies.herokuapp.com"

  divs(:name, class: 'name')
  buttons(:view_detail, value: 'View Details')

  def select_puppy_number(num)
    view_detail_elements[num].click
    # button_element(value: 'View Details', index: num).click
  end

end