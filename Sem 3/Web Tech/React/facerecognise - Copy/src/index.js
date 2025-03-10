import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import 'tachyons'
import Header from "./Header";
import Footer from "./Footer";
import Main from "./Main";
import MainContent from './MainContent';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <>
    <Header/>
    <Main/>
    {/* <Footer name='madhav' age='19' alive='yes' img="https://getbootstrap.com/"/> */}
    <MainContent />
  </>
);

