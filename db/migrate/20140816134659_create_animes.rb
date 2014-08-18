Sequel.migration do 
  change do

    create_table :animes do
      primary_key :id
      String :title
    end

  end
end