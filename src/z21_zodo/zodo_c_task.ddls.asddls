@AbapCatalog.sqlViewName: 'Z21CTASK'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ZODO Task List for Fiori'
@Metadata.allowExtensions: true

//@VDM.viewType: #CONSUMPTION
define view ZODO_C_TASK as select from ZODO_I_TASK_ENHANCED {
    key Taskname,
    StartDate,
    DueDate,
    Priority,
    Done,
    Type
    
}
