# Checkmate - Test Case Management Tool

Welcome to Checkmate! 🎉

This Test Case Management Tool is designed to address the challenges faced by teams in managing and executing test cases with the highest level of availability and reliability. It aims to streamline the testing process, offering robust features, seamless integrations, migration, and user-friendly and intuitive design.

## 📌 Features

- ✅ Effortlessly manage test cases and categorize them based on labels, squads, sections, priority, and more.
- ✅ Create test runs, update statuses, track progress, download reports, and analyze historical data.
- ✅ Provides integration APIs to seamlessly connect with your testing pipeline.
- ✅ Role-Based Access Control (RBAC) for secure and controlled usage.
- ✅ Integrated Google Login for a hassle-free authentication experience.

## 🔗 Quick Links

- [Detailed Documentation](https://checkmate.dreamsportslabs.com/)
- [Installation Guide](https://checkmate.dreamsportslabs.com/project/setup/)
- [Product Guide](https://checkmate.dreamsportslabs.com/guides/projects/)
- [Connect with us on discord](https://discord.gg/wBQXeYAKNc)

## 📦 Installation

### Pre-requisites

1. Docker Desktop
2. Google OAuth Application

### Docker Setup

1. Clone the repository:
   ```sh
   ```
2. Create an .env file at root level, based on .env.example.
3. Install dependencies
   ```sh
   yarn install
   ```
4. Set up the application and database:
   ```sh
   yarn docker:setup
   ```
   - Create both the application and database containers using Docker.
   - Seed the database with initial data.
5. App will be started on http://localhost:3000

### ⏯️ Product Videos

   <details>
   <summary>Create Projects</summary>

![Project Management](docs/src/assets/create-project.gif)

   </details>
<details>
    <summary>Add Tests</summary>
  
![Add Tests](docs/src/assets/add-test.gif)
</details>
<details>
    <summary>Create Runs</summary>

![Create Runs](docs/src/assets/add-run.gif)

</details>
<details>
    <summary>Manage Runs</summary>

![Manage Runs](docs/src/assets/test-status.gif)

</details>

### 📖 API Documentation

[Postman](https://documenter.getpostman.com/view/23217307/2sAYXFgwRt) collection of APIs is currently available, comprehensive documentation is in progress.

### ⚙️ TechStack Used:

- <span style="display: flex; align-items: center;">
  <img src="app/assets/remix.png" alt="Remix" style="width:16px; height:auto; margin-right:5px;"> 
  <a href="https://remix.run/" target="_blank">Remix</a>
  </span>

- <span style="display: flex; align-items: center;">
  <img src="app/assets/drizzle.png" alt="Drizzle" style="width:16px; height:auto; margin-right:5px;"> 
  <a href="https://orm.drizzle.team/" target="_blank">Drizzle</a>
  </span>

- <span style="display: flex; align-items: center;">
  <img src="app/assets/mysql.png" alt="MySQL" style="width:16px; height:auto; margin-right:5px;"> 
  <a href="https://www.mysql.com/" target="_blank">MySQL</a>
  </span>

- <span style="display: flex; align-items: center;">
  <img src="app/assets/shadcn.png" alt="Shadcn" style="width:16px; height:auto; margin-right:5px;"> 
  <a href="https://ui.shadcn.com/" target="_blank">Shadcn</a>
  </span>

- <span style="display: flex; align-items: center;">
  <img src="app/assets/casbin.png" alt="Casbin(RBAC)" style="width:16px; height:auto; margin-right:5px;"> 
  <a href="https://casbin.org/" target="_blank">Casbin (RBAC)</a>
  </span>

## <img src="app/assets/d11-logo.png" style="width:24px; height:auto; padding-top:8px;" /> Created by DreamSportsLabs

DreamSportsLabs is committed to building open-source tools that empower developers and businesses. Learn more about us at our website.

## 🚀 Contribute to Checkmate

Checkmate is an open-source project and welcomes contributions from the community. For details on how to contribute, please see our [guide to contributing](/CONTRIBUTING.md).

## ⚖️ License

This project is published under the [MIT License](/LICENSE).

## ✉️ Contact

If you need feedback or support, reach out via the [Issue Tracker]() or [Discord](https://discord.gg/wBQXeYAKNc).
