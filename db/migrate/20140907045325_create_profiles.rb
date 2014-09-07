class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references  :user
      t.string      :first_name
      t.string      :last_name
      t.date        :date_of_birth
      t.string      :website_url
      t.text        :biography

      t.timestamps
    end
    add_index :profiles, :user_id
  end
end
