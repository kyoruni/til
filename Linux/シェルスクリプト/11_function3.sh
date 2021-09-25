#!/bin/bash
# 引数がなければ、関数を途中で終了させる
check_parameter ()
{
  if [ -z "$1" ]; then
    echo "引数がないよ"
    return 1
  fi

  echo "引数があるので続行"
}

check_parameter