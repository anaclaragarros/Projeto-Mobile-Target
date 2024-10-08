///desafio 4//
///4) Banco de dados
//
// Uma empresa solicitou a você um aplicativo para manutenção de um cadastro de clientes. Após a reunião de definição dos requisitos, as conclusões foram as seguintes:
//
// - Um cliente pode ter um número ilimitado de telefones;
// - Cada telefone de cliente tem um tipo, por exemplo: comercial, residencial, celular, etc. O sistema deve permitir cadastrar novos tipos de telefone;
// - A princípio, é necessário saber apenas em qual estado brasileiro cada cliente se encontra. O sistema deve permitir cadastrar novos estados;
//
// Você ficou responsável pela parte da estrutura de banco de dados que será usada pelo aplicativo. Assim sendo:
//
// - Proponha um modelo lógico para o banco de dados que vai atender a aplicação. Desenhe as tabelas necessárias, os campos de cada uma e marque com setas os relacionamentos existentes entre as tabelas;
// - Aponte os campos que são chave primária (PK) e chave estrangeira (FK);
// - Faça uma busca utilizando comando SQL que traga o código, a razão social e o(s) telefone(s) de todos os clientes do estado de São Paulo (código “SP”);//


/// MODELO DE CRIAÇÃO DE TABELAS SQL///
/// -- Tabela Estado
// CREATE TABLE Estado (
//     id_estado INT PRIMARY KEY AUTO_INCREMENT,
//     sigla VARCHAR(2) NOT NULL,
//     nome VARCHAR(50)
// );
//
// -- Tabela Cliente
// CREATE TABLE Cliente (
//     id_cliente INT PRIMARY KEY AUTO_INCREMENT,
//     razao_social VARCHAR(100) NOT NULL,
//     id_estado INT,
//     FOREIGN KEY (id_estado) REFERENCES Estado(id_estado)
// );
//
// -- Tabela TipoTelefone
// CREATE TABLE TipoTelefone (
//     id_tipo_telefone INT PRIMARY KEY AUTO_INCREMENT,
//     descricao VARCHAR(50) NOT NULL
// );
//
// -- Tabela Telefone
// CREATE TABLE Telefone (
//     id_telefone INT PRIMARY KEY AUTO_INCREMENT,
//     numero_telefone VARCHAR(15) NOT NULL,
//     id_cliente INT,
//     id_tipo_telefone INT,
//     FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
//     FOREIGN KEY (id_tipo_telefone) REFERENCES TipoTelefone(id_tipo_telefone)
// );///

/// SEGUNDO ARQUIVO SQL - CONSULTA DE CLIENTES///
/// SELECT c.id_cliente, c.razao_social, t.numero_telefone
// FROM Cliente c
// JOIN Telefone t ON c.id_cliente = t.id_cliente
// JOIN Estado e ON c.id_estado = e.id_estado
// WHERE e.sigla = 'SP';///

//import 'package:mysql1/mysql1.dart';

void main() async {
  // Configuração do banco de dados
 // final conn = await MySqlConnection.connect(ConnectionSettings(
  //  host: 'localhost',
  //  port: 3306,
 //   user: 'seu_usuario',
  //  db: 'nome_do_banco',
 //   password: 'sua_senha',
//  ));

//  var resultado = await conn.query('''
 //   SELECT c.id_cliente, c.razao_social, t.numero_telefone
  //  FROM Cliente c
  //  JOIN Telefone t ON c.id_cliente = t.id_cliente
  //  JOIN Estado e ON c.id_estado = e.id_estado
  //  WHERE e.sigla = 'SP'
  ''');

 //for (var row in resultado) {
   print('Cliente: ${row[1]}, Telefone: ${row[2]}');
// }//

  await conn.close();
}//


