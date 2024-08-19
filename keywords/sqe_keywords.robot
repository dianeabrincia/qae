*** Settings ***
Library           Browser
Library           Collections      
Resource          ../constants/sqe_constants.robot

*** Keywords ***
Navigate To SQE
    New Browser    headless=False
    New Page    ${SQE_URL}
    Sleep   3s
    Wait For Elements State    ${TESTING_FORM_PAGE}

Map Month To Number
    [Arguments]    ${month_name}
    ${months}=    Create Dictionary
    ...    January=1    February=2    March=3    April=4    May=5    June=6
    ...    July=7    August=8    September=9    October=10    November=11    December=12
    ${month_number}=    Get From Dictionary    ${months}    ${month_name}
    [Return]    ${month_number}

User Fill In Name
    [Arguments]    ${p_name}
    Type Text      ${NAME_TEXTFIELD}       ${p_name}

User Fill In Email
    [Arguments]    ${p_email}
    Type Text      ${EMAIL_TEXTFIELD}       ${p_email}

User Select Desired Position
    [Arguments]    ${p_position}
    Select Options By    ${DESIRED_POSITION_FIELD}    value    ${p_position}

User Fill Up Phone Number
    [Arguments]    ${p_phone}
    Type Text    ${PHONE_TEXTFIELD}    ${p_phone}

User Select Date Of Availability
    Click    ${DATE_OF_AVAILABILITY_FIELD}
    Wait For Elements State    ${CALENDAR}    visible    10s

    ${current_month_name}=    Get Text    //div[@data-testid="currentMonth"]
    ${current_year}=          Get Text    //button[@data-testid="currentYear"]

    ${current_month}=    Map Month To Number    ${current_month_name}

    WHILE    ${current_year} != ${TARGET_YEAR}
        IF    ${current_year} < ${TARGET_YEAR}
            Click    ${NEXT_YEAR_BUTTON}    
        ELSE
            Click    ${PREV_YEAR_BUTTON}    
        END
        ${current_year}=    Get Text    //button[@data-testid="currentYear"]
    END
    
    WHILE    ${current_month} != ${TARGET_MONTH}
        IF    ${current_month} < ${TARGET_MONTH}
            Click    ${NEXT_MONTH_BUTTON}    
        ELSE
            Click    ${PREV_MONTH_BUTTON}    
        END
        ${current_month_name}=    Get Text    //div[@data-testid="currentMonth"]
        ${current_month}=    Map Month To Number    ${current_month_name}
    END
    
    Click    ${DAY_SELECTOR}

User Fill Up Expected Salary
    [Arguments]    ${salary}    
    Click    ${EXPECTED_SALARY_TEXTFIELD}
    Type Text    ${EXPECTED_SALARY_TEXTFIELD}    ${salary}   

User Select Years of Experience
    [Arguments]    ${experience}
    Check Checkbox    ${experience}

User Select Skills
    [Arguments]    @{skills}
    FOR    ${eachskills}    IN   @{skills}
        Check Checkbox   ${eachskills}
    END

User Check Terms
    Check Checkbox    ${TERMS_CHECKBOX}

User Check and Uncheck Terms
    Check Checkbox    ${TERMS_CHECKBOX}
    Uncheck Checkbox    ${TERMS_CHECKBOX}

User Submit The Testing Form
    Click    ${SUBMIT_BUTTON}
