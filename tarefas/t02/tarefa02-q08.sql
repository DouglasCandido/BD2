/* 08. Crie um gatilho que delete todos os clientes de um voo sempre que aquele voo for
deletado e mais um gatilho para deletar o piloto. (Para efeito de informação, considere
que o avião caiu). */

create function deletar_piloto() 
returns trigger as $$
begin
	delete from piloto where codigo = OLD.piloto;
	return new;
end;
$$ language plpgsql;

create function deletar_passageiros() 
returns trigger as $$
begin
	delete from cliente where codigo in (select cliente from cliente_voo where voo = OLD.codigo);
	return new;
end;
$$ language plpgsql;

create trigger morte_piloto after delete on voo for each row execute function deletar_piloto();
create trigger morte_passageiros after delete on voo for each row execute function deletar_passageiros();

delete from voo where codigo = 1;


