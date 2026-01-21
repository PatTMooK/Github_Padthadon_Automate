*** Settings ***
Documentation    ตรวจสอบและหา XPath checkbox ของ https://demoqa.com
Resource    ../RESOURCES/VARIABLES.robot
Resource    ../RESOURCES/KEYWORDS.robot

Library    Browser
Test Setup     Open My Browser
Test Teardown    Close Browser


*** Test Cases ***
Check Box Selection Test  #ทดสอบการเลือก Check Box ในหน้า DemoQA
    Go To    ${Demoqa_URL}
    # คลิกที่ Elements และเลือกเมนู Check Box
    Click    ${CARD_ELEMENTS}
    Click    ${CB_MENU_CHECKBOX}
    # ขยายรายการทั้งหมดและเลือก Desktop 
    Click    ${CB_BTN_EXPAND}
    Click    ${CB_CHCK_DESKTOP}
    # การ Assert (ตรวจสอบว่ามองเห็นข้อความ You have selected หรือไม่)
    Wait For Elements State    ${CB_RESULT_MSG}    visible    timeout=10s
    Get Element States    ${CB_RESULT_MSG}    contains    visible
