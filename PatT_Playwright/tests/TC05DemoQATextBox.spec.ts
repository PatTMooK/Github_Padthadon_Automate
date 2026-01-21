import { test, expect } from '@playwright/test';

test.describe('DemoQATextBox', () => {

    test('TC5', async ({ page }) => {

        await page.goto("https://demoqa.com/", { waitUntil: 'domcontentloaded' });
        await page.locator('//div [@class="card-body"]/h5[contains (text(),"Elements")]').click();
        await page.locator('//ul[@class="menu-list"]//li[@id="item-0"]//span[text()="Text Box"]').click();
        await page.locator('//input [@placeholder="Full Name"]').fill("Padthadon Kimlaung");
        await page.locator('//input [@placeholder="name@example.com"]').fill("Padthadon@mail.com");
        await page.locator('//textarea[@placeholder="Current Address"]').fill("Bang Sue,Bangkok");
        await page.locator('//textarea[@id="permanentAddress"]').fill("Huai Krachao,Kanchanaburi");
        await page.locator('//button [@id="submit"]').click();

        const BoxAfterSubmit = await page.locator('//div [@class="border col-md-12 col-sm-12"]').isVisible();
        expect(BoxAfterSubmit).toBeTruthy();
        // await page.pause();
        
    })
    
    
})