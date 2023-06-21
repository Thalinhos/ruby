require 'sqlite3'

def insertsqlite()
    print "Digite um nome para adcionar no seu db: "
    nome = gets.chomp

    print "Digite o seu sobrenome: "
    sobrenome = gets.chomp

    puts "Verifique seu db"
    print "seu nome e sobrenome são: #{nome} #{sobrenome}"


    db = SQLite3::Database.open('user.db')

    db.execute('INSERT INTO users (nome, sobrenome) VALUES(?, ?)', [nome, sobrenome])

    db.close
end
