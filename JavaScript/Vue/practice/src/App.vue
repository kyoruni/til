<template>
  <div id="app">
    <!-- ヘッダーここから -->
    <div>
      <b-navbar type="dark" variant="info">
        <b-navbar-brand href="#">
          Vue.js お試し
        </b-navbar-brand>
      </b-navbar>
    </div>
    <!-- ヘッダーここまで -->
    <div class="container-fluid">
      <router-view/>
    </div>
  </div>
</template>
