import React from 'react'
import ReactDOM from 'react-dom'

import Hello from 'js/components/hello'

require('styles/main.scss')

const main = document.findElementById('content')

ReactDOM.render(<Hello />, main)