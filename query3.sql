create view screw_part as SELECT * FROM lab.part WHERE PNAME = "Screw";
SELECT * FROM screw_part;
alter view screw_part as SELECT * FROM lab.part WHERE PNAME="Screw" AND WEIGHT <> NULL; 
SELECT * FROM screw_part;
SELECT DISTINCT jname from lab.project, screw_part, Supply WHERE project.JNUM=supply.JNUM AND screw_part.pnum=supply.pnum;
UPDATE screw_part SET colour="Green" WHERE WEIGHT is not NULL;
SELECT * FROM screw_part;
SELECT * FROM lab.part;
create view convenientSupply (pnum,pname,jnum,jname,city) as SELECT pnum,pname,jnum,jname,part.city FROM part,project WHERE part.CITY=project.CITY;
SELECT * FROM convenientSupply;
INSERT INTO convenientSupply (pnum,pname,jnum,jname,city) VALUES ('P1','Shaft','J10','LED','Paris');

 
