*** Settings ***
Documentation    ตรวจสอบ  API ของ Reqres.in
Resource         ../RESOURCES/KEYWORDS.robot
Resource         ../RESOURCES/VARIABLES.robot
Suite Setup      Create Session    reqres    ${Req_URL}   headers=${reqres_Headers}   verify=True   
Library          RequestsLibrary

*** Test Cases ***
TC01_Code_200_When_User_Found
     GET request And status_code    users/2    200

TC02_Code_401_When_User_Not_Found
     GET request And status_code    users/23    401

TC03_Found_Data&verify
     GET Body And verify    users/2    first_name
