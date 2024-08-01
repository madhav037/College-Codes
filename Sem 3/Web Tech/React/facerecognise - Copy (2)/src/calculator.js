import React, { useEffect, useState } from "react";

export default function Calculator() {
  let [value, setvalue] = useState("");
  
  addEventListener('keydown',(e)=> {
    //   console.log(e)
    if (e.key == '1' ||e.key == '2' ||e.key == '3' ||e.key == '4' ||e.key == '5' ||e.key == '6' ||e.key == '7' ||e.key == '8' ||e.key == '9' ||e.key == '0'||e.key == '+' ||e.key == '-' ||e.key == '*' ||e.key == '/') {
    value += e.key
    setvalue(value)
    }
  })
  addEventListener('keydown',(e)=> {
    // console.log(e)
  if (e.key == 'Backspace') {
  value = value.slice(0,-1) 
  setvalue(value)
  }
})
  addEventListener('keydown',(e)=> {
    // console.log(e)
    if (e.key == 'Enter') {
    value = eval(value)
    setvalue(value)
    }
  })

  useEffect(() => {}, [value]);
  return (
    <>
      <input type="text" value={value}></input>
      <br />
      <button
        onClick={() => {
          value += "1";
          setvalue(value);
        }}
      >
        1
      </button>
      <button
        onClick={() => {
          value += "2";
          setvalue(value);
        }}
      >
        2
      </button>
      <button
        onClick={() => {
          value += "3";
          setvalue(value);
        }}
      >
        3
      </button>
      <button
        onClick={() => {
          value += "4";
          setvalue(value);
        }}
      >
        4
      </button>
      <button
        onClick={() => {
          value += "5";
          setvalue(value);
        }}
      >
        5
      </button>
      <button
        onClick={() => {
          value += "6";
          setvalue(value);
        }}
      >
        6
      </button>
      <button
        onClick={() => {
          value += "7";
          setvalue(value);
        }}
      >
        7
      </button>
      <button
        onClick={() => {
          value += "8";
          setvalue(value);
        }}
      >
        8
      </button>
      <button
        onClick={() => {
          value += "9";
          setvalue(value);
        }}
      >
        9
      </button>
      <button
        onClick={() => {
          value += "0";
          setvalue(value);
        }}
      >
        0
      </button>
      <br />
      <button
        onClick={() => {
          value += "+";
          setvalue(value);
        }}
      >
        +
      </button>
      <button
        onClick={() => {
          value += "-";
          setvalue(value);
        }}
      >
        -
      </button>
      <button
        onClick={() => {
          value += "*";
          setvalue(value);
        }}
      >
        *
      </button>
      <button
        onClick={() => {
          value += "/";
          setvalue(value);
        }}
      >
        /
      </button>
      <br />
      <button
        onClick={() => {
          value = "";
          setvalue(value);
        }}
      >
        CE
      </button>
      <button
        onClick={() => {
          value = value.slice(0, -1);
          setvalue(value);
        }}
      >
        C
      </button>
      <br />
      <button
        onClick={() => {
          value = eval(value);
          setvalue(value);
        }}
      >
        =
      </button>
    </>
  );
}
