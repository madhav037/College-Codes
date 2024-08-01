// import Navigation from './Components/Navigation/Navigation';
// import Logo from './Components/Logo/Logo';
import "./App.css";
import { useState } from "react";

const friendsList = [
  {
    id: 1,
    name: "madhav",
    age: 19,
  },
  {
    id: 2,
    name: "nishith",
    age: 19,
  },
  {
    id: 3,
    name: "meet",
    age: 18,
  },
  {
    id: 4,
    name: "vatsal",
    age: 18,
  },
  {
    id: 5,
    name: "jha",
    age: 18,
  },
];

// function add() {
//   let name = prompt("Enter name")
//   let age = parseInt(prompt("Enter age"))
//   let id = friendsList[friendsList.length].id + 1
//   friendsList.push(id, name, age)
//   setFriends(...friendsList)
// }

function App() {
  const [friendsListt, setFriends] = useState(friendsList);

  const print = friendsListt.map((f, index) => {
    return (
      <>
        <li>{f.name}</li> <li>{f.age}</li>{" "}
        <button
          onClick={() => {
            friendsListt.splice(index, 1);
            setFriends([...friendsListt]);
            console.log("func called");
          }}
        >
          Delete me!!!!!!
        </button>
        <br />
      </>
    );
  });
  return (
    <>
      <ul>{print}</ul>
      {/* <button
          onClick={add()}
        >
          ADD
        </button> */}
    </>
  );
}

export default App;
