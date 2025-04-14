# Employee Management System (EMS)

A full-stack employee management system with a **frontend** built using React (in `employee-task-management-ui`), a **backend** built using Node.js and Express (in `employee-management-system`), and a **MySQL database** (SQL scripts in the `Database` folder).

---

## 🛠️ Project Structure

```
ems/
├── employee-task-management-ui/   # Frontend (React)
├── employee-management-system/    # Backend (Node.js + Express)
├── Database/                      # SQL scripts
```

---

## ✅ Prerequisites

Ensure the following are installed:

- [Node.js](https://nodejs.org/en/download)  
  **Setup Guide:** [How to Install Node.js](https://www.youtube.com/watch?v=06X51c6WHsQ)
- [npm](https://www.npmjs.com/)
- [pnpm](https://pnpm.io/) — Install using: `npm install -g pnpm`
- [MySQL](https://dev.mysql.com/downloads/installer/)  
  **Setup Guide:** [How to Install MySQL](https://www.youtube.com/watch?v=1VyufR2x1ac)

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/pavankumar444/EMS
cd EMS
```

---

### 2. Connect the MySQL Database Files

Before running the frontend and backend, you need to import the database files to MySQL.

#### 1. Update Database Configuration

In the file:

```
ems/employee-management-system/misc/db.js
```

Locate line 16 and **replace the MySQL password** under the `root` user with your own MySQL root password.

---

#### 2. Log into MySQL CLI

Open the MySQL Command Line:

```bash
mysql -u root -p
```

Then enter your MySQL root password when prompted.

---

#### 3. Create the Database

```sql
CREATE DATABASE employee_management_system;
```

Exit the CLI by typing `exit`.

---

#### 4. Import SQL Files

From your system terminal or command prompt, run the following commands to import the necessary SQL files into the database:

```bash
mysql -u root -p employee_management_system "path\to\EMS\Database\EMS_department.sql"
mysql -u root -p employee_management_system "path\to\EMS\Database\EMS_designation.sql"
mysql -u root -p employee_management_system "path\to\EMS\Database\EMS_employee_task.sql"
mysql -u root -p employee_management_system "path\to\EMS\Database\EMS_employees.sql"
mysql -u root -p employee_management_system "path\to\EMS\Database\EMS_organization.sql"
mysql -u root -p employee_management_system "path\to\EMS\Database\EMS_project.sql"
mysql -u root -p employee_management_system "path\to\EMS\Database\EMS_tasks.sql"
mysql -u root -p employee_management_system "path\to\EMS\Database\EMS_users.sql"
```

> ⚠️ Replace `"path\to\EMS\Database\..."` with the actual full path on your computer.

---

### 3. Setup the Backend (Run First)

Open a terminal and navigate to the backend folder:

```bash
cd employee-management-system
npm install
pnpm run dev
```

The backend will now run at [http://localhost:3030](http://localhost:3030).

---

### 4. Setup the Frontend

Open another terminal and navigate to the frontend folder:

```bash
cd employee-task-management-ui
npm install
npm start
```

---

## 🧑‍💻 Author

**Pavan Kumar**

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).
