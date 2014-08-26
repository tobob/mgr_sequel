Sequel.migration do
  change do

    create_table :posts do
      primary_key :id
      String :title
      String :content
      DateTime :updated_at
      DateTime :created_at
    end

  end
end
