from django.db import models

# Create your models here.

class Funcionario(models.Model):
    nome = models.CharField(max_length = 50)
    sexo = models.CharField(max_length = 1)
    dtnasc = models.DateField()
    salario = models.FloatField()
    codsupervisor = models.IntegerField()
    coddepto = models.IntegerField()

    def __str__(self):
        return self.nome

class Departamento(models.Model):
    sigla = models.CharField(max_length = 10)
    descricao = models.CharField(max_length = 50)
    codgerente = models.IntegerField()

    def __str__(self):
        return self.sigla

class Projeto(models.Model):
    nome = models.CharField(max_length = 50)
    descricao = models.CharField(max_length = 250)
    codresponsavel = models.IntegerField()
    coddepto = models.IntegerField()
    datainicio = models.DateField()
    datafim = models.DateField()

    def __str__(self):
        return self.nome

class Atividade(models.Model):
    descricao = models.CharField(max_length = 250)
    codprojeto = models.IntegerField()
    datainicio = models.DateField()
    datafim = models.DateField()

    def __str__(self):
        return self.descricao









