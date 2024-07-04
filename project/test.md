# Design Document

By Ahmed Mohamed EL-Metwaly Ghoniem

Video overview: <URL HERE>

## Scope

In this section you should answer the following questions:

* **What is the purpose of your database?**
  The purpose of the database is to support a music streaming service, enabling users to manage and interact with a collection of artists, albums, tracks, and playlists. It will allow users to create and manage playlists, track their listening history, and manage their preferences.

* **Which people, places, things, etc. are you including in the scope of your database?**
  The database includes entities such as users, artists, albums, tracks, and playlists. It captures user interactions with tracks, such as liking tracks and tracking listening history.

* **Which people, places, things, etc. are *outside* the scope of your database?**
  The database does not include external content such as lyrics or album artwork. It also does not handle payment processing or user subscription management, which are outside the scope of this database design.

## Functional Requirements

In this section you should answer the following questions:

* **What should a user be able to do with your database?**
  - Users should be able to register, log in, and manage their profiles.
  - Users should be able to browse and search for artists, albums, and tracks.
  - Users should be able to create and manage playlists.
  - Users should be able to like tracks and view their listening history.
  - Users should be able to see statistics such as the number of times a track has been played.

* **What's beyond the scope of what a user should be able to do with your database?**
  - Users will not be able to upload new tracks or albums.
  - The database does not handle content licensing or rights management.
  - Users cannot perform administrative tasks such as managing other users or system-wide settings.

## Representation

### Entities

In this section you should answer the following questions:

* **Which entities will you choose to represent in your database?**
  - **Users**: To represent the users of the music service.
  - **Artists**: To represent musicians or groups who create music.
  - **Albums**: To represent collections of tracks created by artists.
  - **Tracks**: To represent individual pieces of music.
  - **Playlists**: To represent collections of tracks curated by users.
  - **User History**: To track which tracks users have listened to and when.

* **What attributes will those entities have?**
  - **Users**: `id`, `username`, `email`, `password`, `created_at`
  - **Artists**: `id`, `name`, `bio`
  - **Albums**: `id`, `artists_id`, `name`, `release_year`, `genre`
  - **Tracks**: `id`, `artists_id`, `album_id`, `title`, `durations`, `track_no`, `played`
  - **Playlists**: `id`, `user_id`, `name`, `created_at`
  - **User History**: `user_id`, `track_id`, `played_at`

* **Why did you choose the types you did?**
  - **VARCHAR**: For text fields where length can vary but is not excessively large.
  - **INTEGER**: For identifiers and counts.
  - **DATETIME**: To record timestamps of actions.
  - **TEXT**: For longer descriptions or bios.

* **Why did you choose the constraints you did?**
  - **NOT NULL**: To ensure essential fields are always provided.
  - **PRIMARY KEY**: To uniquely identify each record.
  - **FOREIGN KEY**: To maintain referential integrity between tables.
  - **CHECK**: To enforce valid data (e.g., non-negative play counts).

### Relationships

In this section you should include your entity relationship diagram and describe the relationships between the entities in your database.

* **Users** can create **Playlists** and can have multiple **User History** records.
* **Artists** can have multiple **Albums**.
* **Albums** can contain multiple **Tracks**.
* **Tracks** can be part of multiple **Playlists** and can be liked by multiple **Users**.
* **Users** can like multiple **Tracks**.

## Optimizations

In this section you should answer the following questions:

* **Which optimizations (e.g., indexes, views) did you create? Why?**
  - **Indexes** on `users.email`, `tracks.title`, and `albums.name` to speed up search queries.
  - **Views** to aggregate data for common queries, such as top tracks or popular artists.

## Limitations

In this section you should answer the following questions:

* **What are the limitations of your design?**
  - The design does not include support for audio file storage or streaming.
  - It does not manage complex user permissions or roles beyond basic user authentication.

* **What might your database not be able to represent very well?**
  - Detailed analytics on user behavior beyond basic play counts and history.
  - Relationships between tracks or albums (e.g., collaborations) are simplified and may not capture all nuances.

