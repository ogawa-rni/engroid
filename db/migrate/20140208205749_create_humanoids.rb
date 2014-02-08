class CreateHumanoids < ActiveRecord::Migration
  def change
    create_table :humanoids do |t|

      t.timestamps
    end
  end
end
