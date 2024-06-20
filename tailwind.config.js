/** @type {import('tailwindcss').Config} */
export default {
  content: [
    './src/**/*.{html,js,jsx}',
    './components/**/*.{html,js,jsx}',
    './pages/**/*.{html,js,jsx}',
    './index.html',
  ],
  theme: {
    extend: {
      screens: {
        sm: '640px',
        md: '768px',
        lg: '768px',
        xl: '768px',
      }
    },
  },
  plugins: [],
}

