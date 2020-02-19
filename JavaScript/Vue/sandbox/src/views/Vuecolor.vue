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
      <color-picker v-model="color" :presetColors="presetColors" :disableAlpha="true" class="mt-2" :disableFields="is_disableFields"></color-picker>
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
      color: {
        a: 1,
        hex: '#ff99cc'
      },
      presetColors: [
        '#dd5588', '#ff7687', '#ffaf80', '#ffdf7b', '#fff4b3', '#77b5bd', '#0191b6', '#37bbca',
        '#d4caee', '#d3de16', '#f9f117', '#f9d80f', '#ff7b17', '#000000', '#ffffff', 'transparent'
      ]
    }
  },
  methods: {
    clickSection (background) {
      // オブジェクトを丸ごと入れ替えないと、ライブラリ側が反応しない
      this.color = { hex: background }
    }
  },
  computed: {
    // カラーコード入力欄の制御
    is_disableFields () {
      // hex8：カラーコード6桁 + 不透明度2桁
      let hex8 = this.color.hex8

      // 不透明度がFF以外（不透明でない）の場合、カラーコード入力欄を非表示にする
      if (hex8 && hex8.slice(-2) !== 'FF') {
        return true
      }
      return false
    }
  },
  watch: {
    // 不透明度
    'color.a': function (value) {
      // 不透明度が1以外のとき：色を透明、不透明度を1にする
      if (value !== 1) {
        this.color.hex = 'transparent'
        this.color.a = 1
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
