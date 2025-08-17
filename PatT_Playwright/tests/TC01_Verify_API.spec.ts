import { test, expect } from '@playwright/test';
import { json } from 'stream/consumers';
// npx playwright test "1_Website_Reqres_Get.spec.ts.spec.ts"
test.describe('API TEST', () => {

    
test('Test API Get true endpoint', async ({ request }) => {
    // ตวรจสอบ API ต้องใช้ async ({ request })
    const Response = await request.get('https://reqres.in/api/users/2');
    // ตั้งตัวแปล response ใช้ส่ง HTTP GET request ไปที่ URL 'https://reqres.in/api/users/2'
    expect.soft (Response.status()).toBe(200);
    // response จะเก็บค่าที่ได้จาก API หลังจาก request.get() ทำงานเสร็จ , .toBe(200) คือ Status code 200=Success
    const ResponseBody = await Response.json();
    // ResponseBody แสดง bodyของ Response หลังทำงานเสร็จเป็น json
    console.log(ResponseBody);
    // แสดงค่า ResponseBody ใน log console
});


test('Test API Get wrong endpoint', async ({ request }) => {
    const Response = await request.get('https://reqres.in//api/users/2');
    // ตั้งตัวแปล response ใช้ส่ง HTTP GET request ไปที่ URL 'https://reqres.in//api/users/2'
    expect.soft (Response.status()).toBe(404);
    //  response จะเก็บค่าที่ได้จาก API หลังจาก request.get() ทำงานเสร็จ , .toBe(404) คือ Status code 404=Not Found
    
});

test('Test API Get & Verify Body', async ({ request }) => {
    // ตวรจสอบ API ต้องใช้ async ({ request })
    const Response = await request.get('https://reqres.in/api/users/2');
    // ตั้งตัวแปล response ใช้ส่ง HTTP GET request ไปที่ URL 'https://reqres.in/api/users/2'
    expect.soft (Response.status()).toBe(200);
    // response จะเก็บค่าที่ได้จาก API หลังจาก request.get() ทำงานเสร็จ , .toBe(200) คือ Status code 200=Success
    const ResponseBody = await Response.json();
    // ResponseBody แสดง bodyของ Response หลังทำงานเสร็จเป็น json
    // console.log(ResponseBody);
    expect.soft (ResponseBody.data.id).toBe(2);
    // ตรวจสอบ ข้างใน data มี id = 2
    expect.soft (ResponseBody.data.first_name).toContain('Janet');
    // ตรวจสอบ ข้างใน data มี first_name = Janet
    
});
    
})
