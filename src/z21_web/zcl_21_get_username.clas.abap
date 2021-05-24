CLASS zcl_21_get_username DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_http_service_extension .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_21_GET_USERNAME IMPLEMENTATION.


  METHOD if_http_service_extension~handle_request.
    response->set_text( |\{"username": "{ cl_abap_context_info=>get_user_alias(  ) }", "name": "{ cl_abap_context_info=>get_user_formatted_name(  ) }"\}| ).
    response->set_header_field( i_name = 'Content-Type' i_value = 'application/json').
  ENDMETHOD.
ENDCLASS.
