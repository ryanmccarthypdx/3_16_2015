class AddSectionIdToBusinesses < ActiveRecord::Migration
  def change
    change_table :businesses do |t|
      t.integer :section_id
    end
  end
end
