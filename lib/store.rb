class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :store_must_have_inventory

  def store_must_have_inventory
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "You must have women's and/or men's apparel")
    end
  end
end
