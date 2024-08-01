import { useEffect, useState } from "react"
import { Navigate, useNavigate, useParams } from "react-router-dom"


export default function FaculityEdit() {
    const {id} = useParams()
    const [data, setData] = useState({})
    const navigator = useNavigate()

    useEffect(()=>{
        fetch(`https://64e6e483b0fd9648b78f0469.mockapi.io/faculties/${id}`)
        .then(res => {return res.json()})
        .then(res => { setData(res) })
    },[])

    const url = 'https://64e6e483b0fd9648b78f0469.mockapi.io/faculties/'+id
    
    function editData(){
        fetch(url, {
            method:"PUT",
            headers: {"Content-Type" : "application/json"},
            body: JSON.stringify(data)
        }).then(navigator('/fac/details/'+id))
    }


    return (
        <>
            <input type="text" placeholder="Enter name" value={data ? data.name : null} onChange={(e) => {setData({...data, name : e.target.value})} }/><br/>
            <input type="text" placeholder="Enter city" value={data ? data.city : null}  onChange={(e) => {setData({...data, city : e.target.value})} }/><br/>   
            <input type="text" placeholder="Enter avatar" value={data ? data.avatar : null}  onChange={(e) => {setData({...data, avatar : e.target.value})} }/><br/>       
            <input type="text" placeholder="Enter number" value={data ? data.number : null}  onChange={(e) => {setData({...data, number : e.target.value})} }/><br/>  
            <input type="text" placeholder="Enter abstract" value={data ? data.abstract : null}  onChange={(e) => {setData({...data, abstract : e.target.value})} }/><br/>
            <button onClick={() => {editData()}}>SAVE</button>
        </>
    )
}