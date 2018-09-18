import React, { Component } from 'react';
import './App.css';
import About from './Components/About.js'
import Home from './Components/Home.js'
import MenuItem from './MenuItem.js'
import axios from 'axios'


class App extends React.Component {
  state = {
    menus: [],
    //editing: null //what the hell does this do?
  }

componentDidMount() { //axios data call from rails
  axios.get('/api/menu_items')
    .then( res => this.setState({ menus: res.data }))
}

  showMenu = () => {}
  //show one item

  addMenuItem(){}
  //axios.post

  deleteMenuItem(){}
  


  render() {
    const { menus } = this.state
    return (
      <ul>
        { menus.map( m => 
          <li key={m.id}>{m.name} | {m.description} | {m.price}</li>
          )}
      </ul>
    )
  }
}





export default App;



{/* <MenuItem
          {...menu_item}
          addMenuItem={this.addMenuItem}
          deleteMenuItem={this.deleteMenuItem} */}
        