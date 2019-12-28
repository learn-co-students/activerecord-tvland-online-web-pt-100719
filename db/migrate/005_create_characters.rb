class CreateCharacters < ActiveRecord::Migration[5.1]
    def change
      create_table :characters do |t| 
        t.string :name
        t.string :last_name
        t.string :catchphrase
        t.integer :actor_id
        t.integer :show_id
      end
    end
end