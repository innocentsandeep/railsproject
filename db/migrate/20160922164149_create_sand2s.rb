class CreateSand2s < ActiveRecord::Migration
  def change
    create_table :sand2s do |t|

      t.timestamps null: false
    end
  end
end
