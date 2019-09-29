# README

Search words in Daily news articles.
- url: http://3.112.152.77:3100/

### Abstract

- In https://github.com/MyDuan/data_scrapy , get the data from https://www.rarejob.com/dna
    - just have the data in ~2019.9.27
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
        - Now the I just prepare the data in development.sqlite3 in (2017.03.17 ~ 2019.09.27)
    - Search all words of the articles in one month (2017.03 ~ 2019.07)
- Use Ruby on rails

### Run in local
- install Ruby and Ruby on rails (Rails 5.2.3)
- `cd english_words_of_daily_news`
- Run `bundle install`
- Run `rails s`
- Url: http://localhost:3000/
- aws ec2 url: http://3.112.152.77:3100/

### Version
 - tested in Mac
 - rbenv: 1.1.2
 - Ruby : 2.6.4
 - Rails: 5.2.3
