class CreatePeers < ActiveRecord::Migration[5.0]
  def change
    create_table :peers do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :bio

      t.timestamps
    end
  end
end
