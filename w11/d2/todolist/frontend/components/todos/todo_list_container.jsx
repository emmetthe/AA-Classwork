import { connect } from 'react-redux';
import TodoList from './todo_list';
import allTodos from '../../reducers/selectors';
import { receiveTodo, removeTodo } from '../../actions/todo_actions';
import TodoDetailView from './todo_detail_view';

const mapStateToProps = (state) => {
  return {
    todos: allTodos(state)
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    receiveTodo1: (todo) => dispatch(receiveTodo(todo)),
    removeTodo1: (todo) => dispatch(removeTodo(todo))
  };
};

const TodoListContainer = connect(mapStateToProps, mapDispatchToProps)(TodoList);
export {TodoListContainer};

const TodoDetailViewContainer = connect(null, mapDispatchToProps)(TodoDetailView);
export {TodoDetailViewContainer};
