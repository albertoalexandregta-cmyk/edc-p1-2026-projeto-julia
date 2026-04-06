# edc-p1-2026-projeto-julia

INSTALAR JULIA (Windows)
Baixe aqui:
https://julialang.org/downloads/⁠�
Instale normalmente:
Next → Next → Install
✅ Marque: Add Julia to PATH
✅ TESTAR INSTALAÇÃO
Abra o Prompt de Comando (CMD) e cole:
Bash
julia
Se aparecer:

julia>
✔ Funcionou
▶️ RODAR SEU CÓDIGO
1. Criar arquivo
Abra o bloco de notas, cole seu código e salve como:

fila.jl
2. Executar
No CMD, vá até a pasta do arquivo:
Bash
cd caminho\da\pasta
Exemplo:
Bash
cd Desktop
3. Rodar o programa
Bash
julia fila.jl
✔ Vai abrir seu menu interativo
⚠️ SE DER ERRO "julia não é reconhecido"
Cole isso no CMD (ajuste o caminho se precisar):
Bash
setx PATH "%PATH%;C:\Users\SEU_USUARIO\AppData\Local\Programs\Julia\bin"
Depois feche e abra o CMD de novo.
🚀 PRONTO
Agora é só rodar:
Bash
julia fila.jl
