CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE sys_state (
    stt_id UUID PRIMARY KEY,
    stt_name VARCHAR(50),
    stt_code VARCHAR(10)
);

CREATE TABLE opt_party (
    pty_id UUID PRIMARY KEY,
    pty_firstname VARCHAR(50),
    pty_lastname VARCHAR(50),
    pty_phone VARCHAR(20),
    pty_ssn VARCHAR(20)
);

CREATE TABLE opt_address (
    add_id UUID PRIMARY KEY,
    add_line1 VARCHAR(100),
    add_city VARCHAR(50),
    add_state UUID REFERENCES sys_state(stt_id),
    add_zip VARCHAR(10),
    add_partyid UUID REFERENCES opt_party(pty_id)
);
