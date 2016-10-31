class CreateLink < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.text :url
      t.boolean :read, :default => true
      t.references :user, foreign_key: true
    end
  end
end
