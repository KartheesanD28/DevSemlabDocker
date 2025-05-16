# Use the official Nginx image as the base
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove default nginx static content
RUN rm -rf ./*

# Copy your HTML, CSS, and JS files into the container
COPY index.html .
COPY styles.css .


# Expose port 80
EXPOSE 80

# No CMD needed because nginx is already set up to run in foreground in this base image