require 'sqlite3'
def readsqlite()
    db = SQLite3::Database.open("user.db")

    data = db.execute("SELECT * FROM users")

    for row in data
        puts "#{row[0]} #{row[1]} #{row[2]}"

    end
end
