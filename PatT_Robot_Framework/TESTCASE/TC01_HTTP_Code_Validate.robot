*** Settings ***
Documentation    ตรวจสอบ HTTP Status Code จาก API ของ Reqres.in
Resource         ../RESOURCES/KEYWORDS.robot
Resource         ../RESOURCES/VARIABLES.robot
Suite Setup      Create Session    reqres    ${Req_URL}
Library          RequestsLibrary

*** Test Cases ***
TC01_Code_200_Success
    GET request And status_code    /users/2    200