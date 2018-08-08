class CreateVisions < ActiveRecord::Migration[5.2]
  def change
    create_table :visions do |t|
      t.text :content

      t.timestamps
    end
  end
end
