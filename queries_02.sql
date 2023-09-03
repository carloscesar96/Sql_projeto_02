-- utilizando queries

-- informações gerais dos clientes
select * from clients;

-- informações sobre ondens de serviços
select * from order_service;

-- junção das tabelas cliente, pedido, pedido_gerado e responsavel
select * from ((responsible r join generated_order g on r.id_responsible=g.id_responsible)
	join orders on id_order=id_orders)
    join clients on id_clients_orders=id_client;
    
-- Matricula do funcionário responsavel por produto do Luan
select registration_responsible as Matricula_funcionario from ((responsible r join generated_order g on r.id_responsible=g.id_responsible)
	join orders on id_order=id_orders)
    join clients on id_clients_orders=id_client
    where name_client='Luan';
    
-- ordem do cliente do decrescente            
select * from order_service
	order by id_client desc;  

-- pedidos do cliente onde a prioridade é alta
select * from clients join orders on id_client = id_clients_orders
	having priority_level ='Alta';
    
-- responsaveis que tem o número 20 na matricula.
select * from responsible
	where registration_responsible like '%20%';
    
