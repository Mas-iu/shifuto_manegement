class CreateManagers < ActiveRecord::Migration[6.1]
  def change
    create_table :managers do |t|
      t.integer :manager_id
      t.text :manager_name
      t.text :manager_name_kana
      t.integer :pass_id
      t.text :pass_word

      t.timestamps
    end
  end
end
