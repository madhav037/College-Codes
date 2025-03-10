import { useEffect, useState } from "react"
import { useNavigate, useParams } from "react-router-dom"

function GetById() {
  const [data,setData] = useState({})
  const {id} = useParams()
  const nav = useNavigate()

  useEffect(() => {
    fetch('https://64e6e483b0fd9648b78f0469.mockapi.io/faculties/'+id)
    .then(res => res.json())
    .then(res => setData(res))
  })
  return (
    <>
        <h1>{data.name}</h1>
        <h1>{data.number}</h1>
        <button onClick={() => {
          nav('/update/'+id)
        }}> Edit </button>
    </>    
  )
}

export default GetById