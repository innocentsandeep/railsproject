class CreateSands < ActiveRecord::Migration
  def change
    create_table :sands do |t|

      t.timestamps null: false
    end
  end
end
