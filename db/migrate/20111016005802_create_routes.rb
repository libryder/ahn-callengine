class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :dnis
      t.string :ringto

      t.timestamps
    end
  end
end
