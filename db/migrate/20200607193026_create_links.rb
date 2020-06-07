class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :text
      t.string :url
      t.string :vc

      t.timestamps
    end
  end
end
