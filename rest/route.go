package rest

import (
	"net/http"

	"github.com/gorilla/mux"
)

func router() *mux.Router {
	router := mux.NewRouter().StrictSlash(true)
	router.Methods("GET").Path("/ping").Name("HealthCheck").HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(200)
		w.Write([]byte("DocSet API is listening"))
	})

	return router
}

type handler struct {
	Router *mux.Router
}

func (h handler) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	h.Router.ServeHTTP(w, r)
}
func InitializeRouter() handler {
	router := router()
	h := handler{Router: router}
	return h
}
