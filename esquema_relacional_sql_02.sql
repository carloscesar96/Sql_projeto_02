-- criação do banco de dados para o cenário de Oficina
-- drop database workshop;
create database workshop;
use workshop;

-- criar tabela cliente
create table clients(
	id_client int auto_increment primary key,
    name_client varchar(45) not null,
    contact_client char(11) not null,
    email_client varchar(45),
    address_client varchar(255) not null,
    Bdate date not null,
    CPF char(11) not null,
    constraint unique_cpf_client unique (CPF)
);

-- criar tabela Pedido
create table orders(
	id_orders int auto_increment primary key,
    description_orders varchar(255),
    title_orders varchar(45),
    date_orders date,
    kind_problem enum('software', 'hardware'),
    priority_level ENUM('Baixa', 'Média', 'Alta') default 'Baixa',
    id_clients_orders int,
    constraint fk_orders_clients foreign key (id_clients_orders) references clients(id_client)
		on update cascade
);

-- criar tabela Responsável
create table responsible(
	id_responsible int auto_increment primary key,
    sector_responsible varchar(45),
    registration_responsible varchar(45),
    post_responsible varchar(45),
    constraint unique_registration_responsible unique (registration_responsible)
);

-- criar tabela Pedido Gerado
Create table generated_order(
	id_order int,
    id_responsible int,
    routed_sector varchar(255),
    responsible_sector varchar(255),
    comments varchar(255),
    primary key (id_order,id_responsible),
    constraint fk_generated_orders foreign key (id_order) references orders(id_orders),
    constraint fk_generated_responsible foreign key (id_responsible) references responsible(id_responsible)    
);

-- criar tabela Ordem de Serviço
create table order_service(
	id_order_dervice int auto_increment primary key,
    description_order varchar(45),
    priority enum('Baixa', 'Media', 'Alta') default 'Baixa',
    id_responsible int,
    id_orders int,
    id_client int not null,
    constraint fk_service_responsible foreign key (id_responsible) references responsible(id_responsible),
    constraint fk_service_order foreign key (id_orders) references orders(id_orders)
);