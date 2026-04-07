mutable struct Node
    nome::String
    proximo::Union{Nothing, Node}
end

mutable struct Fila
    head::Union{Nothing, Node}
end

function Fila()
    Fila(nothing)
end

function inserir!(fila::Fila, nome::String)
    novo = Node(nome, nothing)
    if fila.head === nothing
        fila.head = novo
    else
        atual = fila.head
        while atual.proximo !== nothing
            atual = atual.proximo
        end
        atual.proximo = novo
    end
    println("$nome entrou na fila.")
end

function atender!(fila::Fila)
    if fila.head === nothing
        println("Fila vazia!")
        return
    end
    removido = fila.head.nome
    fila.head = fila.head.proximo
    println("Atendendo: $removido")
end

function exibir(fila::Fila)
    if fila.head === nothing
        println("Fila vazia!")
        return
    end
    atual = fila.head
    print("Fila: ")
    while atual !== nothing
        print(atual.nome, " -> ")
        atual = atual.proximo
    end
    println("fim")
end

function buscar(fila::Fila, nome::String)
    atual = fila.head
    pos = 1
    while atual !== nothing
        if atual.nome == nome
            println("$nome encontrado na posição $pos.")
            return
        end
        atual = atual.proximo
        pos += 1
    end
    println("$nome não está na fila.")
end

function contar(fila::Fila)
    atual = fila.head
    contador = 0
    while atual !== nothing
        contador += 1
        atual = atual.proximo
    end
    println("Total de pessoas na fila: $contador")
end

function menu()
    fila = Fila()

    while true
        println("\n========== MENU ==========")
        println("1 - Inserir pessoa")
        println("2 - Atender pessoa")
        println("3 - Exibir fila")
        println("4 - Buscar pessoa")
        println("5 - Contar pessoas")
        println("0 - Sair")
        print("Escolha uma opção: ")

        opcao = readline()

        if opcao == "1"
            print("Digite o nome: ")
            nome = readline()
            inserir!(fila, nome)

        elseif opcao == "2"
            atender!(fila)

        elseif opcao == "3"
            exibir(fila)

        elseif opcao == "4"
            print("Digite o nome para buscar: ")
            nome = readline()
            buscar(fila, nome)

        elseif opcao == "5"
            contar(fila)

        elseif opcao == "0"
            println("Saindo...")
            break

        else
            println("Opção inválida!")
        end
    end
end

menu()
