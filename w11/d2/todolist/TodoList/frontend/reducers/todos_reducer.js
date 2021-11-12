import { RECEIVE_TODO } from '../actions/todo_actions';
import { RECEIVE_TODOS } from '../actions/todo_actions';
import { REMOVE_TODO } from '../actions/todo_actions'

const initialState = {
  1: {
    id: 1,
    title: 'wash car',
    body: 'with soap',
    done: false
  },
  2: {
    id: 2,
    title: 'wash dog',
    body: 'with shampoo',
    done: true
  }
};

const todosReducer = (state = initialState, action) => {
  Object.freeze(state);
  let nextState = Object.assign({}, state);
  switch (action.type) {
    case RECEIVE_TODOS:
      let todoObj = {};
      for (let i = 0; i < action.todos.length; i++) {
        todoObj[action.todos[i].id] = action.todos[i];
      }
      return todoObj;

    case RECEIVE_TODO:
      nextState[action.todo.id] = action.todo;
      return nextState;

    case REMOVE_TODO:
      delete nextState[action.todo.id];
      return nextState;
    default:
      return state;
  }
};

export default todosReducer;


// const newTodos = [{ id: 1, title: 'adfg', body: 'sfgd', done: false}, { id: 2, title: 'fdh', body: 'sdfgh', done: true}];