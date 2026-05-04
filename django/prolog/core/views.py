from django.shortcuts import render, redirect
from core.services.prolog_service import get_prolog, reset_prolog
from django.contrib import messages
import os


def home(request):
    return render(request, "home.html")


def dados(request):
    # caminho absoluto do arquivo
    BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    file_path = os.path.join(BASE_DIR, "core", "knowledge", "baseBloonsTD6.pl")

    if request.method == "POST":
        novo_conteudo = request.POST.get("conteudo")

        try:
            with open(file_path, "w", encoding="utf-8") as f:
                f.write(novo_conteudo)
                reset_prolog()

            messages.success(request, "Arquivo salvo com sucesso.")

        except Exception as e:
            messages.error(request, f"Erro ao salvar: {e}")

        return redirect("base-dados")

    # GET → carregar conteúdo
    try:
        with open(file_path, "r", encoding="utf-8") as f:
            conteudo = f.read()
    except Exception as e:
        conteudo = f"Erro ao carregar arquivo: {e}"

    return render(request, "base_dados.html", {"conteudo": conteudo})


def format_results(results):
    if not results:
        return "Nenhum resultado."

    lines = []
    for r in results:
        formatted_items = []
        for k, v in r.items():
            if isinstance(v, bytes):
                v = v.decode("utf-8")
            formatted_items.append(f"{k} = {v}")

        line = ", ".join(formatted_items)
        lines.append(line)

    return "\n".join(lines)


def execute_query(request):
    result = None
    query = None

    if request.method == "POST":
        query = request.POST.get("query")

        # normaliza para aspas simples
        if query:
            query = query.replace('"', "'")

        prolog = get_prolog()

        try:
            raw = list(prolog.query(query))

            if not raw:
                result = "false"
            elif raw == [{}]:
                result = "true"
            else:
                result = format_results(raw)

        except Exception as e:
            messages.error(request, str(e))

    return render(request, "home.html", {"result": result, "query": query})
