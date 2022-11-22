*** Settings ***
Documentation        Suite de testes de matriculas de alunos
...                  Administrador uma vez logado consegue matricular alunos na academia

Resource    ../resources/base.resource

*** Test Cases ***
Deve matricular um aluno
    
    # Aluno Falcão
    # Plano Smart
    # Data de inicio do plano: 11/10/2022

    ${admin}    Create Dictionary
    ...         name=Admin
    ...         email=admin@smartbit.com
    ...         pass=qacademy

    Do Login    ${admin}

    Go To Enrolls
    Go To Enrolls Form
    Select Student    Falcão
    Select Plan       Smart
    Fill Start Date


    # Sleep    10
    # ${temp}    Get Page Source

    # Log        ${temp}    

    Sleep    10