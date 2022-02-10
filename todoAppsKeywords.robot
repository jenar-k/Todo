*** Settings ***
Library                 SeleniumLibrary
Variables               todoAppsLocator.yaml

*** Keywords ***
Open Chrome
    Open Browser                                        browser=Chrome
    Maximize Browser Window

Open To Do List App
    Go To                                              https://todo-devcode.web.app/
    # Go To                                              https://todo-4769a.web.app/
    # Go To                                              https://ivan-todo-devrank.netlify.app/

I See The Header Title Is Visible
    Wait Until Element Is Visible                       ${headerTitle}

I See The Activity Title Is Visible
    Wait Until Element Is Visible                       ${activityTitle}

I See The Add Button Is Visible
    Wait Until Element Is Visible                       ${activityAddButton}

I Click The Add Activity Button
    Click Button                                        ${activityAddButton}
    
The New Activity Item Will Be Shown
    Wait Until Element Contains                         ${activityItemTitle}                                New Activity                                3
    Wait Until Element Contains                         ${activityItemDate}                                 10 Februari 2022

I Click The Trash Icon Button
    Wait Until Element Is Visible                       ${activityItemDeleteButton}
    Click Element                                       ${activityItemDeleteButton}

I See the PopUp Delete
    Element Should Be Visible                           ${popupDelete}

I Click The Delete Confirm Button to Delete Activity
    Wait Until Element Is Visible                       ${activityItem}
    Click Element                                       ${deleteConfirmButton}

I Click One Activity Card to See The Activity Detail 
    Wait Until Element Is Visible                       ${activityItem}
    Click Element                                       ${activityItem}

I See To Do Empty State
    Wait Until Element Is Visible                       ${todoEmptyState}

I See To Do Add Button
    Wait Until Element Is Visible                       ${todoAddButton}

I See New Ativity Title
    Wait Until Element Is Visible                       ${todoTitle}

I Click the Edit Title Todo Button
    Click Element                                       ${todoEditButton}
    sleep                                               2s

I Clear The Element                         
    Clear Element Text                                  ${titleNewActivity}

I am Inputing The Text for New To Do Title
    Input Text                                          ${titleNewActivity}                                A New Activity Title (Jenar)
    sleep                                               1s

I Click Back Button
    Click Element                                       ${todoBackButton}
    sleep                                               2s

I Click To Do Add Button
    Click Element                                       ${todoAddButton}

I See The PopUp "Tambah List Item"
    Wait Until Element Is Visible                       ${popupAddListItem}

I am Inputing Item Todo with Very Low Priority
    Input Text                                          ${nameListItem}                                     A. This Is Very Low Priority

I am selecting Very Low Priority
    Click Element                                       ${dropdownPriority}
    Click Element                                       ${selectThePriorityVL}
    sleep                                               2s                                               

I am Inputing Item Todo with Low Priority
    Input Text                                          ${nameListItem}                                     B. This Is Low Priority

I am selecting Low Priority
    Click Element                                       ${dropdownPriority}
    Click Element                                       ${selectThePriorityL}
    sleep                                               2s                                               

I am Inputing Item Todo with Medium Priority
    Input Text                                          ${nameListItem}                                     C. This Is Medium Priority

I am selecting Medium Priority
    Click Element                                       ${dropdownPriority}
    Click Element                                       ${selectThePriorityM}
    sleep                                               2s                                               

I am Inputing Item Todo with High Priority
    Input Text                                          ${nameListItem}                                     D. This Is High Priority

I am selecting High Priority
    Click Element                                       ${dropdownPriority}
    Click Element                                       ${selectThePriorityH}
    sleep                                               2s                                               

I am Inputing Item Todo with Very High Priority
    Input Text                                          ${nameListItem}                                     E. This Is Very High Priority

I am selecting Very High Priority
    Click Element                                       ${dropdownPriority}
    Click Element                                       ${selectThePriorityVH}
    sleep                                               2s                                               


I Click Save Item To Do Button
    Click Button                                        ${addItemTodoSavebutton}
    Wait Until Element Is Visible                       ${itemThePriorityOne}

I Click Filtering Button And selecting "Terlama" 
    Click Element                                       ${filteringButton}
    Click Element                                       ${filterTerlama}
    sleep                                               3s

I Click Filtering Button And selecting "Terbaru" 
    Click Element                                       ${filteringButton}
    Click Element                                       ${filterTerbaru}
    sleep                                               3s

I Click Filtering Button And selecting "A-Z" 
    Click Element                                       ${filteringButton}
    Click Element                                       ${filterAZ}
    sleep                                               3s

I Click Filtering Button And selecting "Z-A" 
    Click Element                                       ${filteringButton}
    Click Element                                       ${filterZA}
    sleep                                               3s

I Click One To Do Item to marking "Finish"
    Click Element                                     ${markFinish}
    sleep                                               2s

I Click Filtering Button And selecting "Belum Selesai" 
    Click Element                                       ${filteringButton}
    Click Element                                       ${filterBelumSelesai}
    sleep                                               3s
