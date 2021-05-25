@ClientHandling.type: #CLIENT_INDEPENDENT
@EndUserText.label: 'Extract data using AMDB'
define table function ZODO_I_TASK_EXTRACTOR
returns
{
  Taskname : zodo_taskname;
  TaskType : abap.char( 20 );
  TaskText : abap.char( 100 );
}
implemented by method
  Z21_ZODO_AMDB_EXTRACTOR=>extract_tasktype;