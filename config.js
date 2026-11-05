// ใส่ค่าจาก Supabase > Project Settings > API
// anon key เปิดเผยได้ เพราะข้อมูลถูกป้องกันด้วย Row Level Security (ห้ามใส่ service_role key เด็ดขาด)
window.APP_CONFIG = {
  url: 'https://YOUR-PROJECT-REF.supabase.co',
  anonKey: 'YOUR-ANON-PUBLIC-KEY'
};
