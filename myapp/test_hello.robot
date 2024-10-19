*** Settings ***
Library    Process

*** Test Cases ***
Test Hello Default
    ${result}=    Run Process    python3    hello.py
    Should Be Equal    ${result.stdout}    Hello World!\n

Test Hello Custom Name
    ${result}=    Run Process    python3    hello.py    --name=Alice
    Should Be Equal    ${result.stdout}    Hello Alice!\n

Test Hello Empty String
    ${result}=    Run Process    python3    -c    from hello import hello; print(hello(''))
    Should Be Equal    ${result.stdout}    Hello !\n
