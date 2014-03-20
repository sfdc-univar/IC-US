global with sharing class ScheduleAccountReassignmentBatch implements Schedulable
{
    global void execute(SchedulableContext ctx) {
        run();
    }

    global void run() 
    {
        AccountReassignmentBatch.runBatch();
    }

    
}