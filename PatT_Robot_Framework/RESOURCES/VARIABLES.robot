*** Variables ***
${Req_URL}    https://api.restful-api.dev/    # กำหนด URL สำหรับทดสอบ HTTP Code
&{reqres_Headers}    Content-Type=application/json


${Demoqa_URL}    https://demoqa.com/    # กำหนด URL ทดสอบการหา XPath ในแต่ละบททกสอบ

#Demoqa CheckBox
${CB_CARD_ELEMENTS}    xpath=//div[@class="card-body"]/h5[contains(text(),"Elements")]
${CB_MENU_CHECKBOX}    xpath=//ul[@class="menu-list"]//span[text()="Check Box"]
${CB_BTN_EXPAND}    xpath=//button[@class="rct-option rct-option-expand-all"]
${CB_CHCK_DESKTOP}    xpath=//span[contains(@class,"rct-title") and text()="Desktop"]
${CB_RESULT_MSG}    xpath=//div[@class="display-result mt-4"]/span[text()="You have selected :"]