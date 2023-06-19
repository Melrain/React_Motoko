import React from "react";
import ReactDOM from "react-dom/client";
import App from "./App";

import {
  BrowserRouter as Router,
  Routes,
  Route,
} from "../../../node_modules/react-router-dom/dist/index";

const root = ReactDOM.createRoot(document.getElementById("root"));

root.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);
