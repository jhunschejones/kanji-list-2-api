class CreateKanji < ActiveRecord::Migration[6.1]
  def change
    create_table :kanji do |t|
      t.string :character
      t.string :status
      t.datetime :added_to_list_at

      t.timestamps
    end
  end
end
