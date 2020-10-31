# pyenv

## pyenvのインストール

インストール

```bash
$ anyenv install pyenv

Install pyenv succeeded!
Please reload your profile (exec $SHELL -l) or open a new session.
```

シェルを再起動する

```bash
# bash
$ exec $SHELL -l
```

pyenv がインストールされたことを確認

```bash
$ pyenv

pyenv 1.2.21
```

## pythonのインストール

インストールできるバージョンを確認

```bash
$ pyenv install -l

Available versions:
  2.1.3
  2.2.3
  2.3.7
  2.4.0
  2.4.1
  2.4.2
  # 〜省略〜
```

とりあえず Anaconda の最新版を入れてみる

```bash
$ pyenv install anaconda3-2020.07

Installing Anaconda3-2020.07-MacOSX-x86_64...
Installed Anaconda3-2020.07-MacOSX-x86_64 to /Users/username/.anyenv/envs/pyenv/versions/anaconda3-2020.07
```

Anaconda がインストールされたことを確認

```
$ pyenv versions

* system (set by /Users/username/.anyenv/envs/pyenv/version)
  anaconda3-2020.07
```

切り替え

```bash
# local 今いるディレクトリ内だけが対象
$ pyenv local anaconda3-2020.07
```

切り替わったことを確認

```bash
$ pyenv versions

  system
* anaconda3-2020.07 (set by /Users/username/pytest/.python-version)
```

切り替わった！

```bash
$ python --version

Python 3.8.3
```
