import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";

export default function Api() {
    const [data, setData] = useState([])
    const [dataCopy, setDataCopy] = useState([])
    useEffect(()=>{
        fetch("https://64e6e483b0fd9648b78f0469.mockapi.io/faculties")
        .then(res => res.json())
        .then(res => { setData(res); setDataCopy(res)})
    },[])

    const printData = data.map( (data) => {
        return (
            <>
                <div className="col-3">
                <div class="card" style={{width: 18 + 'rem'}}>
                <img src={data.avatar} class="card-img-top" alt="..."/>
                {/* <img src={data.abstract} class="card-img-top" alt="..."/> */}
                <div class="card-body">
                    <h5 class="card-title">Name : {data.name}</h5>
                    <p class="card-text">contact info : {data.number}</p>
                    <Link to={`/fac/details/${data.id}`}>More</Link>
                </div>
                </div>
                </div>
            </>
        )
    })
    return (
        <>
        <input type="text" onKeyDown={()=>{setData(dataCopy)}} onChange={(e)=> {
            setData( 
                data.filter((dat) => {
                    return dat.name.includes(e.target.value)
                })
            )
            
        }}/> 
            <div className="row">
                {printData}
            </div>
        </>
    )
}