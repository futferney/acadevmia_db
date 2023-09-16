import Express from "express";
import userRoutes from "./routes/users.routes.js";
import coursesRoutes from "./routes/courses.routes.js";
import indexRoutes from "./routes/index.routes.js";
import countriesRoutes from "./routes/countries.routes.js";
import modulesRoutes from "./routes/modules.routes.js";
import genresRoutes from "./routes/genres.routes.js";
import addressesRoutes from "./routes/addresses.routes.js";
import rolesRoutes from "./routes/roles.routes.js";
import progress_usersRoutes from "./routes/progress_users.routes.js";
import lessonsRoutes from "./routes/lessons.routes.js";
import courses_usersRoutes from "./routes/courses_users.routes.js";

const app = Express();

app.use(Express.json())
app.use(indexRoutes);
app.use('/api',countriesRoutes);
app.use('/api',modulesRoutes);
app.use('/api',genresRoutes);
app.use('/api',addressesRoutes);
app.use('/api',rolesRoutes);
app.use('/api',progress_usersRoutes);
app.use('/api',coursesRoutes);
app.use('/api',userRoutes);
app.use('/api',lessonsRoutes);
app.use('/api',courses_usersRoutes);
app.use((req,res,next) => {
  res.status(404).json({
    message: "Endpoint not found >:|"
  })
})

export default app;