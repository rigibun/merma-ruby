class Item < ApplicationRecord
    enum condition: [:brand_new, :look_brand_new, :good, :fair, :poor]
    validates :name, presence: true, length: { minimum: 1, maximum: 40 }
    validates :description, presence: true, length: { maximum: 1000 }
    validates :condition, presence: true

    belongs_to :exhibitor, class_name: "User"
end
