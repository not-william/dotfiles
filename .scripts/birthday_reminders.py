from datetime import datetime, timedelta, date

# open file
with open("/Users/will/Sync/notes/home/events/birthdays.txt", "r") as f:
    data = f.readlines()

data = [x.split("\n")[0] for x in data]
data = [x.split(":") for x in data]

names, dates = list(zip(*data))

today = date.today()

dates = [datetime.strptime(f"{birthday}.{today.year}", "%d.%m.%Y").date() for birthday in dates]

upcoming_birthdays = []
for name, birthday in zip(names, dates):
    if birthday < today:
        new_date = date(year=birthday.year + 1, month=birthday.month, day=birthday.day)
    else:
        new_date = date(year=birthday.year, month=birthday.month, day=birthday.day)
    
    if timedelta() < new_date - today < timedelta(days=14):
        upcoming_birthdays.append(f"{name} {new_date.strftime('%d %B %Y')}")

if upcoming_birthdays:
    print("Upcoming birthdays", *upcoming_birthdays, sep="\n ")
