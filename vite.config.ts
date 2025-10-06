// @ts-nocheck
import {vitePlugin as remix} from '@remix-run/dev'
import {installGlobals} from '@remix-run/node'
import {defineConfig} from 'vite'
import tsconfigPaths from 'vite-tsconfig-paths'
import {API, API_RESOLUTION_PATHS, CLOSED_API} from './app/routes/utilities/api'

installGlobals()
const isProd = process.env.NODE_ENV === 'production'

export default defineConfig({
  plugins: [
    remix({
      routes(defineRoutes) {
        return defineRoutes((route) => {
          Object.keys(API).forEach((key) => {
            const apiPath = API[key as keyof typeof API]
            const routePath =
              API_RESOLUTION_PATHS[apiPath as keyof typeof API_RESOLUTION_PATHS]
            if (
              apiPath &&
              routePath &&
              !CLOSED_API[key as keyof typeof CLOSED_API]
            ) {
              route(apiPath, routePath)
            }
          })
        })
      },
      buildDirectory: 'build',
      serverBuildFile: 'index.js',
    }),
    tsconfigPaths({
      ignoreConfigErrors: true,
    }),
  ],
  esbuild: {
    target: 'es2022',
    logOverride: { 'this-is-undefined-in-esm': 'silent' },
  },
  build: {
    target: 'es2022',
    sourcemap: isProd ? false : true,
    minify: isProd ? 'esbuild' : false,
    rollupOptions: {
      onwarn(warning, warn) {
        // Suppress sourcemap warnings
        if (warning.code === 'SOURCEMAP_ERROR') return
        warn(warning)
      },
    },
  },
  server: {
    port: 1200,
  },
})
