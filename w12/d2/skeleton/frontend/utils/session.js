export const postUser = (user) =>
  $.ajax({
    url: '/api/users',
    method: 'post',
    data: { user }
  });

export const postSession = (user) =>
  $.ajax({
    url: '/api/session',
    method: 'post',
    data: { user }
  });

export const deleteSession = () =>
  $.ajax({
    url: '/api/session',
    method: 'delete'
  });


