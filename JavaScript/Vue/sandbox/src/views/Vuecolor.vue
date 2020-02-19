<template>
  <div class="vue-color">
    <div class="d-flex mt-2">
      <div v-for="section in sections" :key="section.id" :style="{background:section.background}" class="section mr-2"
        @click="clickSection(section.background)">
        {{ section.id }}
      </div>
    </div>
    <div class="mt-2">
      <color-picker v-model="color" :presetColors="presetColors" :disableAlpha="true"></color-picker>
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
        { id: 1, background: '#ff0000' },
        { id: 2, background: '#0000ff' },
        { id: 3, background: '#008000' },
      ],
      color: {
        hex: '#ff99cc'
      },
      presetColors: [
        '#dd5588', '#ff7687', '#ffaf80', '#ffdf7b', '#fff4b3', '#77b5bd', '#0191b6', '#37bbca',
        '#d4caee', '#d3de16', '#f9f117', '#f9d80f', '#ff7b17', '#000000', '#ffffff', 'rgba(0,0,0,0)'
      ]
    }
  },
  methods: {
    clickSection (background) {
      // オブジェクトを丸ごと入れ替えないと、ライブラリ側が反応しない
      this.color = { hex: background }
    }
  }
}
</script>
<style scoped>
.section {
  height: 100px;
  width: 100px;
  color: white;
  background: red;
}

.section1 {
  background: red;
}
</style>
