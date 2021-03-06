CREATE TABLE `Entries` (
        `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
        `concept` TEXT NOT NULL,
        `entry` TEXT NOT NULL,
        `date` INTEGER NOT NULL,
        `moodId` INTEGER NOT NULL,
        FOREIGN KEY(`moodId`) REFERENCES `Moods`(`id`)
);

CREATE TABLE `Moods` (
  `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `label` TEXT NOT NULL
);


INSERT INTO `Entries` VALUES (1, 'abcd', '123', '15984ddddddd58548239', 1)
INSERT INTO `Entries` VALUES (3, 'delete', 'Now Deleting', '1598458559152', 1)
INSERT INTO `Entries` VALUES (4, 'ANGRY', 'jlj', '1598557358781', 3)
INSERT INTO `Entries` VALUES (5, '678', 'Now Deleting', '1598557373697', 4)

INSERT INTO `Moods` VALUES (1, 'Happy')
INSERT INTO `Moods` VALUES (2, 'Sad')
INSERT INTO `Moods` VALUES (3, 'Angry')
INSERT INTO `Moods` VALUES (4, 'Ok')

SELECT
    a.id,
    a.concept,
    a.entry,
    a.date,
    a.moodId,
    m.label
FROM Entries a
JOIN Moods m
      ON m.id = a.moodId

SELECT
    a.id,
    a.label
FROM Moods a
