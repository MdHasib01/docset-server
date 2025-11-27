package main

import (
	"log"
	"net/http"

	"github.com/mdhasib01/docset-server/config"
	"github.com/mdhasib01/docset-server/rest"
	"github.com/rs/cors"
)

func main() {
	config.InitConfig()
	initServer()
}

func initServer() {
	c := cors.New(cors.Options{
		AllowedOrigins: []string{"*"},
		AllowedMethods: []string{"POST", "PUT", "GET", "DELETE", "OPTIONS"},
		AllowedHeaders: []string{"*"},
	})

	log.Printf("DocSet Server is listening on port:%s\n", config.Param.ServerPort)
	handler := rest.InitializeRouter()
	server := &http.Server{
		Addr:    config.Param.ServerAddr,
		Handler: c.Handler(handler),
	}
	err := server.ListenAndServe()
	if err != nil {
		log.Println(err)
	}
}
