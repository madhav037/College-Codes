const Footer = (props) => {
    const {name,age,alive,img} = props
    console.log(img);
    return (
      <>
        <h1> Hello i am {name} and my age is {age} and i am alive {alive} 1945 </h1>
        <div className="card" style={{width: 18+'rem'}}>
        <img src={props.img} className="card-img-top" alt="..."/>
            <div className="card-body">
                <h5 className="card-title">Card title</h5>
                <p className="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" className="btn btn-primary">Go somewhere</a>
            </div>
        </div>
      </>
    );
  };
  
  export default Footer;
  