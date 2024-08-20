

//Location Selection Modal

describe('Location Selection Modal', () => {
    it('should display the selection modal after clicking the location button', () => {
        cy.visit('https://v1-dev-booking.barespace.app/barespace/');

        // Click on the location button
        cy.get('button[data-cy="location-btn"]').click();

        // Assert that the selection modal is visible
        cy.get('div[data-cy="selection-modal"]').should('be.visible');
    });
});

//Services are Visible After Selecting "Book an Appointment"

describe('Services Visibility After Booking Appointment', () => {
    it('should display the services after selecting "Book an Appointment"', () => {
        cy.visit('https://v1-dev-booking.barespace.app/barespace/');

        // Click on the "Book an Appointment" button
        cy.contains('Book an Appointment').click();

        // Wait for the services to load (optional)
        cy.wait(500); // Adjust the wait time as needed

        // Assert that the services section is visible
        // Adjust the selector based on the actual services section in your application
        cy.get('div[data-cy="services-section"]').should('be.visible');

        // Alternatively, you can check for a specific service item
        // cy.get('div[data-cy="service-item"]').should('have.length.greaterThan', 0);
    });
});

//Booking an Appointment

describe('Book an Appointment') () => {
    it('should display the services after selecting 'Book an Appointment' ', () => {
        cy.visit('https://v1-dev-booking.barespace.app/barespace/');

        // Click on the "Book an Appointment" button
        cy.contains('Book an Appointment').click();

        // Assert that the services section is visible
        cy.get('div[data-cy="services-section"]').should('be.visible');
    });
});

//User Should be Able to Log In

describe('User Login', () => {
    it('should allow a user to log in successfully', () => {
        cy.visit('https://v1-dev-booking.barespace.app/barespace/login');

        // Enter the email
        cy.get('input[data-cy="email"]').type('test@tester.com');

        // Enter the password
        cy.get('input[data-cy="password"]').type('password123');

        // Click the login button
        cy.get('button[data-cy="login-btn"]').click();

        // Assert that the user is redirected to the dashboard or a specific element appears
        cy.get('div[data-cy="dashboard"]').should('be.visible');
    });
});

//User Should be Able to Sign Up

describe('User Signup', () => {
    it('should allow a user to sign up successfully', () => {
        cy.visit('https://v1-dev-booking.barespace.app/barespace/signup');

        // Enter the name
        cy.get('input[data-cy="name"]').type('Tester Test');

        // Enter the email
        cy.get('input[data-cy="email"]').type('test@tester.com');

        // Enter the password
        cy.get('input[data-cy="password"]').type('password123');

        // Click the signup button
        cy.get('button[data-cy="signup-btn"]').click();

        // Assert that the user sees a welcome message or is redirected to the dashboard
        cy.get('div[data-cy="Sign-up"]').should('be.visible');
    });
});