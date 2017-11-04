# @Author: Benjamin Held
# @Date:   2017-11-01 18:11:38
# @Last Modified by:   Benjamin Held
# @Last Modified time: 2017-11-04 18:45:16

module Wrf

  # Simple data class to represent an entry of the wrf station output
  class WrfEntry

    # @return [Date] forecast time in hours
    attr :time   
    # @return [Float] 2 m Temperature (K)
    attr :air_temperature
    # @return [Float] 2 m vapor mixing ratio (kg/kg)
    attr :mixing_ratio
    # @return [Float] 10 m U wind (earth-relative)
    attr :u_wind
    # @return [Float] 10 m V wind (earth-relative)
    attr :v_wind
    # @return [Float] surface pressure (Pa)
    attr :pressure
    # @return [Float] downward longwave radiation flux at the ground 
    #                 (W/m^2, downward is positive)
    attr :longwave
    # @return [Float] net shortwave radiation flux at the ground 
    #                 (W/m^2, downward is positive)
    attr :shortwave         
    # @return [Float] surface sensible heat flux (W/m^2, upward is positive)
    attr :sensible_heat     
    # @return [Float] surface latent heat flux (W/m^2, upward is positive)
    attr :latent_heat       
    # @return [Float] skin temperature (K)
    attr :skin_temperature  
    # @return [Float] top soil layer temperature (K)
    attr :soil_temperature  
    # @return [Float] rainfall from a cumulus scheme (mm) 
    attr :cumulus_rainfall  
    # @return [Float] rainfall from an explicit scheme (mm)
    attr :explicit_rainfall 
    # @return [Float] total column-integrated water vapor and cloud variables
    attr :water_vapor

  end

end  