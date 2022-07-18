CREATE TABLE "myfirstmodule$user" (
	"id" BIGINT NOT NULL,
	"name" VARCHAR_IGNORECASE(200) NULL,
	"email" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('ad97cb85-ef23-4574-aa37-7391217d8817', 
'MyFirstModule.User', 
'myfirstmodule$user', 
false, 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('e667c65f-d593-4d29-8e18-6a208116be65', 
'ad97cb85-ef23-4574-aa37-7391217d8817', 
'Name', 
'name', 
30, 
200, 
'', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('2193e79b-431d-4c52-91cc-41f69e87823b', 
'ad97cb85-ef23-4574-aa37-7391217d8817', 
'Email', 
'email', 
30, 
200, 
'', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20220607 12:57:46';
