class CreateTodos < ActiveRecord::Migration[5.1]
	def change
		create_table :todos do |t|
			t.string :title, null: false
			t.boolean :status

			t.timestamps
		end
	end
end
