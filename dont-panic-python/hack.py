from cs50 import SQL
db = SQL("sqlite:////home/ubuntu/CS50-SQL/dont-panic-python/dont-panic.db")
Password = input("Enter a password: ")
db.execute(
    UPDATE users SET password = '?'
    WHERE username = 'admin';
)

print("Hacked!")
