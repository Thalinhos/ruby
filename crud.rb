require './insert'
require './update'
require './delete'
require './read'
require '.
/numeraid'

swap = true
while swap do
    swap = false

    ordenasqlite()

    puts "Qual opção você gostaria?"
    puts "1 - insert, 2 - update, 3 - delete, 4 - read"
    option = gets.chomp.to_i
    system("cls")
    if option == 1
        insertsqlite()
    elsif option == 2
        updatesqlite()
    elsif option == 3 
        deletesqlite()
    elsif option == 4
        readsqlite()
    else
        puts "Opção inválida"
    end


    print "\n"

    
    puts "Gostaria de continuar?"
    puts "s - continuar, n - sair"

    option2 = gets.chomp.downcase

    if option2 == 's'
        swap = true
        system("cls")
    else 
        system("cls")
        puts "Obrigado, até mais!"
        break
    end
end
