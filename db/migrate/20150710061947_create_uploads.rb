class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      # Polymorphic
      t.integer :uploadable_id
      t.string :uploadable_type
      # STI
      t.string :type
      # Acts as list
      t.integer :position
      # Paperclip
      t.string :data_file_name
      t.string :data_content_type
      t.integer :data_file_size

      t.timestamps null: false
    end
    add_index :uploads, [:uploadable_id, :uploadable_type]   # SHOULD NOT BE UNIQUE!  
    add_index :uploads, :type
    add_index :uploads, :position
  end
end
