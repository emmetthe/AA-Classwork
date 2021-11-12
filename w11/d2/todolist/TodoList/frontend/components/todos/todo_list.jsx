import React from 'react';
// import TodoListItem from './todo_list_item';
import TodoListForm from './todo_form';
import { receiveTodo } from '../../actions/todo_actions';

const TodoList = (props) => {
  // console.log(receiveTodo)
  return (
    <div>
      <TodoListForm receiveTodo={props.receiveTodo1} />

      <ul>
        {props.todos.map((todo) => (
          <li key={todo.id}>
            {todo.title}
            <button>Change Status</button>
          </li>
        ))}
      </ul>
    </div>
  );
};

export default TodoList;
