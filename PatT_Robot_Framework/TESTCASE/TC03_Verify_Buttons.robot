*** Settings ***
Documentation    ตรวจสอบและหา XPath buttons ของ https://demoqa.com
Resource    ../RESOURCES/VARIABLES.robot
Resource    ../RESOURCES/KEYWORDS.robot

Library    Browser
Test Setup     Open My Browser
Test Teardown    Close Browser


*** Test Cases ***
Click Buttons Test    #ทดสอบการเลือก Click Buttons ในหน้า DemoQA
    Go To    ${Demoqa_URL}
    # คลิกที่ Elements และเลือกเมนู Buttons
    Click    ${CARD_ELEMENTS}
    Click    ${BT_MENU_Buttons}
    # คลิกที่ Click Me 
    Click    ${BT_Click_Me}
    # ตรวจสอบว่ามองเห็นข้อความ You have done a dynamic click หรือไม่)
    Wait For Elements State    ${BT_RESULT_MSG}    visible    timeout=10s
    Get Element States    ${BT_RESULT_MSG}    contains    visible