*** Settings ***
# Ici on inclut les librairies requises


Documentation  Test exemple
Library  SeleniumLibrary
Library  Selenium2Library

*** Variables ***
# Ici on définit les variables au besoin


*** Test Cases ***
# Ici on va écrire le script de tests


Log Hello World
    [Documentation]  Simple test 1
    Log  Hello World!

Log Goodbye
    [Documentation]  Simple test 2
    Log  Goodbye!

    # Les paramètres sont séparés de plus d'un espace
Search Domain
    [Documentation]  Simple domain name search
    # Open chrome browser at GoDaddy website - Le param chome à été enlevé pour cause d'erreur
    Open Browser    https://ca.godaddy.com/
    # Wait for the domain input box to appear on page - Le test n'a pas l'air d'être réalisable
    Wait Until Element Is Visible  name=domainToCheck
    # Write some wild domain name in input box
    Input Text  name=domainToCheck  kebab
    # Click search button
    Click Button  xpath=//form[@name=”domainsearchform”]//button
    # Check exact match found

    Wait Until Page Contains Element  css=div.exactMatchHeadline

    # Close the browser
    Close Browser

