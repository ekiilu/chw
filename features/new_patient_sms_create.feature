Feature: Register new patient through sms

In Order to register New Patient through SMS 
As a community Health Worker 
I want to be able to send details of the patient using text message 
And get a message telling me about the patient new ID 

Scenario: Sucessfull Patient Registration

Given the a registered Community Health Worker phone-number is "+254714136136"
When I receive text "New Patient,John M Doe,M,1978" as text message
Then a New Patient should be added to the database



