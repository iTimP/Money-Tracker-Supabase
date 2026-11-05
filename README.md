# สมุดบัญชีรายวัน (Supabase)

เว็บแอปรายรับ-รายจ่ายรายวัน ปฏิทินย้อนหลัง และเงินเก็บ เก็บข้อมูลบน Supabase มีระบบสมัคร/เข้าสู่ระบบ ข้อมูลของแต่ละคนแยกกันด้วย Row Level Security ซิงค์ได้ทุกเครื่อง

## ตั้งค่า Supabase
1. สร้างโปรเจกต์ที่ https://supabase.com
2. ไปที่ SQL Editor แล้วรันไฟล์ `supabase/schema.sql`
3. ไปที่ Project Settings > API คัดลอก **Project URL** และ **anon public key** ใส่ในไฟล์ `config.js`
4. (ทางเลือก) Authentication > Providers > Email: ปิด "Confirm email" ถ้าอยากสมัครแล้วใช้ได้ทันที
5. หลังเผยแพร่แล้ว ไปที่ Authentication > URL Configuration แล้วตั้ง **Site URL** เป็นลิงก์ GitHub Pages ของคุณ เพื่อให้ลิงก์ยืนยันอีเมลพากลับมาถูกที่

## เผยแพร่ด้วย GitHub Pages
1. สร้าง repository บน GitHub แล้วอัปโหลดไฟล์ทั้งหมด (รวมโฟลเดอร์ `.github`) ไปที่ branch `main`
2. Settings > Pages > Source เลือก **GitHub Actions**
3. เว็บจะอยู่ที่ `https://<ชื่อผู้ใช้>.github.io/<ชื่อ repo>/`

## หมายเหตุ
- ถ้าเคยใช้เวอร์ชันเก็บในเบราว์เซอร์บนโดเมนเดียวกัน ข้อมูลเดิมจะถูกนำเข้าให้อัตโนมัติเมื่อเข้าสู่ระบบครั้งแรก (ถ้าบัญชีใหม่ยังไม่มีข้อมูล)
- anon key เปิดเผยได้ แต่ห้ามใส่ service_role key ใน repo
