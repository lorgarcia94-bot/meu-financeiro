# Meu Financeiro Cloud — publicação

**Status: preparado para publicar; ainda não hospedado.**

1. Crie um projeto Supabase, preferencialmente na região mais próxima. Em **SQL Editor**, execute `schema.sql`.
2. Em **Authentication → Providers**, habilite Email (recomenda-se confirmar e-mail). Configure **Site URL** com o endereço HTTPS que a Vercel fornecer e adicione-o às URLs de redirecionamento.
3. Em **Project Settings → API**, copie a **Project URL** e a chave **publishable** (ou **anon**) para `config.js`. **Nunca** insira a chave `service_role` nem senhas bancárias.
4. Crie um projeto Vercel para este diretório (ou envie os arquivos para um repositório GitHub privado e importe na Vercel). Framework: **Other**; diretório raiz: este diretório. Deploy. Confirme o endereço HTTPS.
5. Abra a URL HTTPS, crie sua conta e confirme seu e-mail, se solicitado. A primeira conta começa com os dados iniciais do projeto, não com seu histórico do navegador antigo.
6. Para migrar os lançamentos, na versão antiga baixe **Backup JSON**; na nova abra **Previsões e saldos → Restaurar backup** e selecione o arquivo. Esse procedimento substitui os dados novos pela cópia antiga.
7. No iPhone (Safari), abra o endereço HTTPS → Compartilhar → **Adicionar à Tela de Início**.

**Importante:** alterações são enviadas à nuvem ao clicar nos controles de salvar, mas a V2 não faz mesclagem simultânea de edições em dois dispositivos; evite editar em ambos ao mesmo tempo e atualize a página ao trocar de dispositivo. Mantenha backups periódicos.

**Não publique seus PDFs, extratos, chaves secretas, JSON de backup ou senhas no projeto.**
