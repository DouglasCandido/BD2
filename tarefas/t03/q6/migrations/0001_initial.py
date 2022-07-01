# Generated by Django 3.2.13 on 2022-07-01 01:04

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Atividade',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('descricao', models.CharField(max_length=250)),
                ('codprojeto', models.IntegerField()),
                ('datainicio', models.DateField()),
                ('datafim', models.DateField()),
            ],
        ),
        migrations.CreateModel(
            name='Departamento',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sigla', models.CharField(max_length=10)),
                ('descricao', models.CharField(max_length=50)),
                ('codgerente', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Funcionario',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nome', models.CharField(max_length=50)),
                ('sexo', models.CharField(max_length=1)),
                ('dtnasc', models.DateField()),
                ('salario', models.FloatField()),
                ('codsupervisor', models.IntegerField()),
                ('coddepto', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Projeto',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nome', models.CharField(max_length=50)),
                ('descricao', models.CharField(max_length=250)),
                ('codresponsavel', models.IntegerField()),
                ('coddepto', models.IntegerField()),
                ('datainicio', models.DateField()),
                ('datafim', models.DateField()),
            ],
        ),
    ]