@AbapCatalog.sqlViewName: 'ZODOITASKENHANCE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Enhanced Task View'

//@VDM.viewType: #COMPOSITE
define view ZODO_I_TASK_ENHANCED
  as select from ZODO_I_TASK as _Task
    join         ZODO_I_TASK_EXTRACTOR as _Extractor on _Extractor.Taskname = _Task.Taskname
{
  key _Task.Taskname,
      _Task.StartDate,
      _Task.DueDate,
      _Task.Priority,
      _Task.Done,
      _Extractor.TaskType as Type
}
