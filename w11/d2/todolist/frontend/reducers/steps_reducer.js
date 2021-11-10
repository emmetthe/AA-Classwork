import { RECEIVE_STEP } from '../actions/step_actions';
import { RECEIVE_STEPS } from '../actions/step_actions';
import { REMOVE_STEP } from '../actions/step_actions'


const stepReducer = (state = {}, action) => {
  Object.freeze(state);
  let nextState = Object.assign({}, state);

  switch (action.type) {
    case RECEIVE_STEPS:
      let stepObj = {};
      for (let i = 0; i < action.steps.length; i++) {
        stepObj[action.steps[i].id] = action.steps[i];
      }
      return stepObj;

    case RECEIVE_STEP:
      nextState[action.step.id] = action.step;
      return nextState;

    case REMOVE_STEP:
      delete nextState[action.step.id];
      return nextState;
    default:
      return state;
  }
};

export default stepReducer;
