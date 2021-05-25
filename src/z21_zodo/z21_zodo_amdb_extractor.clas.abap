CLASS z21_zodo_amdb_extractor DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_amdp_marker_hdb.
    CLASS-METHODS extract_tasktype FOR TABLE FUNCTION zodo_i_task_extractor.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z21_zodo_amdb_extractor IMPLEMENTATION.
  METHOD extract_tasktype
  BY DATABASE FUNCTION FOR HDB
  LANGUAGE SQLSCRIPT
  OPTIONS READ-ONLY
  USING zodo_i_task.
    RETURN SELECT
    Taskname,
    SUBSTR_REGEXPR('([[:alnum:]]{1,20}):([[:print:]]{1,100})' IN Taskname GROUP 1) TaskType,
    SUBSTR_REGEXPR('([[:alnum:]]{1,20}):([[:print:]]{1,100})' IN Taskname GROUP 2) TaskText
    FROM zodo_i_task;
  ENDMETHOD.
ENDCLASS.
