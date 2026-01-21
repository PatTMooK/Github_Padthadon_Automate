*** Settings ***
Documentation    ตรวจสอบและหา XPath TextBox ของ https://demoqa.com
Resource    ../RESOURCES/VARIABLES.robot
Resource    ../RESOURCES/KEYWORDS.robot

Library    Browser
Test Setup     Open My Browser
Test Teardown    Close Browser


*** Test Cases ***
Click RadioButton Test    #ทดสอบ TextBox ในหน้า DemoQA
    Go To    ${Demoqa_URL}
    # คลิกที่ Elements และเลือกเมนู TextBox
    Click    ${CARD_ELEMENTS}
    Click    ${TB_MENU_TEXTBOX}
    # กรอกข้อมูลในช่องต่างๆ 
    Fill Text    ${TB_INPUT_FULLNAME}    Mr.Padthadon
    Fill Text    ${TB_INPUT_EMail}    Padthadon0312@gmail.com
    Fill Text    ${TB_INPUT_Address}    Bang Sue,Bangkok
    Fill Text    ${TB_INPUT_permanentAddress}    Huai Krachao,Kanchanaburi
    # กดปุ่ม Submit
    Click    ${TB_Submit}
    # ตรวจสอบว่ามองเห็นกล่องข้อมูลที่กรอก หรือไม่)
    Wait For Elements State    ${TB_RESULT}    visible    timeout=10s