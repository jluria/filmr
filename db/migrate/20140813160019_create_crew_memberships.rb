class CreateCrewMemberships < ActiveRecord::Migration
  def change
    create_table :crew_memberships do |t|
      t.string :position
      t.belongs_to :talent, index: true
      t.belongs_to :movie, index: true

      t.timestamps
    end
  end
end
