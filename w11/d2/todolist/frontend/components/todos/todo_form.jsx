import React from 'react';
import uniqueId from '../../util/util';

class TodoListForm extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      title: '',
      body: '',
      done: false,
      id: uniqueId()
    };

    this.handleSubmit = this.handleSubmit.bind(this);
    this.updateBody = this.updateBody.bind(this);
    this.updateTitle = this.updateTitle.bind(this);
    this.updateDone = this.updateDone.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    let todo = this.state;
    this.props.receiveTodo(todo);

    this.setState({
      title: '',
      body: '',
      done: '',
      id: uniqueId()
    });
  }

  updateTitle(e) {
    this.setState({ title: e.target.value });
  }

  updateBody(e) {
    this.setState({ body: e.target.value });
  }

  updateDone(e) {
    if (e.target.value === 'true') {
      this.setState({ done: true });
    } else {
      this.setState({ done: false });
    }
  }

  render() {
    console.log(this.state);

    return (
      <form onSubmit={this.handleSubmit}>
        <label>
          Title
          <input type="text" onChange={this.updateTitle} value={this.state.title} />
        </label>

        <label>
          Body
          <input type="text" onChange={this.updateBody} value={this.state.body} />
        </label>

        <label>
          Done
          <input type="radio" value="true" checked={this.state.done === true} onChange={this.updateDone} />
        </label>

        <label>
          Not Done
          <input type="radio" value="false" checked={this.state.done === false} onChange={this.updateDone} />
        </label>

        <input type="submit" value="SUBMIT" />
      </form>
    );
  }
}

export default TodoListForm;
