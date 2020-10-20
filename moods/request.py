import sqlite3
import json


from models.mood import Mood

def get_all_moods():
    with sqlite3.connect("./dailyjournal.db") as conn:

        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute("""
        SELECT
            a.id,
            a.label
        FROM moods a
        """)

        moods = []

        dataset = db_cursor.fetchall()


        for row in dataset:

            mood = Mood(row['id'], row['label'])

            moods.append(mood.__dict__)

    return json.dumps(moods)

# def get_single_entry(id):
#     with sqlite3.connect("./dailyjournal.db") as conn:
#         conn.row_factory = sqlite3.Row
#         db_cursor = conn.cursor()

#         # Use a ? parameter to inject a variable's value
#         # into the SQL statement.
#         db_cursor.execute("""
#         SELECT
#             a.id,
#             a.concept,
#             a.entry,
#             a.date,
#             a.moodId
#         FROM entries a
#         WHERE a.id = ?
#         """, ( id, ))

#         data = db_cursor.fetchone()

#         entry = Entry(data['id'], data['concept'], data['entry'], data['date'], data['moodId'])

#         return json.dumps(entry.__dict__)
