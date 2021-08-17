CREATE
EXTENSION IF NOT EXISTS moddatetime;

CREATE TABLE gin
(
    id         INTEGER                  NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT (NOW() AT TIME ZONE 'utc'),
    updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT (NOW() AT TIME ZONE 'utc'),
    name       TEXT                     NOT NULL
);

CREATE TRIGGER gin_updated_at
    BEFORE UPDATE
    ON gin
    FOR EACH ROW
    EXECUTE PROCEDURE moddatetime (updated_at);

INSERT INTO gin (name)
VALUES ('Tanqueray London Dry Gin'),
       ('Plymouth Original Botanical Dry Gin'),
       ('Opihr Gin Spices of the Orient'),
       ('Bombay Sapphire London Dry Gin');
