import React, { useState } from 'react'
import { useNavigate } from 'react-router-dom'

function Insert() {
  const [data, setData] = useState({})
  const nav = useNavigate()
  const handleSubmit = () => {
    fetch('https://64e6e483b0fd9648b78f0469.mockapi.io/faculties', {
      method : "POST",
      headers : {
        "Content-Type" : "application/json"
      },
      body : JSON.stringify(data)
    })
    .then(() =>  {
      console.log(data)
    })
    .then(nav('/getall'))
  }

  return (
    <>
        <input type='text' onChange={(e) => setData({...data, name : e.target.value})} />
        <input type='text' onChange={(e) => setData({...data, number : e.target.value})}/>
        <button onClick={() => handleSubmit()}>Save</button>
    </>
  )
}

export default Insert