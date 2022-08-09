package service.impl;

import model.Facility;
import model.FacilityType;
import model.RentType;
import repository.IFacilityRepository;
import repository.impl.FacilityRepository;
import service.IFacilityService;

import java.util.List;

public class FacilityService implements IFacilityService {
    private IFacilityRepository facilityRepository = new FacilityRepository();

    @Override
    public List<Facility> selectAllService() {
        return this.facilityRepository.selectAllService();
    }

    @Override
    public void addNewFacility(Facility facility) {
        this.facilityRepository.addNewFacility(facility);
    }

    @Override
    public void deleteFacility(int id) {
        this.facilityRepository.deleteFacility(id);
    }

    @Override
    public Facility findFacilityById(int idSearch) {
        return this.facilityRepository.findFacilityById(idSearch);
    }

    @Override
    public List<FacilityType> facilityTypeList() {
        return this.facilityRepository.facilityTypeList();
    }

    @Override
    public List<RentType> rentTypeList() {
        return this.facilityRepository.rentTypeList();
    }

    @Override
    public List<Facility> searchFacility(String keySearch) {
        return this.facilityRepository.searchFacility(keySearch);
    }
}
