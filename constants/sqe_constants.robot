*** Variables ***
${SQE_URL}    https://josephyap9.wixsite.com/qaetestsite

#Page
${TESTING_FORM_PAGE}                //main[@id="PAGES_CONTAINER"]
# Text Fields
${NAME_TEXTFIELD}                   //input[@name="name"]
${EMAIL_TEXTFIELD}                  //input[@name="email"]
${PHONE_TEXTFIELD}                  //input[@name="phone"]
${EXPECTED_SALARY_TEXTFIELD}        //input[@name="expected-salary"]


# Desired Position Dropdown
${DESIRED_POSITION_FIELD}           //select[@data-testid="select-trigger"]

# Date of Availability - Calendar
${CALENDAR}                         //div[contains(@class, "wixui-date-picker__calendar")]
${DATE_OF_AVAILABILITY_FIELD}       //button[@aria-label="Open calendar"]
${NEXT_MONTH_BUTTON}                //button[@data-testid="nextMonth"]      
${CURRENT_MONTH_BUTTON}             //div[@data-testid="currentMonth"]
${PREV_MONTH_BUTTON}                //button[@data-testid="prevMonth"]
${NEXT_YEAR_BUTTON}                 //button[@data-testid="nextYear"]
${CURRENT_YEAR_BUTTON}              //button[@data-testid="currentYear"]
${PREV_YEAR_BUTTON}                 //button[@data-testid="prevYear"]
${DAY_SELECTOR}                     //td//button//span[text()="${TARGET_DAY}"]

# Years of Experience Radio Button List
${YEARS_OF_EXPERIENCE_FIELD}        //fieldset//legend//div[text() = "Years of Experience"]
${EXPERIENCE_RADIO_BUTTON}          //input[@type="radio"]
${EXPERIENCE_LESS_THAN_2}           //input[@type="radio"][@value="< 2 Years"]
${EXPERIENCE_2_TO_5}                //input[@type="radio"][@value="> 2 Years < 5 Years"]
${EXPERIENCE_MORE_THAN_5}           //input[@type="radio"][@value="> 5 Years"]

# Skills Multiselect Options
${SKILLS_FIELD}                     //fieldset//legend//div[text() = "Skills"]
${SKILLS_LIST}                      //div[@data-testid="items"]
${SKILLS_MANUAL_TESTING}            //input[@type="checkbox"][@value="Manual Testing"]
${SKILLS_API_TESTING}               //input[@type="checkbox"][@value="API Testing"]
${SKILLS_AUTOMATED_TESTING}         //input[@type="checkbox"][@value="Automated Testing"]
${SKILLS_EXTRA_CHEESE}              //span[text() = "Extra cheese"]

# Terms Checkbox 
${TERMS_CHECKBOX}                   //label//span[text() = "I have answered the above questions to the best of my availability"]

# Submit Button 
${SUBMIT_BUTTON}                    //span[text()="Submit"]
