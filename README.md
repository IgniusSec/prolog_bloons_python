# Bloons TD 6 Expert System - Prolog Web UI

Este projeto é um **Sistema Especialista** desenvolvido em **Prolog**, integrado a uma interface web moderna utilizando **Django**. O sistema realiza inferências lógicas para aconselhar jogadores sobre estratégias no jogo _Bloons Tower Defense 6 (BTD6)_, cumprindo os requisitos acadêmicos da disciplina de Paradigmas de Linguagens de Programação.

## 🚀 Funcionalidades Principais

- **Recomendação de Esquadrão (`passa_fase/2`):** Analisa as ameaças de uma fase (Bloons camuflados, chumbo, etc.) e sugere um time de torres capaz de neutralizá-las.
- **Análise de Propriedades:** Identifica torres com detecção de camuflados, capacidade de estourar chumbo ou gelo, e analisa imunidades de Bloons.
- **Gestão de Economia:** Consultas detalhadas sobre a geração de renda por torre e caminhos de upgrade mais eficientes.
- **Editor de Base de Dados:** Interface integrada para modificar fatos e regras no arquivo `.pl` em tempo real, com recarregamento automático do motor lógico.
- **Interface Moderna:** Dashboard interativo com botões de consulta rápida, paginação de resultados e suporte a **Dark Mode**.

## 🛠️ Tecnologias Utilizadas

- **Lógica:** [SWI-Prolog](https://www.swi-prolog.org/) (Motor de inferência).
- **Backend:** [Django (Python)](https://www.djangoproject.com/) (Framework web).
- **Integração:** [PySwip](https://github.com/yprolog/pyswip) (Ponte entre Python e Prolog).
- **Frontend:** HTML5, Tailwind CSS e JavaScript.

## 📋 Pré-requisitos

Para rodar este projeto, você precisa ter instalado:

1. **SWI-Prolog:** O executável `swipl` deve estar configurado no **PATH** do seu sistema operacional.
2. **Python 3.10+**
3. **Dependências:**

   ```bash
   pip install django pyswip
   ```

## 🔧 Instalação e Execução

1. **Navegue até a pasta do projeto Django:**

   ```bash
   cd django/prolog
   ```

2. **Inicie o servidor de desenvolvimento:**

   ```bash
   python manage.py runserver
   ```

3. **Acesse no navegador:**
   Abra o endereço `http://127.0.0.1:8000`.

## 📂 Estrutura do Repositório

```text
.
├── django/prolog/
│   ├── config/           # Configurações do Django (settings, urls)
│   ├── core/
│   │   ├── knowledge/    # Base de Conhecimento (baseBloonsTD6.pl)
│   │   ├── services/     # prolog_service.py (Gestão do motor Prolog)
│   │   ├── templates/    # Interface UI (HTML)
│   │   └── views.py      # Processamento de queries e views
│   └── manage.py         # Utilitário de gestão do Django
└── README.md             # Documentação do projeto
```
