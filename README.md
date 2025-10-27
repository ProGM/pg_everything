# Full-Stack PostgreSQL Pokédex

This is a simple Pokédex application built entirely with PostgreSQL, utilizing the `pg_graphql` extension to create a GraphQL API and the `omni_httpd` extension to create a REST API. The application allows users to list, view, search, and create Pokémon entries, as well as find Pokémon by location and similar images.

For full details, see the [slides](slides.md) explaining how to build a full-stack application using PostgreSQL.

## Features
- User authentication and authorization
- GraphQL API for flexible querying
- Full-text and vector similarity search to find Pokémon

## Setup Instructions
1. **Clone the Repository**
```bash
git clone https://github.com/ProGM/pg_everything.git
cd pg_everything
```

2. **Set Up Environment Variables**
Create a `.env.devcontainer` file in the root directory and add the following variables:
```bash
DATABASE_URL=postgresql://vscode:vscode@localhost:5432/vscode
OPENAI_API_KEY=your_openai_api_key
ADMIN_EMAIL=admin@example.com
ADMIN_PASSWORD=adminpassword
```

3. **Build and Start the Dev Container**
Use VSCode to open the folder in a dev container. This will install all necessary extensions and dependencies.

4. **Initialize the Database**
Run the following commands to set up the database schema and endpoints:
```bash
script/prepare
```

5. **Access the Application**
- GraphQL API: `http://localhost:8080/graphql`
- Login: `http://localhost:8080/login`
- Static Files: `http://localhost:8080/static/`

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
