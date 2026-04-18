# Skill: Criador de Skills (Skill Creator)

## Descrição

Esta skill instrui o Claude sobre como criar novas skills para este repositório, garantindo padronização, qualidade e rastreabilidade de todas as capacidades adicionadas ao framework.

---

## Quando Usar Esta Skill

Utilize esta skill sempre que:
- Um usuário solicitar a criação de uma nova skill.
- Você identificar uma tarefa repetitiva que poderia ser encapsulada em uma skill reutilizável.
- For necessário documentar um processo complexo para uso futuro.

---

## Inputs Esperados

Antes de criar uma nova skill, colete as seguintes informações do usuário:

| Input              | Descrição                                                                 | Obrigatório |
|--------------------|---------------------------------------------------------------------------|-------------|
| `nome_da_skill`    | Nome descritivo da skill em kebab-case (ex.: `code-reviewer`)            | ✅ Sim      |
| `descricao`        | Breve descrição do objetivo da skill (1-2 frases)                        | ✅ Sim      |
| `contexto_de_uso`  | Em quais situações esta skill deve ser ativada                            | ✅ Sim      |
| `inputs`           | Quais informações/parâmetros a skill precisa receber para funcionar       | ✅ Sim      |
| `outputs`          | Quais artefatos, respostas ou ações a skill deve produzir                 | ✅ Sim      |
| `exemplos`         | Exemplos concretos de uso (opcional, mas recomendado)                     | ⬜ Opcional |

---

## Processo de Criação

Siga este processo passo a passo para criar uma nova skill:

### Passo 1 — Definir o Nome do Arquivo

- Use o formato `kebab-case`: apenas letras minúsculas separadas por hífens.
- O nome deve ser descritivo e indicar claramente a função da skill.
- ✅ **Correto:** `code-reviewer.md`, `test-generator.md`, `docker-helper.md`
- ❌ **Incorreto:** `code_reviewer.md` (underscores), `CodeReviewer.md` (PascalCase), `code reviewer.md` (espaços)

### Passo 2 — Criar o Arquivo na Pasta Correta

- **Caminho obrigatório:** `.claude/skills/<nome_da_skill>.md`
- Nunca salve skills fora desta pasta.

### Passo 3 — Preencher o Template da Skill

Use o template abaixo como base para todas as novas skills:

```markdown
# Skill: [Nome da Skill]

## Descrição

[Descrição objetiva do que esta skill faz e qual problema resolve.]

---

## Quando Usar Esta Skill

[Liste as situações específicas em que esta skill deve ser ativada.]

---

## Inputs Esperados

| Input       | Descrição                          | Obrigatório |
|-------------|------------------------------------|-------------|
| `input_1`   | [Descrição do input 1]             | ✅ Sim      |
| `input_2`   | [Descrição do input 2]             | ⬜ Opcional |

---

## Outputs Gerados

| Output      | Descrição                          | Formato     |
|-------------|------------------------------------|-------------|
| `output_1`  | [Descrição do output 1]            | [Formato]   |

---

## Instruções de Execução

[Passos detalhados que o Claude deve seguir ao executar esta skill.
Seja específico, sequencial e sem ambiguidades.]

### Passo 1 — [Nome do Passo]
[Descrição detalhada]

### Passo 2 — [Nome do Passo]
[Descrição detalhada]

---

## Exemplos

### Exemplo 1
**Input:** [Descreva o input]
**Output esperado:** [Descreva o output]

---

## Restrições e Avisos

- [Liste limitações conhecidas desta skill]
- [Liste cuidados que o usuário deve ter]
```

### Passo 4 — Verificar a Qualidade da Skill

Antes de finalizar, confirme que a skill criada:

- [ ] Tem um nome de arquivo em kebab-case.
- [ ] Está salva em `.claude/skills/`.
- [ ] Tem uma descrição clara e objetiva.
- [ ] Define todos os inputs necessários.
- [ ] Define todos os outputs esperados.
- [ ] Contém instruções de execução sequenciais e sem ambiguidade.
- [ ] Inclui pelo menos um exemplo de uso.

### Passo 5 — Informar o Usuário

Após criar a skill, informe ao usuário:
- O caminho completo do arquivo criado.
- Um resumo do que a skill faz.
- Como ativá-la em sessões futuras.

---

## Outputs Gerados por Esta Skill

| Output               | Descrição                                              | Formato  |
|----------------------|--------------------------------------------------------|----------|
| Arquivo de skill     | Novo arquivo `.md` salvo em `.claude/skills/`          | Markdown |
| Confirmação ao usuário | Mensagem com localização e resumo da skill criada    | Texto    |

---

## Restrições e Avisos

- Todas as skills **devem** ser salvas exclusivamente em `.claude/skills/`. Nunca crie skills em outros diretórios.
- Não crie skills com funcionalidades duplicadas. Antes de criar uma nova, verifique se já existe uma skill similar em `.claude/skills/`.
- Skills devem ser escritas em Markdown e seguir o template definido acima para garantir consistência.
