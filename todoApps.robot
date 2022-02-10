*** Settings ***
Resource        todoAppsKeywords.robot
Suite Setup     Open Chrome
Suite Teardown  Close Browser

*** Test Case ***
Display the main page of the todo application
    Open To Do List App
    I See The Header Title Is Visible
    I See The Activity Title Is Visible
    I See The Add Button Is Visible

Adding New Activity
    Open To Do List App
    I See The Header Title Is Visible
    I See The Activity Title Is Visible
    I See The Add Button Is Visible
    I Click The Add Activity Button
    The New Activity Item Will Be Shown

Delete Recently Added Activity
    Open To Do List App
    I See The Header Title Is Visible
    I See The Activity Title Is Visible
    I See The Add Button Is Visible
    I Click The Trash Icon Button
    I See the PopUp Delete 
    I Click The Delete Confirm Button to Delete Activity

Showing Activity Detail Where Recently Added
    Open To Do List App
    I See The Header Title Is Visible
    I See The Activity Title Is Visible
    I See The Add Button Is Visible
    I Click The Add Activity Button
    The New Activity Item Will Be Shown
    I Click One Activity Card to See The Activity Detail
    I See To Do Empty State
    I See To Do Add Button

Change Title Todo
    Open To Do List App
    I See The Header Title Is Visible
    I See The Activity Title Is Visible
    I See The Add Button Is Visible
    I Click One Activity Card to See The Activity Detail
    I See To Do Empty State
    I See To Do Add Button
    I See New Ativity Title
    I Click the Edit Title Todo Button
    I Clear The Element
    I am Inputing The Text for New To Do Title
    I Click the Edit Title Todo Button
    I Click Back Button

Added Five To Do Items
    Open To Do List App
    I See The Header Title Is Visible
    I See The Activity Title Is Visible
    I See The Add Button Is Visible
    I Click One Activity Card to See The Activity Detail
    I See To Do Empty State
    I See To Do Add Button
    I Click To Do Add Button
    I See The PopUp "Tambah List Item"
    I am Inputing Item Todo with Very Low Priority
    I am selecting Very Low Priority
    I Click Save Item To Do Button
    I Click To Do Add Button
    I See The PopUp "Tambah List Item"
    I am Inputing Item Todo with Low Priority
    I am selecting Low Priority
    I Click Save Item To Do Button
    I Click To Do Add Button
    I See The PopUp "Tambah List Item"
    I am Inputing Item Todo with Medium Priority
    I am selecting Medium Priority
    I Click Save Item To Do Button
    I Click To Do Add Button
    I See The PopUp "Tambah List Item"
    I am Inputing Item Todo with High Priority
    I am selecting High Priority
    I Click Save Item To Do Button
    I Click To Do Add Button
    I See The PopUp "Tambah List Item"
    I am Inputing Item Todo with Very High Priority
    I am selecting Very High Priority
    I Click Save Item To Do Button

Filtering To Do items
    Open To Do List App
    I See The Header Title Is Visible
    I See The Activity Title Is Visible
    I See The Add Button Is Visible
    I Click One Activity Card to See The Activity Detail
    I Click Filtering Button And selecting "Terlama" 
    I Click Filtering Button And selecting "Terbaru"
    I Click Filtering Button And selecting "A-Z" 
    I Click Filtering Button And selecting "Z-A" 

# Marking "Finish" one of the todo items
#     Open To Do List App
#     I See The Header Title Is Visible
#     I See The Activity Title Is Visible
#     I See The Add Button Is Visible
#     I Click One Activity Card to See The Activity Detail
#     I Click One To Do Item to marking "Finish"
#     I Click Filtering Button And selecting "Belum Selesai" 