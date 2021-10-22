<template>
  <p>Global Header and Nav links</p>
    <div id="nav">
      <router-link to="/">Home</router-link> |
      <router-link to="/userinfo">User Info</router-link>
    </div>
    <router-view>
    </router-view>
    <div>
      <p>Global Footer</p>
    </div>
</template>