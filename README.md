# 🤖 Claude Skills — AI Orchestration Framework

> Um framework reutilizável de skills para o Claude AI, projetado para aumentar a produtividade e padronizar a automação de tarefas com Inteligência Artificial.

---

## 📋 Índice

- [Visão Geral](#visão-geral)
- [Estrutura do Repositório](#estrutura-do-repositório)
- [Como Funciona](#como-funciona)
  - [O Arquivo Claude.md](#o-arquivo-claudemd)
  - [As Skills](#as-skills)
- [Primeiros Passos](#primeiros-passos)
- [Criando uma Nova Skill](#criando-uma-nova-skill)
- [Skills Disponíveis](#skills-disponíveis)
- [Contribuindo](#contribuindo)

---

## Visão Geral

Este repositório implementa um sistema de **AI Orchestration** baseado em Custom Claude Skills. O objetivo é fornecer ao Claude um conjunto de habilidades especializadas e contextualizadas para o projeto, tornando a interação com a IA mais precisa, consistente e produtiva.

Em vez de repetir instruções complexas a cada sessão, as skills encapsulam processos inteiros em arquivos Markdown reutilizáveis. O Claude consulta automaticamente estas skills antes de executar tarefas, garantindo qualidade e aderência aos padrões do projeto.

---

## Estrutura do Repositório

```
claude-skills/
│
├── Claude.md                  # System Prompt principal — contexto e regras globais do Claude
│
├── .claude/
│   └── skills/                # Pasta de skills reutilizáveis
│       └── skill-creator.md   # Skill para criação de novas skills
│
└── README.md                  # Esta documentação
```

---

## Como Funciona

### O Arquivo Claude.md

O arquivo `Claude.md` na raiz do projeto funciona como o **System Prompt** do Claude para este repositório. Ele define:

- **Contexto do Projeto:** Quem é o Claude dentro deste projeto e qual é seu objetivo principal.
- **Regras de Ouro:** Um conjunto de regras de comportamento que o Claude segue em todas as interações, incluindo a obrigação de consultar as skills antes de tarefas complexas.
- **Hook de Segurança:** Uma restrição explícita que proíbe o Claude de acessar qualquer arquivo ou diretório fora da raiz deste repositório, protegendo o sistema e dados sensíveis.
- **Guia de Skills:** Instruções sobre como e quando utilizar as skills disponíveis.

> **Como personalizar:** Edite o `Claude.md` substituindo os placeholders `[NOME_DO_PROJETO]`, `[OBJETIVO_PRINCIPAL]`, `[LINGUAGEM_PRINCIPAL]`, `[FRAMEWORK]` e `[NOME_DA_EQUIPE]` com as informações do seu projeto.

### As Skills

As **skills** são arquivos Markdown localizados em `.claude/skills/`. Cada skill encapsula um processo ou capacidade específica, contendo:

| Seção                  | Descrição                                                      |
|------------------------|----------------------------------------------------------------|
| **Descrição**          | O que a skill faz e qual problema resolve                      |
| **Quando Usar**        | Situações que devem ativar esta skill                          |
| **Inputs Esperados**   | Informações que o Claude precisa receber para executar a skill |
| **Outputs Gerados**    | Artefatos ou respostas que a skill produz                      |
| **Instruções**         | Passos sequenciais e precisos de execução                      |
| **Exemplos**           | Casos de uso concretos                                         |

O Claude é instruído (via `Claude.md`) a verificar a pasta `.claude/skills/` antes de executar qualquer tarefa complexa, garantindo que o processo padronizado seja seguido.

---

## Primeiros Passos

**1. Clone o repositório:**
```bash
git clone https://github.com/GuilhermeVieira05/claude-skills.git
cd claude-skills
```

**2. Personalize o `Claude.md`:**

Abra o arquivo `Claude.md` na raiz e substitua os placeholders com as informações do seu projeto:
- `[NOME_DO_PROJETO]` → Nome do seu projeto
- `[OBJETIVO_PRINCIPAL]` → O objetivo central da IA neste contexto
- `[LINGUAGEM_PRINCIPAL]` → Ex: Python, TypeScript, Java
- `[FRAMEWORK]` → Ex: FastAPI, Next.js, Spring Boot
- `[NOME_DA_EQUIPE]` → Nome da sua equipe ou empresa

**3. Configure o Claude:**

Aponte o Claude para o arquivo `Claude.md` como seu system prompt. Em ferramentas como [Claude.ai Projects](https://claude.ai) ou via API, carregue o conteúdo de `Claude.md` como instruções de sistema.

**4. Comece a usar as skills:**

Ao interagir com o Claude, ele consultará automaticamente as skills disponíveis. Você também pode invocar uma skill explicitamente:

> *"Use a skill `skill-creator` para criar uma nova skill de revisão de código."*

---

## Criando uma Nova Skill

Para criar uma nova skill, basta pedir ao Claude:

> *"Crie uma nova skill para [descreva o processo que deseja automatizar]."*

O Claude seguirá as instruções em `.claude/skills/skill-creator.md` para estruturar e salvar a nova skill corretamente.

Se preferir criar manualmente, copie o template de skill disponível em `skill-creator.md` e salve o novo arquivo em `.claude/skills/nome-da-skill.md`.

---

## Skills Disponíveis

| Skill                                              | Descrição                                      |
|----------------------------------------------------|------------------------------------------------|
| [`skill-creator`](.claude/skills/skill-creator.md) | Cria novas skills seguindo o padrão do projeto |

---

## Contribuindo

1. Crie um branch para sua contribuição: `git checkout -b feature/nova-skill`
2. Adicione ou modifique skills em `.claude/skills/`
3. Certifique-se de que cada skill segue o template definido em `skill-creator.md`
4. Abra um Pull Request com uma descrição clara do que a skill faz

---

*Desenvolvido para aumentar a produtividade e a consistência no uso de IA em projetos de software.*
