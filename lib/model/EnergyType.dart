enum EnergyType { wind, solar, hydro, biomass }

String energyTypeToString(EnergyType energyType) {
  switch (energyType) {
    case EnergyType.wind:
      return "Wind";
    case EnergyType.solar:
      return "Solar";
    case EnergyType.hydro:
      return "Hydro";
    case EnergyType.biomass:
      return "Biomass";
    default:
      return "NO ENERGY";
  }
}
