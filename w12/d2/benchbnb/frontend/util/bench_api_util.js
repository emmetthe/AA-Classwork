export const fetchBenches = () => (
  $.ajax({
    method: 'GET',
    url: 'api/benches',
  })
);

export const fetchBench = id => (
  $.ajax({
    method: 'GET',
    url: `api/benches/${id}`,
  })
);

export const createBench = bench => (
  $.ajax({
    method: 'POST',
    url: 'api/benches',
    data: {bench}
  })
);
