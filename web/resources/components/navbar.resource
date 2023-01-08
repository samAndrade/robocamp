*** Settings ***
Documentation        Representação do menu superior

Library        Browser

*** Keywords ***
User Should Be Looged In
    [Arguments]        ${user_name}

    ${logged_user}       Set Variable   css=aside strong

    Wait For Elements State    ${logged_user}     visible     5     # Ele aguarda até que o elemento fique visível por um determinado tempo que nesse exemplo foi de 5 segundos

    Get Text     ${logged_user}     equal    ${user_name}
