import { test, expect } from '@playwright/test';

test.describe('Button', () => {

    test('TC3', async ({ page }) => {
        
        await page.goto("https://demoqa.com/", { waitUntil: 'domcontentloaded' });
        await page.locator('//div [@class="card-body"]/h5[contains (text(),"Elements")]').click();
        await page.locator('//ul [@class="menu-list"]//span[text()="Buttons"]').click();
        
        // await page.pause();

    }) 
    // npx playwright test DemoQAButtons.spec.ts
    
    
})