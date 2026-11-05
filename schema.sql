-- รันใน Supabase > SQL Editor
create table public.transactions (
  id uuid primary key,
  user_id uuid not null default auth.uid() references auth.users(id) on delete cascade,
  t text not null check (t in ('i','e')),
  date date not null,
  amt numeric(14,2) not null check (amt > 0),
  cat text not null,
  note text not null default '',
  ts bigint not null
);
create table public.goals (
  id uuid primary key,
  user_id uuid not null default auth.uid() references auth.users(id) on delete cascade,
  name text not null,
  target numeric(14,2) not null default 0,
  ts bigint not null
);
create table public.savings (
  id uuid primary key,
  user_id uuid not null default auth.uid() references auth.users(id) on delete cascade,
  goal text not null default 'general',
  t text not null check (t in ('d','w')),
  date date not null,
  amt numeric(14,2) not null check (amt > 0),
  note text not null default '',
  ts bigint not null
);
create index on public.transactions (user_id, date);
create index on public.savings (user_id, date);

alter table public.transactions enable row level security;
alter table public.goals enable row level security;
alter table public.savings enable row level security;

create policy "own rows" on public.transactions for all to authenticated
  using (user_id = auth.uid()) with check (user_id = auth.uid());
create policy "own rows" on public.goals for all to authenticated
  using (user_id = auth.uid()) with check (user_id = auth.uid());
create policy "own rows" on public.savings for all to authenticated
  using (user_id = auth.uid()) with check (user_id = auth.uid());
