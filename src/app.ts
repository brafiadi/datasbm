import express, { type Express } from "express";
import masterDataRoutes from "./routes/master-data.route";
import perjadinRoutes from "./routes/perjadin.route";
import honorariumRoutes from "./routes/honorarium.route";

const app: Express = express();

app.use("/master-data", masterDataRoutes);
app.use("/perjadin", perjadinRoutes);
app.use("/honorarium", honorariumRoutes);

app.use((req, res, next) => {
	console.log(`${req.method} ${req.path}`);
	next();
});

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

export default app;
