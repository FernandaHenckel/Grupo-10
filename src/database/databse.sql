create database PayMetrics;
use PayMetrics;


create table endereco (
id_endereco int auto_increment,
logradouro varchar(200) not null,
numero varchar(40) not null,
cidade varchar(100) not null,
sigla_estado char(2) not null,
sigla_pais char(2) not null,
cartao_postal varchar(40) not null,
primary key (id_endereco)
);


create table empresa (
id_empresa int auto_increment,
razão_social varchar(200) not null,
fk_endereco int, 
primary key (id_empresa),
foreign key (fk_endereco)
references endereco(id_endereco)
);

create table usuarios (
id_usuario int auto_increment,
nome varchar(200) not null,
senha varchar(200) not null,
email varchar(200) not null,
administrador boolean default false,
fk_empresa int not null,
primary key (id_usuario),
foreign key (fk_empresa) references empresa(id_empresa),
unique (email)
);

select*from usuarios;