class ZCL_21_HTTP_SERVICE definition
  public
  create public .

public section.

  interfaces IF_HTTP_SERVICE_EXTENSION .
protected section.
private section.
ENDCLASS.



CLASS ZCL_21_HTTP_SERVICE IMPLEMENTATION.


  method IF_HTTP_SERVICE_EXTENSION~HANDLE_REQUEST.
  response->set_text( |Hello, { cl_abap_context_info=>get_user_formatted_name( ) }.| ).
  endmethod.
ENDCLASS.
