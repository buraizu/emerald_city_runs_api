class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :url
      t.date :date

      t.timestamps
    end

    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest

      t.timestamps
    end

    create_table :user_events do |t|
      t.string :title
      t.string :url
      t.date :date
      t.string :goal
      t.string :result
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end

    create_table :runs do |t|
      t.string :course
      t.integer :distance
      t.integer :time
      t.text :review
      t.integer :rating
      t.integer :user_id

      t.timestamps
    end
  end
end
