/*Your store should sell one type of things, like clothing or bikes, whatever you want your store to specialize in. You should have a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store. You should sell at least 15 items, and use select statements to order your items by price and show at least one statistic about the items.*/

CREATE TABLE items (id INTEGER PRIMARY KEY, name TEXT, price INTEGER, location TEXT, expiredDate INTEGER);

INSERT INTO items VALUES (1, "orange", 11, "fruit", 20190301);
INSERT INTO items VALUES (2, "orange", 100, "fruit", 20190301);
INSERT INTO items VALUES (3, "orange", 20, "fruit", 20190301);
INSERT INTO items VALUES (4, "orange", 100, "fruit", 20190301);
INSERT INTO items VALUES (5, "orange", 50, "fruit", 20190301);
INSERT INTO items VALUES (6, "banana", 100, "fruit", 20190301);
INSERT INTO items VALUES (7, "banana", 102, "fruit", 20190301);
INSERT INTO items VALUES (8, "banana", 100, "fruit", 20190301);
INSERT INTO items VALUES (9, "banana", 100, "fruit", 20190301);
INSERT INTO items VALUES (10, "banana", 100, "fruit", 20190301);
INSERT INTO items VALUES (11, "banana", 10, "fruit", 20190301);
INSERT INTO items VALUES (12, "banana", 10, "fruit", 20190301);
INSERT INTO items VALUES (13, "banana", 70, "fruit", 20190301);
INSERT INTO items VALUES (14, "banana", 100, "fruit", 20190301);
INSERT INTO items VALUES (15, "banana", 50, "fruit", 20190304);

SELECT * FROM items;
SELECT name, AVG(price) FROM items GROUP BY name;
