class Comment < Sequel::Model
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  many_to_one :post

  def persisted?
    false
  end
end
