# datetime

## 現在の日時を取得

```python
import datetime

print('datetime.today >>', datetime.datetime.today())
print('date.today >>', datetime.date.today())

# タイムゾーンの指定
timedelta = datetime.timedelta(hours=9)
timezone  = datetime.timezone(timedelta)
print('datetime.now', datetime.datetime.now(timezone))
```

```python
datetime.today >> 2020-11-03 04:09:05.669470
date.today >> 2020-11-03
datetime.now 2020-11-03 13:09:05.669500+09:00
```

## 文字列から日付オブジェクトに変換

```python
import datetime

hoge = '2001/1/15 9:22:33'
date = datetime.datetime.strptime(hoge, '%Y/%m/%d %H:%M:%S')
print(date)
```

```python
2001-01-15 09:22:33
```

## 日付から各要素を取り出す

```python
import datetime

date = datetime.datetime.now()

print('date >>', date)
print('date.year >>', date.year)
print('date.month >>', date.month)
print('date.day >>', date.day)
print('date.hour >>', date.hour)
print('date.minute >>', date.minute)
print('date.second >>', date.second)
print('date.microsecond >>', date.microsecond)
```

```python
date >> 2020-11-03 04:21:41.929897
date.year >> 2020
date.month >> 11
date.day >> 3
date.hour >> 4
date.minute >> 21
date.second >> 41
date.microsecond >> 929897
```

## 日付、時刻の計算

```python
import datetime

date1 = datetime.datetime(2000, 11, 3)
date2 = datetime.datetime(2020, 11, 3)

print('date1 >>', date1)
print('date2 >>', date2)

result = date2 - date1

print('result >>', result)
print('result.days >>', result.days)
```

```python
date1 >> 2000-11-03 00:00:00
date2 >> 2020-11-03 00:00:00
result >> 7305 days, 0:00:00
result.days >> 7305
```

## 日付、時刻の比較

```python
import datetime

date1 = datetime.datetime(2000, 11, 3)
date2 = datetime.datetime(2020, 11, 3)

print('date1 >>', date1)
print('date2 >>', date2)

# date1 は date2より大きい(未来)かどうか
result = date1 > date2
print('result >>', result)
```

```python
date1 >> 2000-11-03 00:00:00
date2 >> 2020-11-03 00:00:00
result >> False
```

## フォーマット指定

```python
import datetime

date = datetime.datetime.today()

print('date >>', date)
print("date.strftime('%c') >>", date.strftime('%c'))
print("date.strftime('%x') >>", date.strftime('%x'))
print("date.strftime('%X') >>", date.strftime('%X'))
print("date.strftime('%Y年%m月%d日') >>", date.strftime('%Y年%m月%d日'))
```

```python
date >> 2020-11-03 05:05:51.502433
date.strftime('%c') >> Tue Nov  3 05:05:51 2020
date.strftime('%x') >> 11/03/20
date.strftime('%X') >> 05:05:51
date.strftime('%Y年%m月%d日') >> 2020年11月03日
```
