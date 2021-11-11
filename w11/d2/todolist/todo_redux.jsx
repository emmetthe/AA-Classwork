import configureStore from './frontend/store/store';
import React from 'react';
import ReactDOM from 'react-dom';
import { receiveTodo } from './frontend/actions/todo_actions';
import { receiveTodos } from './frontend/actions/todo_actions';
import { removeTodo } from './frontend/actions/todo_actions';
import { receiveStep } from './frontend/actions/step_actions';
import { receiveSteps } from './frontend/actions/step_actions';
import { removeStep } from './frontend/actions/step_actions';
import Root from './frontend/components/root'
import allTodos from './frontend/reducers/selectors'

document.addEventListener('DOMContentLoaded', function () {
  const store = configureStore();

  const root = document.getElementById('root');
  ReactDOM.render(<Root store={store}/>, root)
  

  window.store = store;
  window.receiveTodo = receiveTodo;
  window.receiveTodos = receiveTodos;
  window.removeTodo = removeTodo
  window.receiveStep = receiveStep;
  window.receiveSteps = receiveSteps;
  window.removeStep = removeStep
  window.allTodos = allTodos

});
