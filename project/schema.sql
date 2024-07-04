CREATE TABLE IF NOT EXISTS "users"(
    "id" INTEGER,
    "username" VARCHAR(50) NOT NULL,
    "email" VARCHAR(35) NOT NULL,
    "password" VARCHAR(75) NOT NULL,
    "create_at" DATETIME NOT NULL,

    CONSTRAINT users_pk PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "artists"(
    "id" INTEGER,
    "name" VARCHAR(35) NOT NULL,
    "bio" TEXT NOT NULL,

    CONSTRAINT artists_pk PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "albums"(
    "id" INTEGER,
    "artists_id" INTEGER,
    "name" VARCHAR(15) NOT NULL,
    "release_year" INTEGER NOT NULL,
    "genre" VARCHAR(15) NOT NULL,

    CONSTRAINT albums_pk PRIMARY KEY ("id"),
    CONSTRAINT albums_fk FOREIGN KEY ("artists_id") REFERENCES "artists"("id")
);

CREATE TABLE IF NOT EXISTS "tracks"(
    "id" INTEGER,
    "artists_id" INTEGER,
    "album_id" INTEGER,
    "title" VARCHAR(20) NOT NULL,
    "durations" VARCHAR(8) NOT NULL,
    "track_no" VARCHAR(20) NOT NULL,
    "played" INTEGER CHECK("played" >= 0) DEFAULT 0,

    CONSTRAINT tracks_pk PRIMARY KEY ("id"),
    CONSTRAINT tracks_fk FOREIGN KEY ("artists_id") REFERENCES "artists"("id"),
    CONSTRAINT tracks_fk FOREIGN KEY ("album_id") REFERENCES "albums"("id")
);

CREATE TABLE IF NOT EXISTS "playlists"(
    "id" INTEGER,
    "user_id" INTEGER,
    "name" VARCHAR(25) NOT NULL,
    "created_at" DATETIME NOT NULL,
    "track_id" INTEGER,

    CONSTRAINT playlists_pk PRIMARY KEY ("id"),
    CONSTRAINT playlists_fk FOREIGN KEY ("user_id") REFERENCES "users"("id"),
    CONSTRAINT playlists_fk FOREIGN KEY ("track_id") REFERENCES "tracks"("id")
);

CREATE TABLE IF NOT EXISTS "users_like"(
    "user_id" INTEGER,
    "track_id" INTEGER,

    CONSTRAINT users_like_pk PRIMARY KEY ("user_id", "track_id"),
    CONSTRAINT users_like_fk FOREIGN KEY ("user_id") REFERENCES "users"("id"),
    CONSTRAINT users_like_fk FOREIGN KEY ("track_id") REFERENCES "tracks"("id")
);


CREATE TABLE IF NOT EXISTS "User_History"(
    "user_id" INTEGER,
    "track_id" INTEGER,
    "played_at" DATETIME NOT NULL,

    CONSTRAINT users_like_pk PRIMARY KEY ("user_id", "track_id"),
    CONSTRAINT users_like_fk FOREIGN KEY ("user_id") REFERENCES "users"("id"),
    CONSTRAINT users_like_fk FOREIGN KEY ("track_id") REFERENCES "tracks"("id")
);


INSERT INTO "users" ("id", "username", "email", "password", "create_at") VALUES
(1, 'user1', 'user1@example.com', 'password123', '2024-07-04 10:00:00'),
(2, 'user2', 'user2@example.com', 'password456', '2024-07-04 11:00:00'),
(3, 'user3', 'user3@example.com', 'password789', '2024-07-04 12:00:00'),
(4, 'user4', 'user4@example.com', 'password101', '2024-07-04 13:00:00'),
(5, 'user5', 'user5@example.com', 'password202', '2024-07-04 14:00:00'),
(6, 'user6', 'user6@example.com', 'password303', '2024-07-04 15:00:00'),
(7, 'user7', 'user7@example.com', 'password404', '2024-07-04 16:00:00'),
(8, 'user8', 'user8@example.com', 'password505', '2024-07-04 17:00:00'),
(9, 'user9', 'user9@example.com', 'password606', '2024-07-04 18:00:00'),
(10, 'user10', 'user10@example.com', 'password707', '2024-07-04 19:00:00'),
(11, 'user11', 'user11@example.com', 'password808', '2024-07-04 20:00:00'),
(12, 'user12', 'user12@example.com', 'password909', '2024-07-04 21:00:00'),
(13, 'user13', 'user13@example.com', 'password010', '2024-07-04 22:00:00'),
(14, 'user14', 'user14@example.com', 'password111', '2024-07-04 23:00:00'),
(15, 'user15', 'user15@example.com', 'password121', '2024-07-05 00:00:00');


INSERT INTO "artists" ("id", "name", "bio") VALUES
(1, 'Artist One', 'Bio of Artist One'),
(2, 'Artist Two', 'Bio of Artist Two'),
(3, 'Artist Three', 'Bio of Artist Three'),
(4, 'Artist Four', 'Bio of Artist Four'),
(5, 'Artist Five', 'Bio of Artist Five'),
(6, 'Artist Six', 'Bio of Artist Six'),
(7, 'Artist Seven', 'Bio of Artist Seven'),
(8, 'Artist Eight', 'Bio of Artist Eight'),
(9, 'Artist Nine', 'Bio of Artist Nine'),
(10, 'Artist Ten', 'Bio of Artist Ten'),
(11, 'Artist Eleven', 'Bio of Artist Eleven'),
(12, 'Artist Twelve', 'Bio of Artist Twelve'),
(13, 'Artist Thirteen', 'Bio of Artist Thirteen'),
(14, 'Artist Fourteen', 'Bio of Artist Fourteen'),
(15, 'Artist Fifteen', 'Bio of Artist Fifteen');

INSERT INTO "albums" ("id", "artists_id", "name", "release_year", "genre") VALUES
(1, 1, 'Album One', 2020, 'Pop'),
(2, 2, 'Album Two', 2021, 'Rock'),
(3, 3, 'Album Three', 2022, 'Jazz'),
(4, 4, 'Album Four', 2023, 'Classical'),
(5, 5, 'Album Five', 2024, 'Hip-Hop'),
(6, 6, 'Album Six', 2020, 'Country'),
(7, 7, 'Album Seven', 2021, 'Reggae'),
(8, 8, 'Album Eight', 2022, 'Blues'),
(9, 9, 'Album Nine', 2023, 'Electronic'),
(10, 10, 'Album Ten', 2024, 'Folk'),
(11, 11, 'Album Eleven', 2020, 'Latin'),
(12, 12, 'Album Twelve', 2021, 'R&B'),
(13, 13, 'Album Thirteen', 2022, 'Metal'),
(14, 14, 'Album Fourteen', 2023, 'Soul'),
(15, 15, 'Album Fifteen', 2024, 'Alternative');

INSERT INTO "tracks" ("id", "artists_id", "album_id", "title", "durations", "track_no", "played") VALUES
(1, 1, 1, 'Track One', '3:30', '1', 50),
(2, 2, 2, 'Track Two', '4:15', '1', 40),
(3, 3, 3, 'Track Three', '5:00', '1', 30),
(4, 4, 4, 'Track Four', '2:45', '1', 20),
(5, 5, 5, 'Track Five', '3:15', '1', 10),
(6, 6, 6, 'Track Six', '4:30', '1', 60),
(7, 7, 7, 'Track Seven', '3:45', '1', 70),
(8, 8, 8, 'Track Eight', '5:30', '1', 80),
(9, 9, 9, 'Track Nine', '2:30', '1', 90),
(10, 10, 10, 'Track Ten', '3:00', '1', 100),
(11, 11, 11, 'Track Eleven', '4:00', '1', 110),
(12, 12, 12, 'Track Twelve', '5:15', '1', 120),
(13, 13, 13, 'Track Thirteen', '2:45', '1', 130),
(14, 14, 14, 'Track Fourteen', '3:30', '1', 140),
(15, 15, 15, 'Track Fifteen', '4:45', '1', 150);


INSERT INTO "playlists" ("id", "user_id", "name", "created_at") VALUES
(1, 1, 'Playlist One', '2024-07-04 10:00:00'),
(2, 2, 'Playlist Two', '2024-07-04 11:00:00'),
(3, 3, 'Playlist Three', '2024-07-04 12:00:00'),
(4, 4, 'Playlist Four', '2024-07-04 13:00:00'),
(5, 5, 'Playlist Five', '2024-07-04 14:00:00'),
(6, 6, 'Playlist Six', '2024-07-04 15:00:00'),
(7, 7, 'Playlist Seven', '2024-07-04 16:00:00'),
(8, 8, 'Playlist Eight', '2024-07-04 17:00:00'),
(9, 9, 'Playlist Nine', '2024-07-04 18:00:00'),
(10, 10, 'Playlist Ten', '2024-07-04 19:00:00'),
(11, 11, 'Playlist Eleven', '2024-07-04 20:00:00'),
(12, 12, 'Playlist Twelve', '2024-07-04 21:00:00'),
(13, 13, 'Playlist Thirteen', '2024-07-04 22:00:00'),
(14, 14, 'Playlist Fourteen', '2024-07-04 23:00:00'),
(15, 15, 'Playlist Fifteen', '2024-07-05 00:00:00');


INSERT INTO "users_like" ("user_id", "track_id") VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

INSERT INTO "user_history" ("user_id", "track_id", "played_at") VALUES
(1, 1, '2024-07-04 10:00:00'),
(2, 2, '2024-07-04 11:00:00'),
(3, 3, '2024-07-04 12:00:00'),
(4, 4, '2024-07-04 13:00:00'),
(5, 5, '2024-07-04 14:00:00'),
(6, 6, '2024-07-04 15:00:00'),
(7, 7, '2024-07-04 16:00:00'),
(8, 8, '2024-07-04 17:00:00'),
(9, 9, '2024-07-04 18:00:00'),
(10, 10, '2024-07-04 19:00:00'),
(11, 11, '2024-07-04 20:00:00'),
(12, 12, '2024-07-04 21:00:00'),
(13, 13, '2024-07-04 22:00:00'),
(14, 14, '2024-07-04 23:00:00'),
(15, 15, '2024-07-05 00:00:00');
