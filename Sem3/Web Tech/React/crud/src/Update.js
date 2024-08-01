import { useEffect, useState } from "react"
import { useNavigate, useParams } from "react-router-dom"

function Update() {
  const [data, setData] = useState({})
  const {id} = useParams()
  const nav = useNavigate()
  useEffect(() => {
    fetch('https://64e6e483b0fd9648b78f0469.mockapi.io/faculties/'+id)
    .then(res => res.json())
    .then(res => setData(res))
  },[id])

  function handleSubmit() {
    fetch('https://64e6e483b0fd9648b78f0469.mockapi.io/faculties/'+id, {
      method : "PUT",
      headers : {
        "Content-Type" : "application/json"
      },
      body : JSON.stringify(data)
    })
    .then(nav('/get/'+id))

  }
  return (
    <>
        <form>
          <input value={data ? data.name : null} onChange={(e) => {
            setData({...data, name : e.target.value})
          }} /> <br />
          <input value={data ? data.number : null} onChange={(e) => {
            setData({...data, name : e.target.value})
          }} /> <br />
          <button onClick={() => handleSubmit()}>update</button>
        </form>
    </>
  )
}

export default Update