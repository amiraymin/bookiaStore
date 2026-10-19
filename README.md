# Bookia

Bookia is a Flutter book-ordering app. It begins with a branded splash screen
and then presents a welcome screen where users can choose to log in or register.

## Screenshots

### Splash screen

The opening screen displays the Bookia logo and the message "Order Your Book Now!".

![Bookia splash screen](<assets/screen shots/welcome 1.jpeg>)

### Welcome screen

The welcome screen uses a book-photo background and provides Login and Register actions.

![Bookia welcome screen](<assets/screen shots/welcome 2.jpeg>)

### API integration and login validation

This update demonstrates practical API integration and robust form validation in the login flow. The screen validates user input before submitting a request, helping users correct incomplete or invalid credentials with clear feedback. Once the form is valid, the app communicates with the authentication API and handles the login process in a structured, user-friendly way.

![API integration and login validation](<assets/screen shots/api&validation.png>)

# commands

dart run easy_localization:generate --source-dir ./assets/translations -f keys -o locale_keys.g.dart -O lib/gen
