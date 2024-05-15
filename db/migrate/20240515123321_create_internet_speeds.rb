class CreateInternetSpeeds < ActiveRecord::Migration[7.1]
  def change
    create_table :internet_speeds, id: :uuid do |t|
      t.string :download_unit
      t.float :download_speed
     

      t.references :place, foreign_key: true
     
      t.timestamps
    end
  end
end
