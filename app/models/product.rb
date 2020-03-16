class Product < ApplicationRecord
    validates :price, presence: true, format: {with: /\A[0-9]+\z/, message: "全角数字は入力できません。"}
    has_many :comments
    belongs_to :user
    # belongs_to :main_tag
    #タグ機能実装時
    has_many :item_images, dependent: :destroy
    def self.search(search)
        return Product.all unless search
        Product.where('item_name LIKE(?)', "%#{search}%")
    end
end
