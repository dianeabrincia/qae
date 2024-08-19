*** Settings ***
Documentation 
Test Tags         SQEForm
Resource          ../keywords/sqe_keywords.robot

*** Variables ***
${TARGET_YEAR}                      2024
${TARGET_MONTH}                     12   
${TARGET_DAY}                       1

*** Test Cases ***
SQE-001: Applicant Fill Up The Form
    Navigate To SQE
    User Fill In Name    Diane Abrincia
    User Fill In Email    dayanabrincia@gmail.com
    User Select Desired Position    QAE
    User Select Years of Experience    "< 2 Years"
    User Select Skills
    ...    "Manual Testing"
    ...    "Automated Testing"
    User Fill Up Expected Salary    60000
    User Select Date Of Availability
    User Check Terms
    User Submit The Testing Form