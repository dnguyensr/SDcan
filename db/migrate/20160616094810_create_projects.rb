class CreateProjects < ActiveRecord::Migration
  def change
    create_table  :projects do |t|
      t.string    :name
      t.date      :begin_date
      t.date      :end_date
      t.integer   :cost
      t.integer   :organization_id

      t.timestamps  null:false
    end
  end
end
