class Post < ApplicationRecord
  after_initialize :set_default_views, if: :new_record?

  private

  def set_default_views
    self.views ||= 0
  end

  belongs_to :user
  has_many :comments, dependent: :destroy # Estou dizendo que 1 post pode conter varios comentários e se o post for excluido, os comentários também serão.
end
