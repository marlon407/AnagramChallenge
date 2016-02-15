class CreateAnagramDetectors < ActiveRecord::Migration
  def change
    create_table :anagram_detectors do |t|
      t.text :first_text
      t.string :second_text

      t.timestamps null: false
    end
  end
end
