#Commandes à entrer:
#   le bon fichier:
#       cd C:\Epsi\script\Robot_Framework\robot
#   la compilation:
#       robot -d results tests/exercice_standard_user.robot

*** Settings ***

Documentation  Execices d'introduction
Library  SeleniumLibrary
#Library  Selenium2Library
Library  BuiltIn


*** Variables ***
${count}    0

*** Test Cases ***

Exercice 1
    # cet user fonctionne (real smooth)
    [Documentation]  Test Connexion au site https://www.saucedemo.com/ avec le standard user
    Open Browser  https://www.saucedemo.com/
    Wait Until Element Is Visible  tag=form
    Input Text  id=user-name  standard_user
    Input Text  id=password  secret_sauce
    Click Button  id=login-button
    Wait Until Page Contains Element  class=peek

Exercice 2
    [Documentation]  Test Ajout des marchandises dans le panier
    Click Button  class=btn_primary
    Click Button  class=btn_primary
    Click Button  class=btn_primary
    Click Button  class=btn_primary
    Click Button  class=btn_primary
    Click Button  class=btn_primary

Execice 3
    [Documentation]  Test Click panier
    Click Element  class=fa-shopping-cart

Execice 4
    [Documentation]  Test Vérification élements
    ${count} =  Get Element Count  class=inventory_item_name	
    Run Keyword If  ${count} == 6  Click Element  class=checkout_button
    Wait Until Element Is Visible  tag=form
    Input Text  id=first-name  Bob
    Input Text  id=last-name  Lennon
    Input Text  id=postal-code  44200
    Click Button  class=btn_primary
    Wait Until Element Contains  class=subheader  Checkout: Overview
    Click Element  class=btn_action
    Sleep  5s
    Close Browser