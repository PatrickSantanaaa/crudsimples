<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="menu.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
<%
'Conexão com o Banco de Dados
set conn=Server.CreateObject("ADODB.Connection")
conn.Open  "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=java;Password=Java@123;Initial Catalog=treinamento_java;Data Source=192.100.100.132"
'Executar query
sql = "Select * from ASP_USUARIO"
set rs = Server.CreateObject("ADODB.recordset")
Set rs = conn.execute(sql)

'do until rs.EOF
'    for each NMUSU in rs.Fields
'       Response.Write(NMUSU)
'    next
'    Response.Write("<br>")
'    rs.MoveNext
'loop

rs.close
conn.close
%>

    <div class="wrapper">
        <div class="pai">
            <button>Adicionar</button>
            <input  class="input-pesquisa" type="text" placeholder="Pesquisa">
            <button>Buscar</button>
        </div>

        <table>
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>Email</th>
                    <th>Telefone</th>
                </tr>
            </thead>
            <tbody>
			
			<%	
				set conn=Server.CreateObject("ADODB.Connection")
				conn.Open  "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=java;Password=Java@123;Initial Catalog=treinamento_java;Data Source=192.100.100.132"
				'Executar query
				sql = "Select NMUSU from ASP_USUARIO"
				set rsnm = Server.CreateObject("ADODB.recordset")
				Set rsnm = conn.execute(sqlNM)
			%>
                <tr>
                    <td class="td-shadow"><%=rs("NMUSU")%>></td>
                    <td class="td-shadow"><%=rs("EMAIL")%></td>
                    <td class="td-shadow"><%=rs("TELEFONE")%></td>
                    <td><i class='bx check bx-check'></i></td>
				
                </tr>
                <tr>
                    <td class="td-shadow">Maria Oliveira</td>
                    <td class="td-shadow">maria@email.com</td>
                    <td class="td-shadow">(987) 654-3210</td>
                    <td><i class='bx bx-x' ></i></td>
                </tr>
                <!-- Adicione mais linhas conforme necessário -->
            </tbody>
        </table>
    
    </div>

</body>

</html>