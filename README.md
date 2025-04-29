# Java E-Commerce Web Application

This is a basic e-commerce web application developed using **Java EE** with **Maven** and follows the **MVC (Model-View-Controller)** architecture. The project was built as a learning experience to explore backend development with **JDBC**, **Apache Tomcat**, and Java web technologies. It features a simple product management system with separate functionalities for admins and users.

## Features

### Admin Panel
- Full **CRUD operations** for managing products.
- Admin can add, edit, or delete products from the inventory.
- Products added by the admin appear on the user dashboard.

### User Dashboard
- View all available products posted by the admin.
- Add products to a virtual cart (static simulation).
- Simple, static UI for browsing products.

## Tech Stack

- **Java EE** – Core language for backend development.
- **Maven** – Project management and build tool.
- **JDBC** – For connecting Java application to the database.
- **Apache Tomcat** – Server for deploying the application.
- **Servlets & JSP** – For backend logic and view rendering.
- **HTML/CSS/JS** – For static frontend UI.

## Architecture

Follows the **MVC pattern**:
- **Model**: Contains business logic and database connectivity (`Product.java`, `DBConnection.java`).
- **View**: JSP files to display data to users.
- **Controller**: Servlets to handle HTTP requests and responses.

## Project Structure
/src/main/java /controller AdminServlet.java UserServlet.java /model Product.java DBConnection.java /src/main/webapp /admin addProduct.jsp editProduct.jsp /user viewProducts.jsp cart.jsp index.jsp pom.xml

## Setup Instructions

1. **Clone the repository** or download the project into your local development environment.

2. **Import the project** as a Maven project in your IDE (e.g., IntelliJ IDEA or Eclipse).

3. **Set up MySQL database**:
   - Create a database.
   - Use a `products` table with fields like `id`, `name`, `description`, `price`.
   - Configure DB credentials in `DBConnection.java`.

4. **Build the project** using Maven:
   ```bash
   mvn clean install

5. Limitations
Static frontend design.
No payment integration or dynamic cart.
Not optimized for mobile/responsive design.

6.Future Enhancements
Use JSP tag libraries or integrate Spring MVC for advanced architecture.
Implement payment gateway or order processing.
Enhance UI using Bootstrap or React.

7. Author
Developed by Manvi Chaturvedi as a part of a personal learning project.
