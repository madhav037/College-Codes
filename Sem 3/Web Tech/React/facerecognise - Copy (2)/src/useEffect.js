import React, { useEffect, useState } from "react";

export default function UseEffect() {
    const [count, setState] = useState(0)
    useEffect(() => {
        console.log("Hello")
    }, [count])
    return (
        <>
            <h1>{count}</h1>
            <button onClick={() => {
                setState(count + 1)
            }}>Inc</button>
        </>
    )
}