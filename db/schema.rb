ActiveRecord::Schema[7.0].define(version: 20_220_627_185_716) do # rubocop:disable Metrics/BlockLength:
  enable_extension 'plpgsql'

  create_table 'entities', force: :cascade do |t|
    t.string 'name'
    t.string 'amount'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'author_id', null: false
    t.index ['author_id'], name: 'index_entities_on_author_id'
  end

  create_table 'groups', force: :cascade do |t|
    t.string 'name'
    t.string 'icon'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'user_id', null: false
    t.index ['user_id'], name: 'index_groups_on_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'entities', 'users', column: 'author_id'
  add_foreign_key 'groups', 'users'
end
