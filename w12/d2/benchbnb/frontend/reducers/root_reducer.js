import { combineReducers } from "redux";
import errorsReducer from './errors_reducer';
import entitiesReducer from './entities_reducer';
import sessionsReducer from './session_reducer';

const rootReducer = combineReducers({
  errors: errorsReducer,
  entities: entitiesReducer,
  sessions: sessionsReducer
})

export default rootReducer;