class Post < ApplicationRecord
  after_initialize :set_default_views, if: :new_record?

  private

  def set_default_views
    self.views ||= 0
  end
end
