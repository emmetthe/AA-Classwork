export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const LOGOUT_CURRENT_USER = 'LOGOUT_CURRENT_USER';
export const RECEIVE_SESSION_ERRORS = 'RECEIVE_SESSION_ERRORS';
import {logIn, signUp, logOut} from '../util/session_url_util'

const receiveCurrentUser = (currentUser) => ({
  type: RECEIVE_CURRENT_USER,
  currentUser
})

const logoutCurrentUser = () => ({
  type: LOGOUT_CURRENT_USER
})

const receiveErrors = (errors) => ([
  errors
])

export const login = (user) => (dispatch) => (
  logIn(user)
    .then(user =>  dispatch(receiveCurrentUser(user)))
)

export const logout = () => (dispatch) => (
  logOut()
    .then(()=>  dispatch(logoutCurrentUser()))
)

export const signup = (user) => (dispatch) => (
  signUp(user)
    .then(user => dispatch(receiveCurrentUser(user)))
)