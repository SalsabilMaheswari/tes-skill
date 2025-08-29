# Urban Farming Management System
 
## Instruksi Install dan Run

### 1. Clone Repository
```bash
git clone https://github.com/salsabilmaheswari/tes-skill.git
cd tes-skill
```

### 2. Setup Database (MySQL)
1. Buat database baru di MysQL:
```sql
CREATE DATABASE urbanfarming;
```
2. Lalu import file SQL (urbanfarming.sql)
* Jika menggunakan phpMyAdmin, pilih database **urbanfarming** yang sebelumnya sudah dibuat → menu Import → pilih file urbanfarming.sql
* Jika menggunakan command line, jalankan:
```
mysql -u root -p urbanfarming < urbanfarming.sql
```

### 3. Setup Backend
```bash
cd backend
npm install
```
