-- inserção de dados e queries
use workshop;

-- id_client, name_client, contact_client, email_client, address_client, Bdate, CPF 
insert into clients (name_client, contact_client, email_client, address_client, Bdate, CPF)
		values ('João',63974632261,'publio54@uorak.com','Rua A','1968-01-19',20248954091),
			   ('Luan',63974632262,'a4@uorak.com','Rua B','1941-06-20',95865226010),
               ('Carlos',63974632263,'b4@uorak.com','Rua C','1962-09-15',75452273018),
               ('Pedro',63974632264,'c4@uorak.com','Rua D','1972-07-31',92300901072),
               ('Maria',63974632265,'d4@uorak.com','Rua E','1969-03-29',22785533054);

-- id_orders, description_orders, title_orders, date_orders, kind_problem, priority_level, id_clients_orders
insert into orders (description_orders, title_orders, date_orders, kind_problem, priority_level, id_clients_orders)
		values ('Descrição A','Titulo A','1986-04-05','hardware','Alta',1),
               ('Descrição B','Titulo B','1958-05-03','hardware','Média',2),
               ('Descrição C','Titulo C','1942-02-28','software',default,3),
               ('Descrição D','Titulo D','1988-01-04','hardware','Alta',4),
               ('Descrição E','Titulo E','1988-12-30','software',default,5);

-- id_responsible, sector_responsible, registration_responsible, post_responsible
insert into responsible (sector_responsible, registration_responsible, post_responsible)
		values ('A','1020','Gerente'),
               ('B','1030','Ti'),
               ('C','2030','A'),
               ('D','4050','D');

-- id_order, id_responsible, routed_sector, responsible_sector, comments
insert into generated_order (id_order, id_responsible, routed_sector, responsible_sector, comments)
		values (1,1,'setor emcaminhado A','Setor responsavel A', 'comentarios A'),
			   (2,2,'setor emcaminhado B','Setor responsavel B', 'comentarios B'),
               (3,3,'setor emcaminhado C','Setor responsavel C', 'comentarios C');

-- id_order_dervice, description_order, priority, id_responsible, id_orders, id_client
insert into order_service (description_order, priority, id_responsible, id_orders, id_client)
		values ('Descrição A','Media',1,1,1),
			   ('Descrição B',default,2,2,2),
               ('Descrição C','Alta',3,3,3),
               ('Descrição D','Media',4,4,4);
               