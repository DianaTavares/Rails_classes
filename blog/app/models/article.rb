class Article < ApplicationRecord
  #Esta es la dependencia con comments, un articulo puede tener varios. como queremos que cuando se elimine un articulo se eliminen todos sus comentarios, de ahi el dependent destroy
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end
