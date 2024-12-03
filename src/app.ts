import express, { type Express } from "express";
import masterDataRoutes from "./routes/master-data.route";

const app: Express = express();

app.use("/master-data", masterDataRoutes);

export default app;
