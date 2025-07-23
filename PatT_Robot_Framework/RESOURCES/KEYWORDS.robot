*** Settings ***
Library    RequestsLibrary
Library    Collections
Resource   ../RESOURCES/VARIABLES.robot

*** Keywords ***
GET request And status_code    [Arguments]    ${endpoint}    ${httpcodeexpected_status}
                               Create Session    reqres    ${Req_URL}     headers=${reqres_Headers}      verify=${True}
                               ${response}=    GET On Session    reqres    ${endpoint}
                               Log    Response Code: ${response.status_code}
                               Should Be Equal As Integers    ${response.status_code}    ${httpcodeexpected_status}
    

    

