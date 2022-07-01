from django.shortcuts import render, redirect
from .forms import ProjetoForm, AtividadeForm
from .models import Projeto, Atividade

# Create your views here.

def projeto_list(request):
    context = {'projeto_list':Projeto.objects.all()}
    return render(request, "q6/projeto_list.html", context)

def projeto_form(request, id = 0):
    if request.method == "GET":
        if id == 0: 
            form = ProjetoForm()
        else: 
            projeto = Projeto.objects.get(pk = id)
            form = ProjetoForm(instance = projeto)
        return render(request, "q6/projeto_form.html", {'form': form})
    else:
        if id == 0:
            form = ProjetoForm(request.POST)
        else: 
            projeto = Projeto.objects.get(pk = id)
            form = ProjetoForm(request.POST, instance = projeto)
        if form.is_valid(): 
            form.save()
        return redirect('/q6/projeto/list')            

def atividade_list(request):
    context = {'atividade_list':Atividade.objects.all()}
    return render(request, "q6/atividade_list.html", context)

def atividade_form(request, id = 0):
    if request.method == "GET":
        if id == 0: 
            form = AtividadeForm()
        else: 
            atividade = Atividade.objects.get(pk = id)
            form = AtividadeForm(instance = atividade)
        return render(request, "q6/atividade_form.html", {'form': form})
    else:
        if id == 0:
            form = AtividadeForm(request.POST)
        else: 
            atividade = Atividade.objects.get(pk = id)
            form = AtividadeForm(request.POST, instance = atividade)
        if form.is_valid(): 
            form.save()
        return redirect('/q6/atividade/list')   

