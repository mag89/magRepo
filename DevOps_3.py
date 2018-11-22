import json

data_json = """[ { "_id": "5bc44d3edf2b8798ce3c95bd",
              "tags": [ "proident", "aute", "in", "laborum" ],
              "friends": [ { "id": 0, "name": "Alyce Wall" },
                           { "name": "Eloise Cervantes" },
                           { "id": 2, "name": "Turner Morton" } ],
              "greeting": "Hello, stranger! You have 8 unread messages.",
              "favoriteFruit": "strawberry" },
                 { "id": 1, "_id": "f4ee69a5-55a9-4cfd-ac4e-5eb525ec6d5a",
                   "tags": [ "radn1", "auto2", "out", "exploit" ],
                   "friends": [ { "id": 0, "name": "Mu Xaong" },
                                { "id": 1, "name": "Irgem Stiv" },
                                { "id": 2, "name": "In Kirisk" } ],
                   "greeting": "I'm back.", "favoriteFruit": "apple" } ]"""

data_python = json.loads(data_json)

for person in data_python:
    if "laborum" in person["tags"]:
        for friend in person["friends"]:
            if "id" in friend:
                if friend["id"] == 2:
                    print(friend["name"])

