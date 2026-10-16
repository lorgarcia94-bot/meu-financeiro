-- Execute no SQL Editor do Supabase, com RLS habilitado.
create table if not exists public.finance_data (
 user_id uuid primary key references auth.users(id) on delete cascade,
 payload jsonb not null default '{}'::jsonb,
 updated_at timestamptz not null default now()
);
alter table public.finance_data enable row level security;
revoke all on public.finance_data from anon;
grant select, insert, update on public.finance_data to authenticated;
drop policy if exists "owner read" on public.finance_data;
drop policy if exists "owner insert" on public.finance_data;
drop policy if exists "owner update" on public.finance_data;
create policy "owner read" on public.finance_data for select to authenticated using ((select auth.uid()) = user_id);
create policy "owner insert" on public.finance_data for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "owner update" on public.finance_data for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
