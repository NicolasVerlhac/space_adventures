// TODO: Write your JS code in here
import mapboxgl from 'mapbox-gl';

const initMapBox = _ => {

  const token = 'pk.eyJ1IjoibmtvdWxvdWtvdWxvdSIsImEiOiJjazJvajgwN2UxMHM2M2hsbjk5NGJ0dHRjIn0.DJjM1HJpeei8a5x1UykP2A';
  mapboxgl.accessToken = token;

  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/nkouloukoulou/ck38s326f07zm1cpdzl3dx1nh',
    center: [-79.4512, 43.6568],
    zoom: 13
  });

  const mapElement = document.getElementById('map');

  if (mapElement) {
    const fitMapToMarkers = (map, markers) => {
      const bounds = new mapboxgl.LngLatBounds();
      markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
      map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
    };

    const markers = JSON.parse(mapElement.dataset.markers);

    markers.forEach((marker) => {

    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);
    });
    fitMapToMarkers(map, markers);
  }
};

export { initMapBox };
