import { createApp } from 'vue'
import { createRouter, createWebHashHistory } from 'vue-router'
import App from './App.vue'
import Home from './pages/Home.vue'
import UserInfo from './pages/UserInfo.vue'

const routes = [
  { path: '/', component: Home },
  { path: '/userinfo', component: UserInfo },
  { path: '/:pathMatch(.*)*', redirect: '/' },
]

const router = createRouter({
  history: createWebHashHistory(),
  routes,
})

const app = createApp(App)

app.use(router)

app.mount('#app')
