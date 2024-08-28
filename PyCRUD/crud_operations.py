import mysql.connector

try:
    conn = mysql.connector.connect(
        host="localhost",
        user="root",
        password="hari",
        database="mydatabase"
    )

    cursor = conn.cursor()

    # Create table
    cursor.execute('''
        CREATE TABLE IF NOT EXISTS users (
            id INT AUTO_INCREMENT PRIMARY KEY,
            name VARCHAR(100) NOT NULL,
            age INT NOT NULL
        )
    ''')
    conn.commit()

    # Create (Insert) Operation
    def create_user(name, age):
        cursor.execute('''
            INSERT INTO users (name, age) VALUES (%s, %s)
        ''', (name, age))
        conn.commit()
        print("User created successfully")


    # Read Operation
    def read_users():
        cursor.execute('SELECT * FROM users')
        rows = cursor.fetchall()
        for row in rows:
            print(row)


    # Update Operation
    def update_user_age(user_id, new_age):
        cursor.execute('''
            UPDATE users SET age = %s WHERE id = %s
        ''', (new_age, user_id))
        conn.commit()
        print("User updated successfully")


    # Delete Operation
    def delete_user(user_id):
        cursor.execute('''
            DELETE FROM users WHERE id = %s
        ''', (user_id,))
        conn.commit()
        print("User deleted successfully")

    # create_user('abc', 37)
    # create_user('davis', 75)
    # read_users()
    # update_user_age(1, 35)
    # delete_user(2)
    read_users()
    # cursor.close()
    # conn.close()


finally:
    # if conn.is_connected():
    #     conn.close()
    cursor.close()
    conn.close()
    pass
