import {pages} from '../support/pages'

export class LoginTest {
    async fillEmailField(email){
        await pages.basePage.getEmailInputField().setValue(email);
    }

    async fillPasswordField(password){
        await pages.basePage.getPasswordInputField().setValue(password);
    }

    async assertInvalidCrendentialsMsg(){
        await pages.basePage.getInvalidCredentialsMsg().waitForDisplayed({timeout: 5000});
        //await expect(await pages.basePage.getInvalidCredentialsMsg()).toHaveText("Invalid username and/or password.");
        expect(await pages.basePage.getInvalidCredentialsMsg().getText()).toEqual("Invalid username and/or password.");
    }
}