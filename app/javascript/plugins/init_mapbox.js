import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

const initMapbox = () => {
  let currentLocation = {}
  navigator.geolocation.getCurrentPosition((data) => {
    const lat = data.coords.latitude;
    const lon = data.coords.longitude;
    currentLocation = {
      "lat": lat,
      "lng": lon,
      "image_url":"https://res.cloudinary.com/dnorywpdz/image/upload/v1647546204/marker_bn4tik.svg"
    };

   const mapElement = document.getElementById('map');
  const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
     map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
   };


  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/seanhgall/cl0vceolm000f15n88j8ae2zi',
      center: [-74.5, 40],
      zoom: 9
    });

    let markers = JSON.parse(mapElement.dataset.markers);
    markers.push(currentLocation)

     console.log(markers)
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window);

      const element = document.createElement('div');
      console.log(marker.image_url)
      element.className = 'marker';
      element.style.backgroundImage = `url('${marker.image_url}')`;
      element.style.backgroundSize = 'contain';
      element.style.width = '25px';
      element.style.height = '25px';

    new mapboxgl.Marker(element)
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
    });
    fitMapToMarkers(map, markers);
  }
});
};
export { initMapbox };




// [
//   {"lat":51.53471,
//   "lng":-0.1401,
//   "info_window": \u003c/div\u003e\n\u003c/div\u003e\n",
//   "image_url":"http://localhost:3000/assets/paint_marker-325fa9ffc45bc4d1c06c10cfad9e2fa59541dc0d34bb0de3ee6d1fe481066f0f.svg"},
