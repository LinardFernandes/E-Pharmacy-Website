# ePharmacy Web Application

This project is a simple ePharmacy web application developed using PHP, MySQL, JavaScript, Bootstrap, HTML, and CSS. It allows users to browse products (medicines), register an account, log in, change their password, and manage their shopping cart. The application dynamically fetches product information from the database and allows users to add products to their shopping cart.

The frontend of the application is built with HTML, CSS, and Bootstrap for responsive design, while JavaScript is used for client-side interactions such as form validation and handling dynamic cart updates.

## Table of Contents

- [Features](#features)
- [Installation](#installation)
  - [Prerequisites](#prerequisites)
  - [Steps to Install](#steps-to-install)
- [Project Structure](#project-structure)
  - [Important Files](#important-files)
- [How It Works](#how-it-works)
  - [User Registration](#user-registration)
  - [User Login](#user-login)
  - [Product Display](#product-display)
  - [Add to Cart](#add-to-cart)
  - [Change Password](#change-password)
- [How to Contribute](#how-to-contribute)
- [License](#license)
  
## Features
- **User Registration**: Allows new users to register by providing their username, email, password, and address.
- **User Login**: Existing users can log in to their account using their credentials.
- **Change Password**: Users can change their password if they forget it by providing their email and username.
- **Product Display**: The application displays a list of products fetched from a MySQL database.
- **Add to Cart**: Users can add products to their cart by selecting the quantity.
- **Cart Persistence**: The quantity selected for each product is saved and persisted even after reloading the page.

## Installation

### Prerequisites

- **PHP**: Version 7.4 or higher.
- **MySQL**: Version 5.7 or higher.
- **Web Server**: Apache or Nginx (included with XAMPP/WAMP for local development).
- **Composer**: Optional for dependency management.

### Steps to Install

1. Clone the repository to your local machine:
    ```bash
    git clone https://github.com/yourusername/epharmacy.git
    ```

2. Move to the project directory:
    ```bash
    cd epharmacy
    ```

3. Create a MySQL database and import the database schema:
    ```sql
    CREATE DATABASE epharmacy;
    USE epharmacy;
    ```

4. Import the SQL dump (if available) or manually create tables:
    - `userinfo`: Stores user information (username, password, email, and address).
    - `product`: Stores product details (image, name, price, and quantity).
    - `cart_items`: Stores cart items for each user.

5. Update the `config.php` file with your MySQL database credentials:
    ```php
    <?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "epharmacy";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    ?>
    ```

6. Ensure all dependencies (Bootstrap, jQuery, etc.) are included in your project’s `head` section.

7. Run the project by accessing it via `localhost`:
    ```
    http://localhost/epharmacy
    ```
    
## Project Structure
- **login.php**: Handles user login functionality.
- **signup.php**: Handles user registration.
- **changepassword.php**: Allows users to change their password.
- **product.php**: Dynamically displays products from the `product` database table.
- **add_to_cart.php**: Handles adding products to the cart and saving them to the `cart_items` table.
- **deleteacc.php**: Allows users to delete their account.
- **config.php**: Contains database connection settings.

## Important Files
- **config.php**: Contains database connection details.
- **function.php**: Contains helper functions for input validation, authentication, and user registration.
- **add_to_cart.php**: Handles cart functionality (adding items to the cart).
- **deleteacc.php**: Deletes a user account from the database.
- **login.php**: Handles user login.
- **Signup.php**: Contains the user registration logic.
- **Product.php**: Dynamically displays the product information and includes the form to add items to the cart.
- **Change password.php**: Manages user password change requests.

## How It Works

### User Registration:
- Users can register by filling out a form in `signup.php`. Their details are stored in the `userinfo` table in the database.

### User Login:
- Users log in using their credentials. On successful login, their session is started, and they are redirected to the product page.

### Product Display:
- The products are fetched from the `product` table in the database and displayed dynamically in `Product.php`. Each product has an "Add to Cart" button with a quantity input field.

### Add to Cart:
- Users can add products to their cart by selecting the desired quantity and clicking the "Add to Cart" button. The quantity is saved in the session, so it persists across page reloads.

### Change Password:
- Users can change their password by providing their username and email in `Change password.php`. The password is updated in the `userinfo` table.

## How to Contribute
Feel free to fork this repository and submit pull requests. Contributions are welcome.

## License
This project is open-source and free to use. Feel free to modify and distribute it as needed.
