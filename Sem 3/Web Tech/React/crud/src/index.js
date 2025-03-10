import React from 'react';
import ReactDOM from 'react-dom/client';
import { BrowserRouter, Route, Routes, Link, Outlet } from 'react-router-dom';
import GetAll from './GetAll';
import GetById from './GetById';
import Update from './Update';
import Insert from './Insert';


const root = ReactDOM.createRoot(document.getElementById('root'));

const Layout = () => {
  return (
    <>
      <Link to={'/getall'} >Get all</Link>
      <Link to={'/add'} >Add</Link>
      <Outlet />
    </>
  )
}

root.render(
  <>
  <BrowserRouter>
    <Routes>
      <Route path='/' element={<Layout />}>
        <Route path='/getall' element={<GetAll />} />
        <Route path='/get/:id' element={<GetById />} />
        <Route path='/update/:id' element={<Update />} />
        <Route path='/add' element={<Insert />} />
      </Route>
    </Routes>
  </BrowserRouter>
  </>
);
