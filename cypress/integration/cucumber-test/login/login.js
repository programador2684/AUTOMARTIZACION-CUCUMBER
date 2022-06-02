import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps'

Given('User is at the login page', () => {
    cy.visit('https://www.facebook.com/')
})

When('User enters username as {string} and password as {string}', (username, password) => {
    cy.get('#email').type(username)
    cy.get('#pass').type(password)
})

And('User clicks on login button', () => {
    cy.get('#loginbutton').click()
})

Then('User is able to successfully login to the Website', () => {
    cy.get('#welcome').should('be.visible', {timeout: 10000})
})