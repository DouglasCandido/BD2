create function atualizar_milhas() 
returns trigger as $$
begin
	update milhas set quantidade = quantidade + (SELECT distancia FROM voo, cliente_voo where new.voo = voo.codigo) / 10 where cliente = NEW.cliente;
	return new;
end;
$$ language plpgsql;

create trigger add_milhas after insert on cliente_voo for each row execute function atualizar_milhas();

insert into cliente_voo(cliente, voo) values(1, 1);

