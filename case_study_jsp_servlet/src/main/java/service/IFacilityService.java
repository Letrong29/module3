package service;

import model.Facility;
import model.FacilityType;
import model.RentType;

import java.util.List;

public interface IFacilityService {

    List<Facility> selectAllService();

    void addNewFacility(Facility facility);

    void deleteFacility(int id);

    Facility findFacilityById(int idSearch);

    List<FacilityType> facilityTypeList();

    List<RentType> rentTypeList();

    List<Facility> searchFacility(String keySearch);


}
