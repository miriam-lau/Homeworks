import { createStore } from 'redux';
import RootReducer from '../reducers/root_reducer';
import { applyMiddleware } from 'redux';

const configureStore = (preloadedState = {}) => {
  const store = createStore(RootReducer, preloadedState, applyMiddleware(addLoggingtoDispatch, applyMiddlewares));
  store.subscribe(() => {
    localStorage.state = JSON.stringify(store.getState());
  });
  return store;
}

const addLoggingtoDispatch = (store) => next => action => {
  let storeDispatch = store.dispatch;
  console.log(store.getState());
  console.log(action);
  let retValue = storeDispatch(action);
  console.log(action);
  return retValue;
};

const applyMiddlewares = (store, ...middlewares) => {
  let storeDispatch = store.dispatch;
  middlewares.forEach( (middleware) => {
    let dispatch = middleware(store)(dispatch);
  });
  return Object.assign({}, store, { dispatch });
};


export default configureStore;
