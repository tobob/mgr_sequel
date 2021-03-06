Sequel.migration do
  change do
    create_table(:comments) do
      primary_key :id
      column :content, "text"
      column :post_id, "integer"
      column :updated_at, "timestamp without time zone"
      column :created_at, "timestamp without time zone"
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
  end
end
