import { test, expect } from '@playwright/test';

test.describe('Check Box', () => {

    test('TC2', async ({ page }) => {
        
        await page.goto("https://demoqa.com/", { waitUntil: 'domcontentloaded' });
        await page.locator('//div [@class="card-body"]/h5[contains (text(),"Elements")]').click();
        await page.locator('//ul [@class="menu-list"]//span[text()="Check Box"]').click();
        await page.locator('//button [@class="rct-option rct-option-expand-all"]').click();
        await page.locator('//span [contains (@class,"rct-title")and text()="Desktop"]').click();

        const TextAfterSelect = await page.locator('//div [@class="display-result mt-4"]/span [text()="You have selected :"]').isVisible();
        expect(TextAfterSelect).toBeTruthy();
        // await page.pause();

    }) 
    // npx playwright test DemoQACheckBox.spec.ts
    
    
})