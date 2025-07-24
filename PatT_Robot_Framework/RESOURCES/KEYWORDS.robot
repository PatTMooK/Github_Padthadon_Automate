*** Settings ***
Library    RequestsLibrary
Library    Collections
Resource   ../RESOURCES/VARIABLES.robot

*** Keywords ***
GET request And status_code    [Arguments]    ${PATHfortestHTTP}    ${httpcodeexpected_status}
                               ${response}=    GET On Session    reqres    ${PATHfortestHTTP}    expected_status=ANY
                               Log    Response Code: ${response.status_code}
                               Should Be Equal As Integers    ${response.status_code}    ${httpcodeexpected_status}
    

    

