
# school_management

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# School Management Software

This README provides instructions for setting up and running the School Management Software application.

## Ruby Version

- Ensure Ruby 3.2.1 is installed. If not, use the following commands:
    ```sh
    rvm install 3.2.1
    rvm use 3.2.1 --default
    ```

## System Dependencies

- **PostgreSQL:** Ensure PostgreSQL is installed and running.
- **Node.js:** Install Node.js for managing JavaScript packages.
- **Yarn (Optional):** Install Yarn if you want to manage JavaScript packages.
## Database Setup
1. Configure PostgreSQL:

- Create a PostgreSQL User and Databases:

- Open a terminal and run the following commands to create a PostgreSQL user and databases. Replace Sampada with your PostgreSQL username if different.

* rails db:create
* rails db:migrate
* rails db:seed


## Configuration

1. **Clone the Repository:**
    ```sh
    git clone https://github.com/Sampada22111999/school_management.git
    cd school_management
    ```

2. **Install Bundler (if not installed):**
    ```sh
    gem install bundler
    ```

## Install Gems

Run the following command to install the necessary gems:
```sh
bundle install
##
1. Run the Application
1. Start the Rails server:
rails server


##Visit http://localhost:3000 in your web browser to access the application.

