import React, { useEffect, useState } from 'react'
import { useNavigate } from 'react-router-dom'

function GetAll() {
    const [data, setData] = useState([])
    let [deleted, setDeleted] = useState(false)
    const nav = useNavigate()
    useEffect(() => {
        fetch('https://64e6e483b0fd9648b78f0469.mockapi.io/faculties')
        .then(res => res.json())
        .then(res => setData(res))
    },[deleted])

    const formatedData = data.map((d) => {
        return (
            <div key={d.id}>
                <h1>{d.name}</h1>
                <button onClick={() => {
                    fetch('https://64e6e483b0fd9648b78f0469.mockapi.io/faculties/'+d.id, {
                        method : 'DELETE'
                    })
                    .then(() => setDeleted(!deleted))
                }} >Delete</button>
                <button onClick={() => {
                    nav('/get/'+d.id)
                }}> Details </button>
            </div>
        )
    })

  return (
    <>
        {formatedData}
    </>
  )
}

export default GetAll