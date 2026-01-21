*** Variables ***
${Req_URL}    https://api.restful-api.dev/    # กำหนด URL สำหรับทดสอบ HTTP Code
&{reqres_Headers}    Content-Type=application/json


${Demoqa_URL}    https://demoqa.com/    # กำหนด URL ทดสอบการหา XPath ในแต่ละบททกสอบ
${CARD_ELEMENTS}    xpath=//div[@class="card-body"]/h5[contains(text(),"Elements")]
#Demoqa CheckBox
${CB_MENU_CHECKBOX}    xpath=//ul[@class="menu-list"]//span[text()="Check Box"]
${CB_BTN_EXPAND}    xpath=//button[@class="rct-option rct-option-expand-all"]
${CB_CHCK_DESKTOP}    xpath=//span[contains(@class,"rct-title") and text()="Desktop"]
${CB_RESULT_MSG}    xpath=//div[@class="display-result mt-4"]/span[text()="You have selected :"]
#Demoqa Buttons
${BT_MENU_Buttons}    xpath=//ul [@class="menu-list"]//span[text()="Buttons"]
${BT_Click_Me}    xpath=//button[@type="button"and text()='Click Me']
${BT_RESULT_MSG}    xpath=//p[@id="dynamicClickMessage"]
#Demoqa RadioButton
${RB_MENU_RadioButton}    xpath=//ul [@class="menu-list"]//span[text()="Radio Button"]
${RB_Yes_RadioButton}    xpath=//div[@class="custom-control custom-radio custom-control-inline"]//label[@for="yesRadio"]
${RB_RESULT_MSG}    xpath=//span[@class="text-success" and text()='Yes']
#Demoqa TextBox
${TB_MENU_TEXTBOX}    xpath=//ul[@class="menu-list"]//li[@id="item-0"]//span[text()="Text Box"]
${TB_INPUT_FULLNAME}    xpath=//input [@placeholder="Full Name"]
${TB_INPUT_EMail}    xpath=//input [@placeholder="name@example.com"]
${TB_INPUT_Address}    xpath=//textarea[@placeholder="Current Address"]
${TB_INPUT_permanentAddress}    xpath=//textarea[@id="permanentAddress"]
${TB_Submit}    xpath=//button [@id="submit"]
${TB_RESULT}    xpath=//div [@class="border col-md-12 col-sm-12"]