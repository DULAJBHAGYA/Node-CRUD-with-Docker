# 🐳 Node.js CRUD Application with Docker

This project is a **Node.js CRUD (Create, Read, Update, Delete) API** integrated with a **PostgreSQL** database using Docker and Docker Compose. The application allows basic CRUD operations on a database and can be easily containerized and deployed using Docker.

## 📋 Features

- 🛠️ **CRUD Operations**: Create, Read, Update, Delete records in the PostgreSQL database.
- 🐳 **Dockerized Setup**: Easily run the application in isolated containers.
- 🔄 **Database Integration**: PostgreSQL container for persistent data storage.
- 📊 **Environment Variables**: Configure database connection securely.

## 🏗️ Project Structure

```
├── Dockerfile                 # Docker configuration for the Node.js app
├── docker-compose.yaml        # Docker Compose setup for multi-container app
├── package.json               # Node.js dependencies and scripts
├── app.js                     # Main application logic
└── db.js                      # PostgreSQL connection using node-pg
```

## 📦 Prerequisites

Ensure you have the following installed on your system:

- **Node.js** (v20.17.0 or later)
- **Docker** (latest version)
- **Docker Compose** (included with Docker Desktop)

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/Node-CRUD-with-Docker.git
cd Node-CRUD-with-Docker
```

### 2. Set Up Environment Variables

Ensure your `docker-compose.yaml` includes the correct PostgreSQL credentials:

```yaml
version: '3'
services:
  db:
    image: postgres
    environment:
      POSTGRES_USER: user123
      POSTGRES_PASSWORD: Dulaj98
      POSTGRES_DB: db123
  app:
    image: my-node-app
    ports:
      - "13000:3000"
    environment:
      DB_HOST: db
      DB_PORT: 5432
      DB_USER: user123
      DB_PASSWORD: Dulaj98
      DB_NAME: db123
    depends_on:
      - db
```

### 3. Build and Run Containers

```bash
docker-compose up --build
```

The Node.js app will be available at:

👉 `http://localhost:13000`

### 4. Verify Containers

Check if the containers are running successfully:

```bash
docker ps
```

## 🛠️ Useful Docker Commands

- **Check logs**: `docker-compose logs app`
- **Stop containers**: `docker-compose down`
- **Restart containers**: `docker-compose up --build`
- **Access database shell**:

```bash
docker exec -it <db_container_id> psql -U user123 -d db123
```

## 🧹 Cleanup

Stop and remove containers:

```bash
docker-compose down -v
```

## 📜 License

This project is licensed under the **MIT License**.

## 🤝 Contributing

Feel free to submit issues, fork the repository, and open pull requests!

## 📧 Contact

For inquiries, contact [Your Name](mailto:your.email@example.com).

