# 📁 DirScan-em-Bash

Script simples em **Bash** para realizar **enumeração de diretórios** em aplicações web, com base em uma wordlist. Utiliza `curl` para verificar a existência de diretórios através dos códigos de status HTTP.

## 📌 Objetivo

Este script ajuda a identificar diretórios existentes em uma URL fornecida, uma técnica essencial na fase de **reconhecimento e enumeração** em pentests web.

## ⚠️ Aviso Legal

> ❗ **Uso estritamente educacional!**
>
> Não execute este script contra domínios ou servidores sem **autorização explícita**. Atividades não autorizadas podem ser ilegais.

## 🛠️ Requisitos

- Unix/Linux com terminal Bash
- `curl` instalado
- Passar o caminho da wordlist via argumento
  
## ▶️ Como usar

### 1. Dar permissão de execução:

```bash
chmod +x dir.sh
```

### 2. Executar:

```bash
./dir.sh http://exemplo.com /caminho/para/wordlist
```

### 3. Saída esperada:

```bash
http://exemplo.com/admin (Status - 200)
http://exemplo.com/login (Status - 301)
```

## ⚙️ Características

O script retorna apenas os códigos de status "200" - "301", pode ser alterado ou adicionado no script.

### Linha para alteração:
```bash
 if [[ "$directory" == "200" ]] || [[ "$directory" == "301" ]]
```

## 🙋 Autor
0xReconDev
Estudante de Pentest | GitHub: @0xReconDev
