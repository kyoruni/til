<template>
  <div class="lifecycle">
    ライフサイクル
    <div>
      <button class="btn btn-danger" @click="destroyButton">インスタンス破棄！</button>
    </div>
  </div>
</template>

<script>
export default {
  data () {
    return {
      item: 'aaaaa'
    }
  },
  created () {
    console.log('created >>>>')
    console.log('インスタンスが生成されて、データの準備ができた')
    console.log(this.item)
  },
  mounted () {
    console.log('mounted >>>>')
    console.log('インスタンスがページに描画された')
    console.log(this.item)
  },
  beforeDestroy () {
    console.log('beforeDestroy >>>>')
    console.log('インスタンス破棄する直前')
    console.log(this.item)
  },
  destroyed () {
    console.log('destroyed >>>>')
    console.log('インスタンス破棄した')
    console.log(this.item)
  },
  methods: {
    destroyButton () {
      this.$destroy()
    }
  }
}
</script>
