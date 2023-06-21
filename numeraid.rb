require 'sqlite3'

def ordenasqlite()

    db = SQLite3::Database.open("user.db")

    db.transaction do

    registros = db.execute('SELECT * FROM users')

    for index in 0...registros.length
        registro = registros[index]
        db.execute('UPDATE users SET id = ? WHERE id = ?', index + 1, registro[0])
    end
    end


    db.close

end


