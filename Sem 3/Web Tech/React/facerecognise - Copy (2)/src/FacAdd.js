import { useState } from "react"

export default function FacAdd(){
    const [data,setData] = useState({})

    const url = 'https://64e6e483b0fd9648b78f0469.mockapi.io/faculties/'
    function addData(){
        fetch(url, {
            method:"POST",
            headers: {"Content-Type" : "application/json"},
            body: JSON.stringify(data)
        }).then(console.log(data))
    }

    return (
        <>
            <input type="text" placeholder="Enter name" onChange={(e) => {setData({...data, name : e.target.value})} }/>        
            <input type="text" placeholder="Enter city" onChange={(e) => {setData({...data, city : e.target.value})} }/>        
            <input type="text" placeholder="Enter avatar" onChange={(e) => {setData({...data, avatar : e.target.value})} }/>        
            <input type="text" placeholder="Enter number" onChange={(e) => {setData({...data, number : e.target.value})} }/>        
            <input type="text" placeholder="Enter abstract" onChange={(e) => {setData({...data, abstract : e.target.value})} }/>        
            <button onClick={()=>{
                addData()
            }}>ADD</button>
        </>
    )
}