class Comment < Sequel::Model
  plugin :timestamps
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  many_to_one :post

  def persisted?
    false
  end
end
