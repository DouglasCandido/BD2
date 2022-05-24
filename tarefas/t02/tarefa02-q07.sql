create function atualizar_passageiros() 
returns trigger as $$
begin
	update voo set num_passageiros = num_passageiros + 1 where codigo = NEW.voo;
	return new;
end;
$$ language plpgsql;

create trigger add_passageiros after insert on cliente_voo for each row execute function atualizar_passageiros();

insert into cliente(nome, endereco) values('Erivonete Soares de Lucena', 'Rua João Vitoriano, número 157, Bairro Acampamento, Caicó, Rio Grande do Norte, Brasil');
insert into cliente_voo(cliente, voo) values(2, 1);


