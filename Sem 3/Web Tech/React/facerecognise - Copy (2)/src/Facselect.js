import { useEffect, useState } from "react"
import { Link, useNavigate, useParams } from "react-router-dom"

export default function FacSelect() {
    const {id} = useParams()
    const [data, setData] = useState({})
    const navigator = useNavigate()

    useEffect(()=>{
        fetch(`https://64e6e483b0fd9648b78f0469.mockapi.io/faculties/${id}`)
        .then(res => {return res.json()})
        .then(res => { setData(res) })
    },[])

    function deleteData() {
        fetch(`https://64e6e483b0fd9648b78f0469.mockapi.io/faculties/${id}`, {method: 'delete'})
        .then(res => {navigator("/")})
    }

    return (
        <>
            <img src={data.avatar} />
            <li>{data.name}</li>
            <li>{data.city}</li>
            <li>{data.number}</li>
            <li>{data.country}</li>
            <button onClick={()=>{
                console.log("HELLO")
                navigator("/fac/edit/"+id)
            }}>EDIT</button>
            <button onClick={()=>{deleteData()}}>DELETE</button>
        </>
    )
}