import "dotenv/config";
import express, { type Express } from "express";
import app from "./app";

const PORT = process.env.PORT || 3000;

const server: Express = express();
server.use(app);

server.listen(PORT, () => {
	console.log(`Server is running on port ${PORT}`);
});
