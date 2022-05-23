create function inserir_cartao_milhagem() 
returns trigger as $$
begin
	insert into milhas(cliente, quantidade) values(NEW.codigo, 0);
	return new;
end;
$$ language plpgsql;

create trigger criar_cartao_milhagem after insert on cliente for each row execute function inserir_cartao_milhagem();

insert into cliente(nome, endereco) values('Douglas Mateus Soares Cândido da Silva', 'Rua João Vitoriano, número 157, Bairro Acampamento, Caicó, Rio Grande do Norte, Brasil');

