class ShoppingCartPage

  NAME_COLUMN = 1
  SUBTOTAL_COLUMN = 3
  LINES_PER_PUPPY = 6

  def initialize(browser)
    @browser = browser
  end

  def name_for_line_item(line_item)
    cart_line_item(line_item)[NAME_COLUMN].text
  end

  def subtotal_for_line_item(line_item)
    cart_line_item(line_item)[SUBTOTAL_COLUMN].text
  end

  def total
    @browser.td(class: 'total_cell').text
  end

  def continue_shopping
    @browser.button(:value => 'Adopt Another Puppy').click
  end

  def checkout
    @browser.button(:value => 'Complete the Adoption').click
  end

  private

  def row_for(line_item)
    row = (line_item.to_i - 1) * LINES_PER_PUPPY
  end

  def cart_line_item(line_item)
    @browser.table(index: 0)[row_for(line_item)]
  end
end