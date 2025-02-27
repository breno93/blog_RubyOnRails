class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy # Um usuario pode ter varios posts e se excluido, os posts também serão
  has_many :comments, dependent: :destroy # Um usuario pode ter varios comentarios e se excluido, os comentarios também serão
end
