class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.datetime :start
      t.string :title

      t.timestamps
    end
  end
end
