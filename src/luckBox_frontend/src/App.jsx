import React from "react";
import "./App.css";
import { Home } from "./Home";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import { Profile } from "./Profile";

function App() {
  return (
    <div className="App">
      <Router>
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/profile" element={<Profile />} />
        </Routes>
      </Router>
    </div>
  );
}

export default App;
