// Run this example by adding <%= javascript_pack_tag 'comment' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'
import { Input } from "@material-ui/core";

const Comment = () => {

  return (
    <Input />
  )
}

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Comment />,
    document.getElementById("comment-form")
  )
})
