ALTER TABLE "myfirstmodule$homepage_controller" ADD "updatedtime" TIMESTAMP NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('446d50fd-b35f-4c75-a133-6d419cd8b943', 
'ad97cb85-ef23-4574-aa37-7391217d8817', 
'UpdatedTime', 
'updatedtime', 
20, 
0, 
'', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20220621 16:36:45';
