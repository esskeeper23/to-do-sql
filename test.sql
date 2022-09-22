CREATE TABLE "to_do" (
  "id" uuid PRIMARY KEY,
  "title_work" varchar(255) NOT NULL,
  "description_work" text NOT NULL,
  "is_completed" boolean DEFAULT false,
  "created_at" timestamp DEFAULT 'now()',
  "update_at" timestamp DEFAULT 'now()'
);

insert into to_do (
	id,
	title_work,
	description_work
) values (
	'365b3069-8c59-4a89-8477-84c4d03fb9bc',
	'homeWork',
	'do my postgres homework'
),
(
	'cc9fc470-e8c5-4b9f-86be-0301d44d9450',
	'study',
	'study some express and node.js'
),
(
	'202136c5-a84f-4cba-a1f0-061362c41a7b',
	'relax',
	'play path of exile. kill syrus, the maven and have fun'
);

-- GET todos los to-do 

select * from to_do;

-- GET to-do terminados

select * from to_do where is_completed = true;

