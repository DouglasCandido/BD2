create function inserir_novo_cartao_milhagem_apos_atualizacao_cliente() 
returns trigger as $$
begin
	insert into milhas(cliente, quantidade) values(NEW.codigo, 0);
	return new;
end;
$$ language plpgsql;

create trigger novo_cartao_milhagem_apos_atualizacao_cliente after update on cliente for each row execute function inserir_novo_cartao_milhagem_apos_atualizacao_cliente();

update cliente set nome = 'Douglas' where codigo = 1;

/*

    * Erro apresentado: 
        ERROR:  duplicate key value violates unique constraint "milhas_pkey"
        DETAIL:  Key (cliente)=(1) already exists.
        CONTEXT:  SQL statement "insert into milhas(cliente, quantidade) values(NEW.codigo, 0)"
        PL/pgSQL function inserir_novo_cartao_milhagem_apos_atualizacao_cliente() line 3 at SQL statement
        SQL state: 23505

    * Explicação: 
        A questão pede para inserir um novo cartão de milhas para o mesmo cliente sempre que suas informações forem alteradas, o erro acontece pois ocorre uma violação de chave primária referente a tabela milhas. Essa violação de chave primária acontece porque a chave primária da tabela milhas é também uma chave estrangeira que aponta para uma tupla da tabela cliente e, ao adicionar um novo cartão de milhas para o mesmo cliente que teve suas informações alteradas, ocorre uma duplicação de chaves primárias, pois a nova chave primária do novo cartão de milhas terá o mesmo valor da chave primária anterior que aponta para o mesmo cliente.

*/

