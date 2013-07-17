class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :long, null: false
      t.string :short

      t.timestamps
    end
  end
end
