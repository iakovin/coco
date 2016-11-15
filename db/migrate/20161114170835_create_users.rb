class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthdate
      t.string :job
      t.string :phone
      t.string :email
      t.string :skype
      t.string :website
      t.text :story
      t.string :sexe
      t.string :quote
      t.boolean :host
      t.string :dream_coworker
      t.string :song
      t.string :cv

      t.timestamps
    end
  end
end
