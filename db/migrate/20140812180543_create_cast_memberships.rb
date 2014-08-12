class CreateCastMemberships < ActiveRecord::Migration
  def change
    create_table :cast_memberships do |t|
      t.string :character_name
      t.belongs_to :talent, index: true
      t.belongs_to :movie, index: true

      t.timestamps
    end
  end
end
