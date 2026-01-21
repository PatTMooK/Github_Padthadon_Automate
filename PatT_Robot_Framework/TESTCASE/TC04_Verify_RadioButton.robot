*** Settings ***
Documentation    ตรวจสอบและหา XPath checkbox ของ https://demoqa.com
Resource    ../RESOURCES/VARIABLES.robot
Resource    ../RESOURCES/KEYWORDS.robot

Library    Browser
Test Setup     Open My Browser
Test Teardown    Close Browser


*** Test Cases ***
Click RadioButton Test    #ทดสอบการเลือก RadioButton ในหน้า DemoQA
    Go To    ${Demoqa_URL}
    # คลิกที่ Elements และเลือกเมนู Buttons
    Click    ${CARD_ELEMENTS}
    Click    ${RB_MENU_RadioButton}
    # คลิกที่ Click Me 
    Click    ${RB_Yes_RadioButton}
    # ตรวจสอบว่ามองเห็นข้อความ Yes หรือไม่)
    Wait For Elements State    ${RB_RESULT_MSG}    visible    timeout=10s
    Get Element States    ${RB_RESULT_MSG}    contains    visible