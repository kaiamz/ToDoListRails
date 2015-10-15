class CreateDone < ActiveRecord::Migration
  def change
    create_table :dones do |t|
      add_column :tasks, :completed, :boolean
    end
  end
end
