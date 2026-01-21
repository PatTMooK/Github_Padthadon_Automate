import { test, expect } from '@playwright/test';

test.describe('RadioButton', () => {

    test('TC4', async ({ page }) => {
        
        await page.goto("https://demoqa.com/", { waitUntil: 'domcontentloaded' });
        await page.locator('//div [@class="card-body"]/h5[contains (text(),"Elements")]').click();
        await page.locator('//ul [@class="menu-list"]//span[text()="Radio Button"]').click();
        await page.locator('//div[@class="custom-control custom-radio custom-control-inline"]//label[@for="yesRadio"]').click();
        const TextAfterSelect = await page.locator('//span[@class="text-success" and text()="Yes"]').isVisible();
        expect(TextAfterSelect).toBeTruthy();
        
        // await page.pause();

    }) 
    // npx playwright test DemoQARadioButton.spec.ts
    
    
})