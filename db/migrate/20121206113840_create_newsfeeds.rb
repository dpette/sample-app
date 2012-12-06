class CreateNewsfeeds < ActiveRecord::Migration
  def change
    create_table :newsfeeds do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end