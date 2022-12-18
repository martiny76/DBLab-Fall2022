# تمرین سری دوم درس آز پایگاه

### گروه هفتم

---

&nbsp;

## تمرین اول:

```
SELECT title FROM films;
```

---

&nbsp;

## تمرین دوم:

#### مقدار 3 را برمیگرداند.

---

&nbsp;

## تمرین سوم:

```
SELECT release_year FROM films;
```

---

&nbsp;

## تمرین چهارم:

```
SELECT name FROM people;
```

---

&nbsp;

## تمرین پنجم:

```
SELECT title FROM films;
```

---

&nbsp;

## تمرین ششم:

```
SELECT title, release_year FROM films;
```

---

&nbsp;

## تمرین هفتم:

```
SELECT title, release_year, country FROM films;
```

---

&nbsp;

## تمرین هشتم:

```
SELECT * FROM films;
```

---

&nbsp;

## تمرین نهم:

```
SELECT DISTINCT country FROM films;
```

---

&nbsp;

## تمرین دهم:

```
SELECT certification FROM films;
```

---

&nbsp;

## تمرین یازدهم:

```
SELECT role FROM roles;
```

---

&nbsp;

## تمرین دوازدهم:

```
SELECT count(*) FROM people;
```

---

&nbsp;

## تمرین سیزدهم:

```
SELECT count(birthdate) FROM people where birthdate is not null;
```

---

&nbsp;

## تمرین چهاردهم:

```
SELECT count(DISTINCT birthdate) FROM people;
```

---

&nbsp;

## تمرین پانزدهم:

```
SELECT DISTINCT country FROM films where country is not null;
```

---

&nbsp;

## تمرین شانزدهم:

```
SELECT * FROM films WHERE release_year = 2016;
```

---

&nbsp;

## تمرین هفدهم:

```
SELECT count(*) FROM films WHERE release_year < 2000;
```

---

&nbsp;

## تمرین هجدهم:

```
SELECT title, release_year FROM films WHERE release_year > 2000;
```

---

&nbsp;

## تمرین نوزدهم:

```
SELECT * FROM films WHERE language = 'French';
```

---

&nbsp;

## تمرین بیستم:

```
SELECT name, birthdate FROM people WHERE birthdate = '1974-11-11';
```

---

&nbsp;

## تمرین بیست و یکم:

```
SELECT count(*) FROM films WHERE language = 'Hindi';
```

---

&nbsp;

## تمرین بیست و دوم:

```
SELECT * FROM films WHERE certification = 'R';
```

---

&nbsp;

## تمرین بیست و سوم:

```
SELECT title, release_year FROM films WHERE language = 'Spanish' AND release_year < 2000;
```

---

&nbsp;

## تمرین بیست و چهارم:

```
SELECT title, release_year FROM films WHERE release_year BETWEEN 1990 AND 1999;
```

---

&nbsp;

## تمرین بیست و پنجم:

```
SELECT title, release_year FROM films WHERE release_year BETWEEN 1990 AND 2000;
```

---

&nbsp;

## تمرین بیست و ششم:

```
SELECT title, release_year FROM films WHERE (release_year = 1990 OR release_year = 2000) AND duration > 120;
```

---

&nbsp;

## تمرین بیست و هفتم:

```
SELECT * FROM people WHERE deathdate is null;
```

---

&nbsp;

## تمرین بیست و هشتم:

```
SELECT count(*) FROM films WHERE language is null;
```

---

&nbsp;

## تمرین بیست و نهم:

```
SELECT * FROM people WHERE name LIKE 'B%';
```

---

&nbsp;

## تمرین سی ام:

```
SELECT * FROM people WHERE name LIKE '_r%';
```

---

&nbsp;

## تمرین سی و یکم:

```
SELECT sum(duration) FROM films;
```

---

&nbsp;

## تمرین سی و دوم:

```
SELECT max(duration) FROM films;
```

---

&nbsp;

## تمرین سی و سوم:

```
SELECT avg(duration) FROM films;
```

---

&nbsp;

## تمرین سی و چهارم:

```
SELECT avg(gross) FROM films;
```

---

&nbsp;

## تمرین سی و پنجم:

```
SELECT sum(gross) FROM films WHERE release_year >= 2000;
```

---

&nbsp;

## تمرین سی و ششم:

```
SELECT avg(gross) FROM films WHERE title LIKE 'A%';
```

---

&nbsp;

## تمرین سی و هفتم:

```
SELECT min(gross) FROM films WHERE release_year = 1994;
```

---

&nbsp;

## تمرین سی و هشتم:

```
SELECT max(gross) FROM films WHERE release_year BETWEEN 2000 AND 2012;
```

---

&nbsp;

## تمرین سی و نهم:

```
SELECT (count(deathdate)*100.0/count(*)) AS percentage_dead FROM people;
```

---

&nbsp;

## تمرین چهلم:

```
SELECT (max(release_year) - min(release_year))/10 AS number_of_decades FROM films;
```

---

&nbsp;

## تمرین چهل و یکم:

```
SELECT * FROM films WHERE certification != 'R';
```
