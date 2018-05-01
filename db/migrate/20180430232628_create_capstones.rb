class CreateCapstones < ActiveRecord::Migration[5.1]
  def change
    create_table :capstones do |t|
      t.string :name
      t.string :descrciption
      t.string :url

      t.timestamps
    end
  end
end
