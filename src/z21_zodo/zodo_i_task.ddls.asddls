@AbapCatalog.sqlViewName: 'ZODOITASK'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Task list'

//@VDM.viewType: #BASIC
define view ZODO_I_TASK as select from zodo_task {
    key taskname as Taskname,
    start_date as StartDate,
    due_date as DueDate,
    priority as Priority,
    done as Done
}
