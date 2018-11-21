*** Settings ***
Resource    Core/BaseTest.robot
Test Setup      Base Test Setup     ${Browser}
Test Teardown   Base Tear Down
Resource    Core/Utilities.robot

*** Test Cases ***
Valid Login
    Open Browser To Login Page