class CreatePostits < ActiveRecord::Migration
  def change
    create_table :postits do |t|
    	t.integer :x
    	t.integer :y
    	t.text :content
    end
  end
end
