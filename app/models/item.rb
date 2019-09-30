class Item < ApplicationRecord
    enum condition: [:brand_new, :look_brand_new, :good, :fair, :poor]
    validates :name, presence: true
    validates :name, length: { minimum: 1, maximum: 40 }, allow_blank: true
    validates :description, presence: true, length: { maximum: 1000 }
    validates :condition, presence: true
    validates :price, presence: true, numericality: { 
        only_integer: true, less_than: 10_000_000 }

    belongs_to :exhibitor, class_name: "User"
end
