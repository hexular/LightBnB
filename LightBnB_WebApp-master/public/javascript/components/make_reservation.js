$(() => {

  const $makeReservation = $(`
    <form action="/reservation" method="POST" id="make-reservation">
      <label for="start_date">City</label>
      <input type="date" id="start_date" name="start_date">
      <label for="end_date">City</label>
      <input type="date" id="end_date" name="end_date">
     
      <button>Create</button>
    </form>
  `);

  window.$makeReservation = $makeReservation;

  $makeReservation.addressfield({
    json: 'javascript/libraries/addressfield/addressfield.min.json',
    fields: {
      start_date: '#start_date',
      end_date: '#end_date'
    }
  });

  $makeReservation.on('submit', function(event) {
    event.preventDefault();

    views_manager.show('none');

    const data = $(this).serialize() + `&property_id=${$makeReservation.property_id}`;

    submitReservation(data)
      .then(() => {
        views_manager.show('listings')
    })
    .catch((error) => {
      console.error(error);
      views_manager.show('listings');
    });
    
  });

});