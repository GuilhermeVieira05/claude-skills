# Firstmate

> "Talk to one agent. Ship with a crew."

Multi-agent orchestration layer para Claude Code. Você fala com um único agente (o "first mate") que despacha e supervisiona uma frota de sub-agentes em paralelo, cada um em seu próprio git worktree isolado.

## Como funciona

- Você dá tarefas → o first mate divide e despacha para sub-agentes ("crew")
- Cada agente roda em janela tmux separada, visível e interativa
- Cada um trabalha em um worktree git limpo e isolado
- O first mate supervisiona, escalona decisões reais para você, e entrega PRs/relatórios

## Instalação

Já instalado em `~/firstmate`. Requer tmux (já instalado via brew).

```bash
# Para usar: abrir Claude Code dentro do ~/firstmate
cd ~/firstmate
claude  # ou abrir pelo IDE com ~/firstmate como working directory
```

## Repositório

https://github.com/kunchenguid/firstmate

## Notas

- Não é um SKILL.md convencional — é um "agent distro" completo
- O CLAUDE.md dentro de ~/firstmate transforma o agente no "first mate"
- Projetos ficam em ~/firstmate/projects/ (clones read-only para o first mate)
- Estado da frota em ~/firstmate/state/ e ~/firstmate/data/
