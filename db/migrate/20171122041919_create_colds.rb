class CreateColds < ActiveRecord::Migration[5.0]
  def change
    create_table :colds do |t|
      t.time :choose

      t.timestamps
    end
  end
end
