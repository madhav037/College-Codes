import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import 'tachyons'
import Header from "./Header";
import App from './App'
import Footer from "./Footer";
import Main from "./Main";
import UseEffect from './useEffect';
import Calculator from './calculator';
import Api from './api.js';
import FacSelect from './Facselect';
import { BrowserRouter, Link, Route, Routes } from 'react-router-dom';
import FacAdd from './FacAdd';
import FaculityEdit from './FaculityEdit';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <>
    {/* <Header/> */}
    {/* <UseEffect /> */}
    {/* <Calculator /> */}
    {/* <Api /> */}
    {/* <App /> */}
    {/* <Main/> */}
    {/* <FacAdd /> */}
    {/* <Footer name='madhav' age='19' alive='yes' img="https://getbootstrap.com/"/> */}
    <BrowserRouter>
      <Routes>
        <Route path='/' element={<><Header/><Footer name='madhav' age='19' alive='yes' img="https://getbootstrap.com/"/></>} />
        <Route path='/useEffect' element={<UseEffect/>}/>
        <Route path='/calc' element={<Calculator/>}/>
        <Route path='/app' element={<App/>} />
        <Route path='/main' element={<Main/>} />
        <Route path='/fac' element={<Api/>}/>
        <Route path='/fac/add' element={<FacAdd />} />
        <Route path='/fac/details/:id' element={<FacSelect />} />
        <Route path='/fac/edit/:id' element={<FaculityEdit/>} />
      </Routes>
    </BrowserRouter>
  </>
);

