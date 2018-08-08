class CreateMissions < ActiveRecord::Migration[5.2]
  def change
    create_table :missions do |t|
      t.text :content

      t.timestamps
    end
  end
end
