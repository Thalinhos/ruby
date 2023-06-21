require 'sqlite3'

db = SQLite3::Database.new('user.db')

db.execute('CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY AUTOINCREMENT, nome TEXT, sobrenome TEXT)')

db.close