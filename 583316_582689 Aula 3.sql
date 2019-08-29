##Luís Gustavo Araujo Soares RA:583316
create table imovel(
id_imovel int not null,
constraint PK_ID_IMOVEL primary key (id_imovel),
endereco varchar(45) not null,
area_construida int not null,
qtde_comodo int not null
);

create table proprietario(
cpf_cliente int not null,
id_imovel int not null,
constraint PK_PROPRIETARIO primary key (cpf_cliente, id_imovel),
constraint FK_CPF_CLIENTE foreign key (cpf_cliente)
references cliente (cpf_cliente),
constraint FK_ID_IMOVEL foreign key (id_imovel)
references imovel (id_imovel)
);

create table cliente(
cpf_cliente int not null,
nome varchar(45) not null,
endereco varchar(45) not null,
telefone int not null,
constraint PK_CPF_CLIENTE primary key (cpf_cliente)
);

##Marco Antonio RA:582689

create table tipo_imovel(
id_tipo_imovel int not null,
descricao varchar(45) not null,
constraint PK_TIPO_IMOVEL primary key (id_tipo_imovel)
);

create table situacao_imovel(
id_situacao_imovel int not null,
descricao varchar(45) not null,
constraint PK_SITUACAO_IMOVEL primary key (id_situacao_imovel)
);