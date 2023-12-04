from cs50 import SQL
db = SQL("sqlite:////home/ubuntu/CS50-SQL/dont-panic-python/dont-panic.db")
password = input("Enter a password: ")
db.execute(
    "UPDATE users SET "password" = password
    WHERE "username" = 'admin'";
)

print("Hacked!")
