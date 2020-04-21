# assetsのパスを変数で渡す
### OK
- require を噛ます
```
<template>
  <div class="hoge">
    <img :src="imagePath">
  </div>
</template>

export default {
  computed: {
    imagePath () {
      return require('@/assets/piyo.png')
    }
  }
}
```

- ファイルパスを可変にしたい時
```
<template>
  <div class="hoge">
    <img :src="imagePath">
  </div>
</template>

export default {
  props: [
    'fuga'
  ],
  computed: {
    imagePath () {
      const fileName = this.fuga + '.png'
      return require`@/assets/${fileName}`)
    }
  }
}
```

### NG
- パスを直接渡す → 失敗
```
<template>
  <div class="hoge">
    <img :src="imagePath">
  </div>
</template>

export default {
  computed: {
    imagePath () {
      return '@/assets/piyo.png'
    }
  }
}
```
