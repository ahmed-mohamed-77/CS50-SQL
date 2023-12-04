from cs50 import SQL
db = SQL("sqlite:////home/ubuntu/CS50-SQL/dont-panic-python/dont-panic.db")
db.execute(
    UPDATE users SET password = 'hacked!'
    WHERE username = 'admin';
)

print("Hacked!")
