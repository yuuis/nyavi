class InitialSchema < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.timestamps null: false
    end

    create_table :password_authentications do |t|
      t.string :password_digest, null: false
      t.integer :user_id, null: false
      t.timestamps null: false
    end

    create_table :external_authentications do |t|
      t.string :provider, null: false
      t.string :uid, null: false
      t.integer :user_id, null: false
      t.timestamps null: false
    end

    create_table :cats do |t|
      t.string :name, null: false
      t.integer :shop_id, null: false
      t.timestamps null: false
    end

    create_table :shops do |t|
      t.string :site_url, null: false
      t.timestamps null: false
    end

    create_table :posts do |t|
      t.integer :user_id, null: false
      t.integer :cat_id, null: false
      t.string :body
      t.timestamps
    end

    create_table :images do |t|
      t.integer :post_id, null: false
      t.timestamps
    end
  end
end
