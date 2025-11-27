package config

import (
	"os"

	"github.com/joho/godotenv"
)

var Param appConfig

type appConfig struct {
	ServerPort string `json:"serverPort"`
	ServerAddr string `json:"serverAddr"`
}

func InitConfig() {
	_ = godotenv.Load()
	Param.ServerPort = os.Getenv("APP_PORT")
	if Param.ServerPort == "" {
		Param.ServerPort = "8080"
	}
	Param.ServerAddr = ":" + Param.ServerPort

}
