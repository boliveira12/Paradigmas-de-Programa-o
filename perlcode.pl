$numero1 = 10;

sub teste1 {
    return $numero1;
}

sub teste2 {
    my $numero1 = 30;
    return teste1();
}

print teste2(), "\n";

# Escopo estatico, estou colocando uma variavel global com valor 10, no bloco teste1 estou mudando localmente o valor da variavel para 30 no teste2
# E chamando o teste1, depois estou dando um print no teste2. Porem como o escopo é estatico, ele pega o valor superior que seria o valor global, que é 10, e não o valor local.

our $numero2 = 10;

sub teste3 {
    return $numero2;
}

sub teste4 {
    $numero2 = 30;
    return teste3();
}

print teste4();

# Escopo dinamico, estou colocando uma variavel global com valor 10, estou chamando essa variavel no teste3, estou mudando a variavel para 30 localmente no teste4 
# E chamando o teste3, depois estou dando print no teste4. Como o escopo é dinamico ele retorna o valor mais recente da variavel, que seria 30.

# A diferença de escopo estatico pra escopo dinamico é que, o escopo estatico é mais facil de ser lido porem mais dificil de ser escrito
# Já o escopo dinamico funciona de forma contraria, o programador precisa saber todas as possiveis alterações que irão ocorrer pra saber o porque daquela variavel
# Estar com aquele valor.