# README

Steps to run:

```
git pull https://github.com/carellen/mayak.git
```

```
cd mayak
```

```
whenever --update-crontab
```

```
redis-server
```

```
bundle exec sidekiq
```

```
rails db:create db:migrate
```

```
rails s
```

