*** Settings ***
Documentation    ตรวจสอบ  API ของ Reqres.in
Resource         ../RESOURCES/KEYWORDS.robot
Resource         ../RESOURCES/VARIABLES.robot
Suite Setup      Create Session    reqres    ${Req_URL}   headers=${reqres_Headers}   verify=True   
Library          RequestsLibrary

*** Test Cases ***
TC01_Code_200_When_User_Found
     GET request And status_code    objects/7    200

TC02_Code_404_When_User_Not_Found
     GET request And status_code    objects/700    404

TC03_Found_Data&verify
     GET Body And verify    objects/7    Apple MacBook Pro 16
