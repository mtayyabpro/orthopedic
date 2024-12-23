import pymysql

try:
    conn = pymysql.connect(
        host='localhost',
        user='root',
        password='admin',
        database='orthopedicDB'
    )
    print("Connected successfully")
    conn.close()
except pymysql.MySQLError as e:
    print(f"Error: {e}")
