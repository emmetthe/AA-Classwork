import React from 'react';
import { Link } from 'react-router-dom';

const Greeting = ({ currentUser, logout }) => {
  const loggedIn = () => (
    <div>
      <button onClick={logout}>Logout</button>
      <h2>Welcome, {currentUser.username}</h2>
    </div>
  );

  const loggedOut = () => (
    <div>
      <Link to="/login">Login</Link>
      <Link to="/signup">Sign Up</Link>
    </div>
  );
  return currentUser ? loggedIn() : loggedOut();
  
};

export default Greeting;
