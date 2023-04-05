# 💻💬 /r/technology reddit comment analytics microservices💬📱
## A multi-container application for technology related subreddit comment analytics

* Designed a microservice architecture to perform real-time analytics on comments from technology-related subreddits
(e.g., r/technology), with a cumulative analysis of over `220k` comments from `76k` users.
* Utilized `Kafka` as the data broker to decouple the comment ingestion and keyword extraction using named entity
recognition enabled by `Spacy`.
* Streamed data from Kafka to `Elasticsearch` using `Kafka Connect Elasticsearch Sink` and `ksqlDB`, and built
a `Kibana` dashboard to identify the active Redditors and hot topics within user-specified time range.
* Orchestrated the multi-container (10 containers) application with `docker-compose`.


###  The percentage change in the most discussed topics:
        increased from 15.23% to 18.65% as for "AI", 📈
        9.35% to 10.24% as for "Google", 📈
        4.5% to 6.45% as for "TikTok", 📈
        decreased from 4.7% to 3.24% as for "SVB", 📉
        during the period of March 26 to April 5.
<img src="https://user-images.githubusercontent.com/65870261/227825800-c33f0641-3798-4555-9ab6-d7d91d251094.png" width="600" height="552" />
<img src="https://user-images.githubusercontent.com/65870261/230119152-3dd3b4a5-49ac-40da-bf13-95f0a1e8ec23.jpg" width="600" height="552" />






