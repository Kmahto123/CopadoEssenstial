/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-09-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class TaskService {
    
    //constructor
    public TaskService(){}
    
    public void create(List<Opportunity> closedWonOpps){
        system.debug('*************Create() of TaskService is running');
        List<Task> taskList = new List<Task>();
        
        for(Opportunity oppRecord: closedWonOpps){
            TaskList.add(
                New Task( 
                    subject = 'Follow Task for ' + OppRecord.Name,
                    Description = 'Test Task',
                    WhatId = OppRecord.Id
                )
            );
        }
        
        //Insert task//
        if(TaskList.size() > 0){
            DataBase.insert(TaskList);
        }
    }

}