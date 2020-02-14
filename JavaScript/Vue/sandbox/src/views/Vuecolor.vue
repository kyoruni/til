<template>
  <div class="vue-color">
    <div class="d-flex mt-2">
      <div class="section1 mr-2">
        section1
      </div>
      <div class="section2 mr-2">
        section2
      </div>
      <div class="section3">
        section3
      </div>
    </div>
    <div class="mt-2">
      <color-picker v-model="colors" :presetColors="presetColors"></color-picker>
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
      colors: {
        hex: '#ff99cc',
        hsl: { h: 150, s: 0.5, l: 0.2, a: 1 },
        hsv: { h: 150, s: 0.66, v: 0.30, a: 1 },
        rgba: { r: 25, g: 77, b: 51, a: 1 },
        a: 1
      },
      presetColors: [
        '#dd5588', '#ff7687', '#ffaf80', '#ffdf7b', '#fff4b3', '#77b5bd', '#0191b6', '#37bbca',
        '#d4caee', '#d3de16', '#f9f117', '#f9d80f', '#ff7b17', '#000000', '#ffffff', 'rgba(0,0,0,0)'
      ]
    }
  }
}
</script>
<style scoped>
.section1 {
  height: 100px;
  width: 100px;
  color: white;
  background: red;
}

.section2 {
  height: 100px;
  width: 100px;
  color: white;
  background: blue;
}

.section3 {
  height: 100px;
  width: 100px;
  color: white;
  background: green;
}
</style>
