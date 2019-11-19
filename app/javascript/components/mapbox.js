// TODO: Write your JS code in here

import mapboxgl from 'mapbox-gl';

const initMapBox = _ => {

  const token = 'pk.eyJ1IjoibmtvdWxvdWtvdWxvdSIsImEiOiJjazJvajgwN2UxMHM2M2hsbjk5NGJ0dHRjIn0.DJjM1HJpeei8a5x1UykP2A';

  mapboxgl.accessToken = token;
  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v11',
    center: [-79.4512, 43.6568],
    zoom: 13
  });

  const address = document.querySelector("#address"); // CSS id selector
  address.value;

  const showLocation = (event) => {
    event.preventDefault();
    console.log('ca marche');
    // recupérer la ville
    address.value;
    // faire une req à l'api pour trouver la longitude et la latitude
    fetch(`https://api.mapbox.com/geocoding/v5/mapbox.places/${address.value}.json?access_token=${token}`)
      .then(response => response.json())
      .then((data) => {
        console.log(data.features[0].center[0]);
        console.log(data.features[0].center[1]);
        const longitude = data.features[0].center[0];
        const latitude = data.features[0].center[1];
        map.flyTo({
          center: [
            longitude,
            latitude
          ]
        });
      });
  };

  const form = document.querySelector('#form');
  form.addEventListener('submit', showLocation);

  // map.addControl(new MapboxGeocoder({
  //   accessToken: mapboxgl.accessToken,
  //   mapboxgl: mapboxgl
  //   }));
};

export { initMapBox };
