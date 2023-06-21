require 'sqlite3'
    def updatesqlite()
    print "Escolha um id para editar um registro no seu db: "
    id = gets.chomp.to_i
    print "Agora atualize o nome: "
    nome = gets.chomp
    print "Agora o sobrenome: "
    sobrenome = gets.chomp

    print "Sucesso, seu novo nome e sobrenome são: #{nome} #{sobrenome}"


    db = SQLite3::Database.new('user.db')

    db.execute("UPDATE users SET nome=?, sobrenome=? WHERE id=?", [nome, sobrenome, id]) 
end
