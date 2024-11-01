CREATE TABLE IF NOT EXISTS "todos" (
	"id" bigint PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY (sequence name "todos_id_seq" INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START WITH 1 CACHE 1),
	"user_id" text DEFAULT (auth.user_id()) NOT NULL,
	"task" text NOT NULL,
	"is_complete" boolean DEFAULT false NOT NULL,
	"inserted_at" timestamp with time zone DEFAULT now() NOT NULL
);
