from django import forms
from .models import Projeto, Atividade

class ProjetoForm(forms.ModelForm):
    class Meta:
        model = Projeto
        # fields = '__all__'
        fields = {'nome', 'descricao', 'codresponsavel', 'coddepto', 'datainicio', 'datafim'}
        labels = {
            'nome':'Nome do projeto',
            'descricao':'Descrição do projeto',
            'codresponsavel':'Código do responsável',
            'coddepto':'Código do departamento',
            'datainicio':'Data de início do projeto',
            'datafim':'Data do fim do projeto'
        }

    def __init__(self, *args, **kwargs):
        super(ProjetoForm, self).__init__(*args, **kwargs)
        self.fields['datafim'].required = False

class AtividadeForm(forms.ModelForm):
    class Meta:
        model = Atividade
        # fields = '__all__'
        fields = {'descricao', 'codprojeto', 'datainicio', 'datafim'}
        labels = {
            'descricao':'Descrição da atividade',
            'codprojeto':'Código do projeto',
            'datainicio':'Data de início da atividade',
            'datafim':'Data do fim da atividade'
        }

    def __init__(self, *args, **kwargs):
        super(AtividadeForm, self).__init__(*args, **kwargs)
        self.fields['datafim'].required = False

