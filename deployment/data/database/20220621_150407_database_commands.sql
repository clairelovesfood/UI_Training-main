ALTER TABLE "myfirstmodule$user" RENAME TO "myfirstmodule$homepage_controller";
UPDATE "mendixsystem$entity"
 SET "entity_name" = 'MyFirstModule.HomePage_controller', 
"table_name" = 'myfirstmodule$homepage_controller', 
"superentity_id" = NULL, 
"remote" = false, 
"remote_primary_key" = false
 WHERE "id" = 'ad97cb85-ef23-4574-aa37-7391217d8817';
CREATE TABLE "myfirstmodule$homepage_controller_reported" (
	"myfirstmodule$homepage_controllerid" BIGINT NOT NULL,
	"myfirstmodule$reportedid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$homepage_controllerid","myfirstmodule$reportedid"),
	CONSTRAINT "uniq_myfirstmodule$homepage_controller_reported_myfirstmodule$reportedid" UNIQUE ("myfirstmodule$reportedid"),
	CONSTRAINT "uniq_myfirstmodule$homepage_controller_reported_myfirstmodule$homepage_controllerid" UNIQUE ("myfirstmodule$homepage_controllerid"));
CREATE INDEX "idx_myfirstmodule$homepage_controller_reported_myfirstmodule$reported_myfirstmodule$homepage_controller" ON "myfirstmodule$homepage_controller_reported" ("myfirstmodule$reportedid" ASC,"myfirstmodule$homepage_controllerid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('0165aedf-10be-46af-9995-dc5378728396', 
'MyFirstModule.HomePage_controller_Reported', 
'myfirstmodule$homepage_controller_reported', 
'ad97cb85-ef23-4574-aa37-7391217d8817', 
'32163a8f-f3b1-47f2-bbae-11f47a9bb876', 
'myfirstmodule$homepage_controllerid', 
'myfirstmodule$reportedid', 
'idx_myfirstmodule$homepage_controller_reported_myfirstmodule$reported_myfirstmodule$homepage_controller');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_myfirstmodule$homepage_controller_reported_myfirstmodule$reportedid', 
'0165aedf-10be-46af-9995-dc5378728396', 
'41ff6507-7d1a-3058-a7c9-7bd0465326b6');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_myfirstmodule$homepage_controller_reported_myfirstmodule$homepage_controllerid', 
'0165aedf-10be-46af-9995-dc5378728396', 
'734f3105-e0a9-373a-8692-0b60c486b5e1');
CREATE TABLE "myfirstmodule$reported" (
	"id" BIGINT NOT NULL,
	"status" BOOLEAN NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('32163a8f-f3b1-47f2-bbae-11f47a9bb876', 
'MyFirstModule.Reported', 
'myfirstmodule$reported', 
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
 VALUES ('b2823942-5e67-4be5-96eb-1c3dcef756fd', 
'32163a8f-f3b1-47f2-bbae-11f47a9bb876', 
'Status', 
'status', 
10, 
0, 
'true', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20220621 15:04:07';
