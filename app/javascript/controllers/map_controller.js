import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
   }

  connect() {
  mapboxgl.accessToken = this.apiKeyValue
  this.map = new mapboxgl.Map({
  container: this.element,
  style: "mapbox://styles/mapbox/outdoors-v12", // style URL
  });
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }


  #addMarkersToMap() {
    this.markersValue.forEach((marker)=> {
      console.log(marker);
      const customMarker = document.createElement('div')
      customMarker.innerHTML = marker.marker_html
      const popup = new mapboxgl.Popup().setHTML(marker.info)
      new mapboxgl.Marker(customMarker)
      .setLngLat([marker.lng, marker.lat])
      .setPopup(popup)
      .addTo(this.map);
    })
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds
    this.markersValue.forEach((marker)=> {
      bounds.extend([marker.lng, marker.lat])
    })
    this.map.fitBounds(bounds, {
      padding: 50,
      duration: 1,
      maxZoom: 15
    })
  }
}
