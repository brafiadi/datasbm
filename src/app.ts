import express, { type Express } from "express";
import masterDataRoutes from "./routes/master-data.route";
import perjadinRoutes from "./routes/perjadin.route";

const app: Express = express();

app.use("/master-data", masterDataRoutes);
app.use("/perjadin", perjadinRoutes);

export default app;
