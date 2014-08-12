Sequel.migration do 
  change do

    create_table :comments do
      primary_key :id
      String :content
      Integer :post_id
    end

  end
end