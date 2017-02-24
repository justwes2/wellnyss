#
# t.string :name,
# ## Database authenticatable
# t.string :email,              null: false, default: ""
# t.string :encrypted_password, null: false, default: ""
wes = User.create(name: 'Wes', email: 'wes@mail.ex', encrypted_password: 'wellnyss1' )
