package main

import (
	"fmt"
	"net/http"
)

func initHttpServer() {
	fmt.Print("Starting server on :8080\n")
	http.ListenAndServe(":8080", nil)
}
