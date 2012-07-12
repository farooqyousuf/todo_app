class FixPriorityColumnType < ActiveRecord::Migration
  def up
    change_column(:tasks, :priority, :string)
  end

  def down
  end
end
