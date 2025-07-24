*** Settings ***
Documentation    ตรวจสอบ HTTP Status Code จาก API ของ Reqres.in
Resource         ../RESOURCES/KEYWORDS.robot
Resource         ../RESOURCES/VARIABLES.robot
Suite Setup      Create Session    reqres    ${Req_URL}   headers=${reqres_Headers}   verify=True   
Library          RequestsLibrary

*** Test Cases ***
TC01_Code_200_When_User_Found
     GET request And status_code    users/2    200

TC02_Code_401_When_User_Not_Found
     GET request And status_code    users/23    401
