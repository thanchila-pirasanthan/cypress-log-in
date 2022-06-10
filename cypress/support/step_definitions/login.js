Given('the user visit page {string}', (url) => {
  cy.visit(url);
});

Given('the user enters data {string} into field {string}', (data, field) => {
  cy.get(field).should('be.visible').type(data);
});

Given('the user click {string}', (field) => {
  cy.get(field).should('be.visible').click();
});

Given('the url contains {string}', (url) => {
  cy.url().should('include', url);
});
