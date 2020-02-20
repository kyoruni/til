<template>
  <div class="vue-color">
    <!-- 赤青緑のブロック -->
    <div class="d-flex mt-2">
      <div v-for="section in sections" :key="section.id" :style="{background:section.background}" class="section mr-2 pointer"
        @click="clickSection(section.background)">
        {{ section.name }}
      </div>
    </div>
    <!-- カラーピッカーのブロック -->
    <div class="mt-2">
      <div class="section" :style="{background:color.hex}">
        CHANGE
      </div>
      <color-picker v-model="color" :disableAlpha="true" class="mt-2"></color-picker>
    </div>
  </div>
</template>

<script>
import { Sketch } from 'vue-color'

export default {
  components: {
    'color-picker': Sketch
  },
  data () {
    return {
      sections: [
        { id: 1, name: 'RED',   background: '#ff0000' },
        { id: 2, name: 'BLUE',  background: '#0000ff' },
        { id: 3, name: 'GREEN', background: '#008000' },
      ],
      color: '#ff99cc'
    }
  },
  methods: {
    clickSection (background) {
      // オブジェクトを丸ごと入れ替えないと、ライブラリ側が反応しない
      this.color = { hex: background, source: 'hex' }
    }
  },
  watch: {
    'color.hex8' (value) {
      // 透明が選択されたら、カラーコードを空欄にしておく
      if (value === '#00000000') {
        this.color = { hex: '' }
      }
    }
  }
}
</script>
<style scoped>
.section {
  height: 100px;
  width: 100px;
  color: white;
}

.pointer {
  cursor: pointer;
}
</style>
