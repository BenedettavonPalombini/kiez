import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// Connects to data-controller="mapbox"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array,
    userLocation: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/madeleinemcd/clbawm9id000114lm8njvr8j8",
      center: [ this.userLocationValue[0], this.userLocationValue[1] ], // Starting position [lng, lat]
      zoom: 15,

    })
    this.#addMarkersToMap()
    // this.#fitMapToMarkers()
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window) // Add this
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup) // Add this
        .addTo(this.map)
    });
  }

  // #addMarkersToMap() {
  //   this.markersValue.forEach((marker) => {
  //       const popup = new mapboxgl.Popup().setHTML(marker.info_window)

  //       const customMarker = document.createElement("div")
  //       customMarker.className = "marker"
  //       // customMarker.style.backgroundImage = `url('${marker.image_url}')`
  //       // customMarker.style.backgroundSize = "contain"
  //       customMarker.style.width = "25px"
  //       customMarker.style.height = "25px"

  //       new mapboxgl.Marker(customMarker)
  //         .setLngLat([ marker.lng, marker.lat ])
  //         .setPopup(popup)
  //         .addTo(this.map)
  //     })
  // }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    // this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, duration: 0 })
  }
}
