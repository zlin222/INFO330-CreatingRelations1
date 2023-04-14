CREATE TABLE timeslots (
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    id PRIMARY KEY);
INSERT INTO timeslots VALUES ('8:30', "10:30", 1);

CREATE TABLE tem_rooms (
    id INTEGER,
    number INTEGER,
    buildingid INTEGER,
    seating INTEGER,
    PRIMARY KEY (number, buildingid, id),
    FOREIGN KEY (buildingid) REFERENCES buildings(id));
INSERT INTO tem_rooms VALUES (1, 400, (SELECT id FROM buildings WHERE name="Mary Gates Hall"), 40);

CREATE TABLE schedule (
    coursecode NOT NULL,
    roomid INTEGRER NOT NULL,
    timeslotid INTEGRER,
    CONSTRAINT combine_id UNIQUE (roomid, timeslotid));

INSERT INTO schedule VALUES ('INFO330A', 'RAI121', '2');

DROP TABLE rooms;
ALTER TABLE tem_rooms RENAME TO rooms;
