class Create < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :facebook, default: ''
      t.string :name
      t.string :uuid
    	t.integer :xp, null: false, default: 0
      t.integer :level, null: false, default: 1
      t.timestamps
    end

    create_table :foods do |t|
      t.integer :type_id
      t.float :latitude
      t.float :longitude
      t.timestamps
    end

    create_table :foodTypes do |t|
      t.string :name
      t.string :description, null: false, default: ''
      t.string :image_name
      t.timestamps
    end

    create_table :recipes do |t|
      t.integer :food_id
      t.integer :foods, array: true, default: []
      t.integer :quantities, array: true, default: []
      t.timestamps
    end
  end
end
