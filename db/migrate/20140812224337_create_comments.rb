Sequel.migration do
  change do

    create_table :comments do
      primary_key :id
      String :content
      Integer :post_id
      DateTime :updated_at
      DateTime :created_at
    end

  end
end
