class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.references  :pictures,        foreign_key: true
      t.references  :products,        foreign_key: true
      t.references  :services,        foreign_key: true
      t.string      :name,            null: false
      t.string      :name_kana,       null: false
      t.text        :introduction
      t.string      :phone,           unique: true
      t.string      :address,         unique: true
      t.string      :transportation
      t.string      :open
      t.string      :close
      t.string      :day_closed
      t.text        :website
      t.integer     :closedFlag,      null: false, limit: 1, default: "0"
      t.timestamps
    end
  end
end
