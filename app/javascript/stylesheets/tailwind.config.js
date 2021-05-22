module.exports = {
  purge: [
      "../app/**/*.html.erb",
      "../app/helpers/**/*.rb",
      "../app/javascript/**/*.js",
      "../app/javascript/**/*.vue",
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
        colors: {
            transparent: 'transparent',
            current: 'currentColor',
            blue: {
                light: '#85d7ff',
                DEFAULT: '#262262',
                dark: '#009eeb',
            },
        },
        borderWidths: {
            default: '1px',
            '0': '0',
            '2': '2px',
            '4': '4px',
            '8': '8px',
            '12': '12px' // Add it here
        },
        margin: {
            'px': '1px',
            '0': '0',
            '1': '0.25rem',
            '2': '0.5rem',
            '3': '0.75rem',
            '4': '1rem',
            '6': '1.5rem',
            '8': '2rem',
        },
    },

  },
  variants: {
    extend: {},
  },
  plugins: [
      require('@tailwindcss/forms'),
  ],
}
