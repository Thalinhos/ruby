require 'sqlite3'

def deletesqlite()
    print "Escolha um id para excluir o registro: "
    id = gets.chomp.to_i

    print "Sucesso, id excluido com sucesso"

    db = SQLite3::Database.open('user.db')

    db.execute("DELETE FROM users WHERE id=?", [id,])
end

