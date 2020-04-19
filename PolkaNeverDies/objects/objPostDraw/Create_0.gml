/// @description Set up post processing

// Make sure this object is in the top most layer. This will ensure its Post-Draw 
// happens after everything else has been drawn to the surface (except GUI).

// Disable automatic drawing of the application surface
// We will take care of it in Post-Draw
application_surface_draw_enable(false);

shouldCurve = true;