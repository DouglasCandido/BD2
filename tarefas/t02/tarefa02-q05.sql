create function inserir_novo_voo_para_piloto() 
returns trigger as $$
begin
	update piloto set num_voos = num_voos + 1 where codigo = NEW.piloto;
	return new;
end;
$$ language plpgsql;

create trigger criar_novo_voo_para_piloto after insert on voo for each row execute function inserir_novo_voo_para_piloto();

insert into piloto(nome) values('Pete Maverick Mitchell');
insert into voo(tipo, piloto, num_passageiros, distancia) values('a', 1, 100, 1000.0);

