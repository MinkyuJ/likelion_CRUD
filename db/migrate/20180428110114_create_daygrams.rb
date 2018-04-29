class CreateDaygrams < ActiveRecord::Migration[5.0]
  def change
    create_table :daygrams do |t|
      t.string :date
      t.text :content

      t.timestamps
    end
  end
end
