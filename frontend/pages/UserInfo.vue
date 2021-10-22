<script setup>
  import axios from 'axios'
  import { ref } from 'vue'

  const userInfo = ref('')

  axios
    .get('/identities/users/@currentUser')
    .then(response => (userInfo.value = response.data))
    .catch(err => console.log(err))
</script>

<template>
  <div>
    {{ userInfo }}
  </div>
</template>

<style>
</style>