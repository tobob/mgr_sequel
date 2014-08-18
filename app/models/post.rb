class Post < Sequel::Model
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  one_to_many :comments

  def persisted?
    false
  end

  def id
    @values[:id]
  end
end
