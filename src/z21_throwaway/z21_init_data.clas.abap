CLASS z21_init_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS Z21_INIT_DATA IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA(lv_datum) = cl_abap_context_info=>get_system_date( ).
    DATA(lv_task) = VALUE zodo_task( taskname = 'Cloud: Make todo app' priority = 1 start_date = lv_datum due_date = lv_datum + 2 ).
    MODIFY zodo_task FROM @lv_task.



    DATA(lv_project) = VALUE zodo_project( project_name = 'Cloud' type = 'tmp' ).
    MODIFY zodo_project FROM @lv_project.


    DATA: lt_days TYPE STANDARD TABLE OF zodo_days.

    lt_days = VALUE #(
    ( project_name = 'Cloud' week_day = '1' )
    ( project_name = 'Cloud' week_day = '3' )
    ( project_name = 'Cloud' week_day = '4' )
    ).

    INSERT zodo_days FROM TABLE @lt_days.

    out->write( 'Inserted' ).
  ENDMETHOD.
ENDCLASS.
