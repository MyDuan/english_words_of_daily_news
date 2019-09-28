# README

Search words in Daily news articles.

### Abstract

- In https://github.com/MyDuan/data_scrapy , get the data from https://www.rarejob.com/dna
    - db structure
        - table: `articles`
        ```
        sqlite> pragma table_info('articles');
        0|id|integer|1||1
        1|title|text|0||0
        2|release_year|integer|0||0
        3|release_month|integer|0||0
        4|release_day|integer|0||0
        5|unlocking_word|text|0||0
        6|meaning|text|0||0
        7|example|text|0||0
        8|article_url|text|0||0
        9|category|text|0||0
        10|created_at|datetime|1||0  ~>(insert later)
        11|updated_at|datetime|1||0  ~>(insert later)
        ```

- Here use the data (saved in `db/development.sqlite3` ), to create a english word search engine.
    - Search an article and words by using word, title, date
    - Search all words of the articles in one month
- Use Ruby on rails

### Run in local
- install Ruby and Ruby on rails (Rails 5.2.3)
- `cd english_words_of_daily_news`
- Run `rails s`
- Url: http://localhost:3000/
