class CreateRakutens < ActiveRecord::Migration[5.1]
  def change
    create_table :rakutens do |t|

      t.timestamps
    end
  end
end
