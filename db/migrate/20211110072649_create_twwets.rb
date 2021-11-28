class CreateTwwets < ActiveRecord::Migration[6.1]
  def change
    create_table :twwets do |t|
      t.text :body

      t.timestamps
    end
  end
end
