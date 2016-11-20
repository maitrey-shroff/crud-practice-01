class CreateBicycles < ActiveRecord::Migration[5.0]
  def change
    create_table :bicycles do |t|
      t.string :type_of_bike
      t.string :size_of_bike

      t.timestamps
    end
  end
end
