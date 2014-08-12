Sequel.migration do
  change do
    create_table(:comments) do
      primary_key :id
      column :content, "text"
      column :post_id, "integer"
    end
    
    create_table(:high_scores) do
      primary_key :id
      column :game, "text"
      column :score, "integer"
    end
    
    create_table(:posts) do
      primary_key :id
      column :title, "text"
      column :content, "text"
    end
    
    create_table(:schema_migrations) do
      column :filename, "text", :null=>false
      
      primary_key [:filename]
    end
  end
end
Sequel.migration do
  change do
    self << "INSERT INTO \"schema_migrations\" (\"filename\") VALUES ('20140812224255_create_posts.rb')"
    self << "INSERT INTO \"schema_migrations\" (\"filename\") VALUES ('20140812224337_create_comments.rb')"
    self << "INSERT INTO \"schema_migrations\" (\"filename\") VALUES ('20140812231721_create_high_scores.rb')"
  end
end
