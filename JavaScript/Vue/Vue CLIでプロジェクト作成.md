# Vue CLIでプロジェクト作成

- Vue CLI v4.1.2

## testappというプロジェクトを作成

```
$ vue create testapp
```

## 今いるディレクトリで作成

```
$ vue create .
```

## 対話形式でプロジェクトの設定を決める

### インストール方法をデフォルトにするか、手動にするか？

```
? Please pick a preset: (Use arrow keys)
❯ default (babel, eslint)
  Manually select features
```

- Manually select featuresを選択（手動）

### プロジェクトに必要な機能を選択

```
? Check the features needed for your project: (Press <space> to select, <a> to toggle all, <i> to invert selection)
❯◉ Babel
 ◯ TypeScript
 ◯ Progressive Web App (PWA) Support
 ◯ Router
 ◯ Vuex
 ◯ CSS Pre-processors
 ◉ Linter / Formatter
 ◯ Unit Testing
 ◯ E2E Testing
```

- 必要なものを選択（方向キーでカーソル移動、スペースで選択）

- 今回は、Babel Router Vuex Linterを選択した

### ヒストリーモードを使用するか？

```
? Use history mode for router? (Requires proper server setup for index fallback in production) (Y/n)
```

- Yを入力（使用する）

- 使用しないとハッシュモードになる：URLに「#」が入ってしまって綺麗じゃない…

### 使いたいLinterの選択

```
? Pick a linter / formatter config: (Use arrow keys)
❯ ESLint with error prevention only
  ESLint + Airbnb config
  ESLint + Standard config
  ESLint + Prettier
```

- ESLint with error prevention onlyを選択（エラー防止のみ）

### Lintの実行タイミングを選択

```
? Pick additional lint features: (Press <space> to select, <a> to toggle all, <i> to invert selection)
❯◉ Lint on save
 ◯ Lint and fix on commit (requires Git)
```

- Lint on saveを選択（保存時にする）

### 設定ファイルの場所

```
? Where do you prefer placing config for Babel, ESLint, etc.? (Use arrow keys)
❯ In dedicated config files
  In package.json
```

- In dedicated config filesを選択（個別に管理する）

### 次回作成時にも、今回の設定を保存しておくか？

```
? Save this as a preset for future projects? (y/N)
```

- yを入力（する）

### プリセット名を指定

```
? Save preset as:
```

- そのままEnter（名前なし）

### パッケージマネージャーの選択

```
? Pick the package manager to use when installing dependencies: (Use arrow keys)
❯ Use Yarn
  Use NPM
```

- 使いたい方を選択

- 今回はNPMを選択した

- ちゃんとしたプロジェクト作るなら、yarnの方が良さそうかも（参考URLへ）

## 参考URL

- [Vue CLI 3 インストールからプロジェクト作成まで - Qiita](https://qiita.com/kamitomo/items/34451b11caaf51bd2498)

- [npm vs yarnどっち使うかの話 - Qiita](https://qiita.com/jigengineer/items/c75ca9b8f0e9ce462e99)