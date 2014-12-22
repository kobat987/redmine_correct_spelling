class CreateSpellingPrefixes < ActiveRecord::Migration
  def change
    create_table :spelling_prefixes do |t|
      t.integer :project_id
      t.string :yomi
      t.string :spell_ok
      t.string :spell_ng
      t.string :example
      t.string :exception
    end
  end
end
