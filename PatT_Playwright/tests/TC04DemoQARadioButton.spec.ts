import { test, expect } from '@playwright/test';

test.describe('RadioButton', () => {

    test('TC4', async ({ page }) => {
        
        await page.goto("https://demoqa.com/");
        await page.locator('//div [@class="card-body"]/h5[contains (text(),"Elements")]').click();
        await page.locator('//ul [@class="menu-list"]//span[text()="Radio Button"]').click();
        
        // await page.pause();

    }) 
    // npx playwright test DemoQARadioButton.spec.ts
    
    
})