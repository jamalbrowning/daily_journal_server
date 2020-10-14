CREATE TABLE `Entries` (
        `id`,
        `concept`,
        `entry`,
        `date`,
        `moodId`
);

CREATE TABLE `Moods` (
        `id`,
        `label`
);


INSERT INTO `Entries` VALUES (2, 'abc', '123', '1598458548239', 2)
INSERT INTO `Entries` VALUES (3, 'delete', 'Now Deleting', '1598458559152', 1)
INSERT INTO `Entries` VALUES (4, 'ANGRY', 'jlj', '1598557358781', 3)
INSERT INTO `Entries` VALUES (5, '678', 'Now Deleting', '1598557373697', 4)

INSERT INTO `Moods` VALUES (1, 'Happy')
INSERT INTO `Moods` VALUES (2, 'Sad')
INSERT INTO `Moods` VALUES (3, 'Angry')
INSERT INTO `Moods` VALUES (4, 'Ok')