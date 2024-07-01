# interpolate-fields
This program interpolates DNS data to a new grid using linear interpolation. It can run and store the interpolated data in a massively-parallel setting using MPI I/O. For now, it assumes two regular Cartesian grids with the file format of [CaNS](https://github.com/p-costa/CaNS). Information about the boundary conditions of the system must be prescribed too. It is a cleaned up version of the routines used to create the initial conditions for particle-laden turbulent channel transport with 10^10 Eulerian grid points.

The repo is originally forked from https://github.com/p-costa/interpolate-fields. It is adapted to interpolate-field specifically for [FluTAS] (https://github.com/Multiphysics-Flow-Solvers/FluTAS). After interpolating the fields, use finalize.sh to make restart files FluTAS compatible.

