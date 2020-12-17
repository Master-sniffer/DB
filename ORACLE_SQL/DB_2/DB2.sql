--/*

--Дети
DROP TABLE Idea_team;
DROP TABLE PR_Team;
DROP TABLE VFX_Team;
DROP TABLE Level_Design;
DROP TABLE It_Team;
DROP TABLE Outsource;
DROP TABLE Companys_Team;
DROP TABLE Audio_Designer; 

-- Родители
DROP TABLE Demo_build;
DROP TABLE Visual_Team;
DROP TABLE Project_manager;
DROP TABLE Company;
DROP TABLE Ready_Project;
--*/


--ID Number CONSTRAINT IDFAC PRIMARY KEY

create table Ready_Project
(   
	Name_Of_The_Subject VARCHAR2(35) CONSTRAINT READ_PROJ PRIMARY KEY,
	Ready_Status Number NOT NULL
);



create table Company
   ( 
   	Name_Of_The_Company VARCHAR2 (35) CONSTRAINT Company_Name PRIMARY KEY,  -- Name_Of_The_Company, Budget , Number_OF_WORKERS , Discuss 
   	Budget Number  NOT NULL,
   	Time_Left Date  NOT NULL,
   	Number_OF_WORKERS Number,
   	Discuss VARCHAR2(35),
    Ready_Proj VARCHAR2 (35),
    CONSTRAINT READY_PRODUCT FOREIGN KEY (Ready_Proj) REFERENCES  Ready_Project (Name_Of_The_Subject)
   );

create table Idea_team
(    
    Registration_date Date, --  Id_Of_The_Project,  Current_Project
    Id_Of_The_Project Number  NOT NULL,
    Current_Project VARCHAR2 (35) NOT NULL
);

create table Project_manager
(   
	Current_Project VARCHAR2(35) CONSTRAINT Current_Project_PC PRIMARY KEY, -- Current_Project, ID_OF_THE_EMPLOYEE, Given_Instructions, Payment,  Name_Of_The_Company_PM
	ID_OF_THE_EMPLOYEE Number NOT NULL,
	Given_Instructions VARCHAR2 (35) NOT NULL,
	Payment Number,
    Name_Of_The_Company_PM VARCHAR2(35),
    CONSTRAINT Proj_Man FOREIGN KEY (Name_Of_The_Company_PM) REFERENCES  Company (Name_Of_The_Company)

);

create table Demo_build
(   
    Version_Demo Number CONSTRAINT Version_Demo PRIMARY KEY, --Version_Demo,  Access_Demo
    Access_Demo VARCHAR2 (35) NOT NULL
);


create table PR_Team
(   
	ID Number NOT NULL, --Number, Access_To_Demo_Build , Demo_Version
	Access_To_Demo_Build VARCHAR2 (35) NOT NULL,
    Demo_Version Number,
    CONSTRAINT Demo_Version_PR FOREIGN KEY (Demo_Version) REFERENCES  Demo_build (Version_Demo)
);



-- КАК ДОБАВИТЬ 2 НАСЛЕДОВАНИЕ
create table Visual_Team  
(   
	Deadline Date NOT NULL, --Deadline, Given_Instructions, ID, Employees_Are_Staying, Current_Project_VT
	Given_Instructions VARCHAR2 (35) NOT NULL,
	ID Number NOT NULL,
	Employees_Are_Staying VARCHAR2(35),
    Current_Project_VT VARCHAR2(35),
    CONSTRAINT Current_Project_V FOREIGN KEY (Current_Project_VT) REFERENCES  Project_manager (Current_Project)

);


create table VFX_Team 
(   
	Budget Number NOT NULL, --Budget, Team_Size, Current_Project_VFX
	Team_Size Number,
    Current_Project_VFX VARCHAR2(35),
    CONSTRAINT Current_Project_FIX FOREIGN KEY (Current_Project_VFX) REFERENCES  Project_manager (Current_Project)

);

create table Level_Design 
(   
	Abailable_Prefabs VARCHAR2 (35) NOT NULL,  -- Abailable_Prefabs,  Budget, Ready_To_Test_levels, Current_Project_LD
	Budget Number NOT NULL,
	Ready_To_Test_levels VARCHAR2(35),
    Current_Project_LD VARCHAR2(35),
    CONSTRAINT Current_Project_Level FOREIGN KEY (Current_Project_LD) REFERENCES  Project_manager (Current_Project)

);


create table It_Team 
(   
	Time_Left Date NOT NULL, -- ID_IT_TEAM, Instructions, Employee_Unavailable , Current_Project_IT_TEAM
	ID_IT_TEAM Number NOT NULL,
	Instructions VARCHAR2 (35) NOT NULL,
	Employee_Unavailable VARCHAR2(35),
    Current_Project_IT_TEAM VARCHAR2(35),
    CONSTRAINT Current_Project_ITT FOREIGN KEY (Current_Project_IT_TEAM) REFERENCES  Project_manager (Current_Project)    


);


create table Outsource 
(   
	Given_Instructions VARCHAR2 (35) NOT NULL,-- Given_Instructions, Number_Of_People, Contract_Status, Contact_Info, Info_about_employee, Budget
	Number_Of_People Number NOT NULL,
	Contract_Status VARCHAR2 (35) NOT NULL,
	Contact_Info VARCHAR2 (35) NOT NULL,
	Info_about_employee VARCHAR2(35),
	Budget Number

);


create table Companys_Team 
(   
	Budget Number NOT NULL, -- Budget, Given_Instructions, Random_Generator, Testers, Compilers, Team_Size, Current_Project_Companys_Team
	Given_Instructions VARCHAR2 (35) NOT NULL,
	Random_Generator VARCHAR2 (35) NOT NULL,
	Testers VARCHAR2 (35) NOT NULL,
	Compilers VARCHAR2 (35) NOT NULL, 
	TimeTable Date,
	Team_Size Number,
    Current_Project_Companys_Team  VARCHAR2(35),
    CONSTRAINT Current_Project_CT FOREIGN KEY (Current_Project_Companys_Team) REFERENCES  Project_manager (Current_Project)    


);


create table Audio_Designer 
(   
	ID Number NOT NULL, -- ID, Available_Samples, Status_Of_The_Project, Demo_build, Payment, Demo_Version
	Available_Samples VARCHAR2 (35) NOT NULL, 
	Status_Of_The_Project VARCHAR2 (35) NOT NULL,
	Demo_build VARCHAR2 (35) NOT NULL, 
	Payment Number,
    Demo_Version Number,
    CONSTRAINT Demo_Version_AD FOREIGN KEY (Demo_Version) REFERENCES  Demo_build (Version_Demo)

);

--INSERTING Ready_Project
INSERT INTO Ready_Project (Name_Of_The_Subject, Ready_Status)
VALUES ('Mega_Chel',15);


--INSERTING Company HERE
INSERT INTO Company (Name_Of_The_Company, Budget , Number_OF_WORKERS , Discuss, Time_Left)
VALUES ('LOADING SESSION',15000, 69, 'HELO, we are dead', '01-JAN-17');


--INSERTING Idea_team
INSERT INTO Idea_team (Id_Of_The_Project,  Current_Project)
VALUES (228, 'Mega_Chel');


--INSERTING Project_manager
INSERT INTO Project_manager (Current_Project, ID_OF_THE_EMPLOYEE, Given_Instructions, Payment)
VALUES ('Mega_Chel',420, 'Dont f*ck up', 231321);


--INSERTING Demo_build
INSERT INTO Demo_build (Version_Demo,  Access_Demo)
VALUES (21, 'biba u habiva');


--INSERTING PR_Team
INSERT INTO PR_Team (ID, Access_To_Demo_Build )
VALUES (92931, 'Nobody, XD');


--INSERTING Visual_Team HERE
INSERT INTO Visual_Team ( Deadline, Given_Instructions, ID, Employees_Are_Staying)
VALUES ('05-DEC-20','Draw some shit', 8765321, 0);


--INSERTING VFX_Team
INSERT INTO VFX_Team (Budget, Team_Size)
VALUES (23124, 982321);


--INSERTING Level_Design
INSERT INTO Level_Design (Abailable_Prefabs,  Budget, Ready_To_Test_levels)
VALUES ('THERE ARE NO PREFABS IN THIS ROOM', 29764, 'Molchat Doma');


--INSERTING It_Team HERE
INSERT INTO It_Team (Time_Left, ID_IT_TEAM, Instructions, Employee_Unavailable )
VALUES ('20-APR-13',7, 'N7 is here', 1337);


--INSERTING Outsource
INSERT INTO Outsource (Given_Instructions, Number_Of_People, Contract_Status, Contact_Info, Info_about_employee, Budget)
VALUES ('Kept you waiting, huh ?', 986, 'Fired', 'Abandoned', 'Just Shepard Dumbas', 0);


--INSERTING Companys_Team
INSERT INTO Companys_Team (Budget, Given_Instructions, Random_Generator, Testers, Compilers, Team_Size)
VALUES (314, 'Here we go again', 'it just works', 'Huey, Johny, Pissikis', 'C# hobo', 3412214152626);


--INSERTING Audio_Designer
INSERT INTO Audio_Designer (ID, Available_Samples, Status_Of_The_Project, Demo_build, Payment)
VALUES (8800553535, 'None', 'NO PROJECT, LMAO', 'DEMO, WTF ?', 4142);