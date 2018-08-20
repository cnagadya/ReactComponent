echo Would you like to create a class component?

read answer

a=$(echo "$answer" | tr '[:upper:]' '[:lower:]')
filename=$(echo "$1" | tr '[:upper:]' '[:lower:]')

if [ $a == "yes" ] || [ $a == "y" ]
then 
  mkdir $filename;
  touch "$filename/$filename.js";
  echo "import React, { Component } from 'react';

class $1 extends Component {
  state = {};
  render() {
  return <div>Content goes here</div>;
  }
}

export default $1;" >> "$filename/$filename.js"
else 
  mkdir $filename;
  touch "$filename/$filename.js";
  echo "import React from 'react';

const $1 =(props)=>  {
  return <div>Content goes here</div>;
}

export default $1;" >> "$filename/$filename.js"
fi
