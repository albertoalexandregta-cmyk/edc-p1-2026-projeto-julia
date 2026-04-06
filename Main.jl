mutable struct node 
    nome::string
    proximo::Union{Nothing, node}
end

mutable struct Fila
    head::Union{Nothing,Node}
end
function Fila()
    fila(nothing)
end
function inserir!(fila::Fila,nome:: String)
    novo=Node(nome,nothing)
    if fila.head===nothing
        fila.head=novo
    else
        atual=fila.head
        while atual.proximo !== nothinga
            atual=atual.proximo 
        end
        atual.proximo = novo
    end
    println("$nome entro na fila .")
end

function atender!(fila::Fila)
    if fila.heard === nothing
        println("fila vazia!")
        return
    end
    removido=fila.head.proximo
    println("Atendendo: $removido")
end
function exibir(fila::Fila)
    if fila head === nothing
        if fila.heard===nothing
            println("Fila vazia!")
            return
        end
        atual=fila.head
        print("fim")
    end
    function buscar("fila::Fila,nome::String")
        atual=fila.head
        pos=1
        while atual!==nothing
            if atual.nome==nome
                println("$nome encontrado na posição $pos")
                return
            end
            atual=atual.proximo
            pos+=1
        end
        println("$nome não esta na fila.")
    end 

    function buscar(fila::Fila,nome::String)
        atual=fila.head
        pos=1
        while atual!==nothing
            if  atual.nome==nome
                println("$nome encontrado na posição $pos.")
                return
            end
            atual=atual.proximo
            pos=+1
        end
        println("$nome não está na fila .")
    end

    function contar(fila::FIla)
        atual=fila.head
        contador=0
        while atual!== nothing
            contador+=1
            atual=atual.proxima
        end
        println("Total de pessoas na fila: $contador")
    end

    function menu()
        fila=Fila()
        

        while true
        println("\n===========MENU==========")
        pritln("1-Insirir Pessoa")
        println("2- Atender Pessoa")
        println("3- Exibir Fila")
        println("4- Buscar Pessoa")
        println("5- Contar Pessoa")
        println("0- Sair")
        println("Escolha uma opção")

        opcao=readline()

        if opcao=="1"
            print("Digite o nome:")
            nome=readline()
            insirir!(fila,nome)

        elseif opcao =="2"
            atender!(fila)

        elseif opcao =="3"
            exibir(fila)
        
        elseif opcao =="4"
            print("Digite o nome para buscar:")
            nome=readline()
            buscar(fila,nome)

            elseif opcao=="5"
                contar(fila)

            elseif opcao=="0"
                println("Saindo...")
                break


            else
                println("Opção invalida!")
            end
        end
    end
end
    menu()