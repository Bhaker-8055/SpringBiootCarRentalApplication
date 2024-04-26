package com.rentcar.service;

import java.util.ArrayList;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rentcar.entity.Vehicle;
import com.rentcar.exception.VehicleNotFoundException;
import com.rentcar.repository.VehicleRepository;

@Service
public class VehicleService {
    @Autowired
    VehicleRepository vehicleRepository;

    public void addVehicle(Vehicle vehicle) {
        vehicleRepository.save(vehicle);
    }

    public ArrayList<Vehicle> findAllVehicle() {
        return vehicleRepository.findAll();
    }

    public void deleteVehicleById(int id) {
        if (!vehicleRepository.existsById(id)) {
            throw new VehicleNotFoundException("Vehicle with ID " + id + " not found.");
        }
        vehicleRepository.deleteById(id);
    }

    public Vehicle findVehicleUsingId(int id) {
        return vehicleRepository.findById(id)
            .orElseThrow(() -> new VehicleNotFoundException("Vehicle with ID " + id + " not found."));
    }

    public void UpdateVehicleDetail(Vehicle vehicle) {
        Vehicle existingVehicle = vehicleRepository.findById(vehicle.getVehicleId())
            .orElseThrow(() -> new VehicleNotFoundException("Vehicle with ID " + vehicle.getVehicleId() + " not found."));
        existingVehicle.setModel(vehicle.getModel());
        existingVehicle.setCapacity(vehicle.getCapacity());
        existingVehicle.setRatePerDay(vehicle.getRatePerDay());
        existingVehicle.setLicensePlate(vehicle.getLicensePlate());
        vehicleRepository.save(existingVehicle);
    }
}
