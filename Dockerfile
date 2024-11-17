# Use the official MySQL image as a base
FROM mysql:latest

# Set the working directory to /app
WORKDIR /app

# Set environment variables for the new user
ENV MYSQL_ROOT_PASSWORD=password
ENV MYSQL_DATABASE=users

COPY backup.sql /docker-entrypoint-initdb.d/

# Expose port 3306 to allow connections to the database
EXPOSE 3306

# Start the MySQL server when the container is run
CMD ["mysqld"]