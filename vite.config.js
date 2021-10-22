import { resolve } from 'path'
import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'


export default defineConfig({
  plugins: [vue()],
  root: './frontend',
  build: {
    // outDir: 'vue-vite-sas-app',
    rollupOptions: {
      input: {
        main: resolve(__dirname, './frontend/index.html'),
        export: resolve(__dirname, './frontend/page.html')
      },
      output: {
        preserveModulesRoot: '',
        entryFileNames: 'vue-vite-sas-app/[name].js',
        chunkFileNames: 'vue-vite-sas-app/[name].js',
        assetFileNames: 'vue-vite-sas-app/[name].[ext]'
      }
    }
  }
})
