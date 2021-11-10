import configureStore from './frontend/store/store';
import React from 'react';
import ReactDOM from 'react-dom';
import rootReducer from './frontend/reducers/root_reducer';
import { receiveTodo } from './frontend/actions/todo_actions';
import { receiveTodos } from './frontend/actions/todo_actions';
import { removeTodo } from './frontend/actions/todo_actions';
import { receiveStep } from './frontend/actions/step_actions';
import { receiveSteps } from './frontend/actions/step_actions';
import { removeStep } from './frontend/actions/step_actions';

document.addEventListener('DOMContentLoaded', function () {
  const store = configureStore();
  window.store = store;
  window.receiveTodo = receiveTodo;
  window.receiveTodos = receiveTodos;
  window.removeTodo = removeTodo
  window.receiveStep = receiveStep;
  window.receiveSteps = receiveSteps;
  window.removeStep = removeStep
});
