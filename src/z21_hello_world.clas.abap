CLASS z21_hello_world DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS Z21_HELLO_WORLD IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    out->write( 'Hello, world!' ).
  ENDMETHOD.
ENDCLASS.