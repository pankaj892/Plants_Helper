class Species {
  String year;
  String type;
  String synonym;
  String status;
  Specifications specifications;
  List<Sources> sources;
  SoilsAdaptation soilsAdaptation;
  String slug;
  Seed seed;
  String scientificName;
  Propagation propagation;
  Products products;
  String nativeStatus;
  String mainSpeciesId;
  String isMainSpecies;
  List<Images> images;
  String id;
  Growth growth;
  FruitOrSeed fruitOrSeed;
  Foliage foliage;
  Flower flower;
  String familyCommonName;
  String duration;
  String completeData;
  String commonName;
  String bibliography;
  String author;

  Species(
      {this.year,
      this.type,
      this.synonym,
      this.status,
      this.specifications,
      this.sources,
      this.soilsAdaptation,
      this.slug,
      this.seed,
      this.scientificName,
      this.propagation,
      this.products,
      this.nativeStatus,
      this.mainSpeciesId,
      this.isMainSpecies,
      this.images,
      this.id,
      this.growth,
      this.fruitOrSeed,
      this.foliage,
      this.flower,
      this.familyCommonName,
      this.duration,
      this.completeData,
      this.commonName,
      this.bibliography,
      this.author});

  Species.fromJson(Map<String, dynamic> json) {
    year = json['year'];
    type = json['type'];
    synonym = json['synonym'];
    status = json['status'];
    specifications = json['specifications'] != null
        ? new Specifications.fromJson(json['specifications'])
        : null;
    if (json['sources'] != null) {
      sources = new List<Sources>();
      json['sources'].forEach((v) {
        sources.add(new Sources.fromJson(v));
      });
    }
    soilsAdaptation = json['soils_adaptation'] != null
        ? new SoilsAdaptation.fromJson(json['soils_adaptation'])
        : null;
    slug = json['slug'];
    seed = json['seed'] != null ? new Seed.fromJson(json['seed']) : null;
    scientificName = json['scientific_name'];
    propagation = json['propagation'] != null
        ? new Propagation.fromJson(json['propagation'])
        : null;
    products = json['products'] != null
        ? new Products.fromJson(json['products'])
        : null;
    nativeStatus = json['native_status'];
    mainSpeciesId = json['main_species_id'];
    isMainSpecies = json['is_main_species'];
    if (json['images'] != null) {
      images = new List<Images>();
      json['images'].forEach((v) {
        images.add(new Images.fromJson(v));
      });
    }
    id = json['id'];
    growth =
        json['growth'] != null ? new Growth.fromJson(json['growth']) : null;
    fruitOrSeed = json['fruit_or_seed'] != null
        ? new FruitOrSeed.fromJson(json['fruit_or_seed'])
        : null;
    foliage =
        json['foliage'] != null ? new Foliage.fromJson(json['foliage']) : null;
    flower =
        json['flower'] != null ? new Flower.fromJson(json['flower']) : null;
    familyCommonName = json['family_common_name'];
    duration = json['duration'];
    completeData = json['complete_data'];
    commonName = json['common_name'];
    bibliography = json['bibliography'];
    author = json['author'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['year'] = this.year;
    data['type'] = this.type;
    data['synonym'] = this.synonym;
    data['status'] = this.status;
    if (this.specifications != null) {
      data['specifications'] = this.specifications.toJson();
    }
    if (this.sources != null) {
      data['sources'] = this.sources.map((v) => v.toJson()).toList();
    }
    if (this.soilsAdaptation != null) {
      data['soils_adaptation'] = this.soilsAdaptation.toJson();
    }
    data['slug'] = this.slug;
    if (this.seed != null) {
      data['seed'] = this.seed.toJson();
    }
    data['scientific_name'] = this.scientificName;
    if (this.propagation != null) {
      data['propagation'] = this.propagation.toJson();
    }
    if (this.products != null) {
      data['products'] = this.products.toJson();
    }
    data['native_status'] = this.nativeStatus;
    data['main_species_id'] = this.mainSpeciesId;
    data['is_main_species'] = this.isMainSpecies;
    if (this.images != null) {
      data['images'] = this.images.map((v) => v.toJson()).toList();
    }
    data['id'] = this.id;
    if (this.growth != null) {
      data['growth'] = this.growth.toJson();
    }
    if (this.fruitOrSeed != null) {
      data['fruit_or_seed'] = this.fruitOrSeed.toJson();
    }
    if (this.foliage != null) {
      data['foliage'] = this.foliage.toJson();
    }
    if (this.flower != null) {
      data['flower'] = this.flower.toJson();
    }
    data['family_common_name'] = this.familyCommonName;
    data['duration'] = this.duration;
    data['complete_data'] = this.completeData;
    data['common_name'] = this.commonName;
    data['bibliography'] = this.bibliography;
    data['author'] = this.author;
    return data;
  }
}

class Specifications {
  String toxicity;
  String shapeAndOrientation;
  String regrowthRate;
  String nitrogenFixation;
  MaxHeightAtBaseAge maxHeightAtBaseAge;
  MaxHeightAtBaseAge matureHeight;
  String lowGrowingGrass;
  String lifespan;
  String leafRetention;
  String knownAllelopath;
  String growthRate;
  String growthPeriod;
  String growthHabit;
  String growthForm;
  String fireResistance;
  String fallConspicuous;
  String coppicePotential;
  String cNRatio;
  String bloat;

  Specifications(
      {this.toxicity,
      this.shapeAndOrientation,
      this.regrowthRate,
      this.nitrogenFixation,
      this.maxHeightAtBaseAge,
      this.matureHeight,
      this.lowGrowingGrass,
      this.lifespan,
      this.leafRetention,
      this.knownAllelopath,
      this.growthRate,
      this.growthPeriod,
      this.growthHabit,
      this.growthForm,
      this.fireResistance,
      this.fallConspicuous,
      this.coppicePotential,
      this.cNRatio,
      this.bloat});

  Specifications.fromJson(Map<String, dynamic> json) {
    toxicity = json['toxicity'];
    shapeAndOrientation = json['shape_and_orientation'];
    regrowthRate = json['regrowth_rate'];
    nitrogenFixation = json['nitrogen_fixation'];
    maxHeightAtBaseAge = json['max_height_at_base_age'] != null
        ? new MaxHeightAtBaseAge.fromJson(json['max_height_at_base_age'])
        : null;
    matureHeight = json['mature_height'] != null
        ? new MaxHeightAtBaseAge.fromJson(json['mature_height'])
        : null;
    lowGrowingGrass = json['low_growing_grass'];
    lifespan = json['lifespan'];
    leafRetention = json['leaf_retention'];
    knownAllelopath = json['known_allelopath'];
    growthRate = json['growth_rate'];
    growthPeriod = json['growth_period'];
    growthHabit = json['growth_habit'];
    growthForm = json['growth_form'];
    fireResistance = json['fire_resistance'];
    fallConspicuous = json['fall_conspicuous'];
    coppicePotential = json['coppice_potential'];
    cNRatio = json['c_n_ratio'];
    bloat = json['bloat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['toxicity'] = this.toxicity;
    data['shape_and_orientation'] = this.shapeAndOrientation;
    data['regrowth_rate'] = this.regrowthRate;
    data['nitrogen_fixation'] = this.nitrogenFixation;
    if (this.maxHeightAtBaseAge != null) {
      data['max_height_at_base_age'] = this.maxHeightAtBaseAge.toJson();
    }
    if (this.matureHeight != null) {
      data['mature_height'] = this.matureHeight.toJson();
    }
    data['low_growing_grass'] = this.lowGrowingGrass;
    data['lifespan'] = this.lifespan;
    data['leaf_retention'] = this.leafRetention;
    data['known_allelopath'] = this.knownAllelopath;
    data['growth_rate'] = this.growthRate;
    data['growth_period'] = this.growthPeriod;
    data['growth_habit'] = this.growthHabit;
    data['growth_form'] = this.growthForm;
    data['fire_resistance'] = this.fireResistance;
    data['fall_conspicuous'] = this.fallConspicuous;
    data['coppice_potential'] = this.coppicePotential;
    data['c_n_ratio'] = this.cNRatio;
    data['bloat'] = this.bloat;
    return data;
  }
}

class MaxHeightAtBaseAge {
  String ft;
  String cm;

  MaxHeightAtBaseAge({this.ft, this.cm});

  MaxHeightAtBaseAge.fromJson(Map<String, dynamic> json) {
    ft = json['ft'];
    cm = json['cm'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ft'] = this.ft;
    data['cm'] = this.cm;
    return data;
  }
}

class Sources {
  String speciesId;
  String sourceUrl;
  String name;
  String lastUpdate;

  Sources({this.speciesId, this.sourceUrl, this.name, this.lastUpdate});

  Sources.fromJson(Map<String, dynamic> json) {
    speciesId = json['species_id'];
    sourceUrl = json['source_url'];
    name = json['name'];
    lastUpdate = json['last_update'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['species_id'] = this.speciesId;
    data['source_url'] = this.sourceUrl;
    data['name'] = this.name;
    data['last_update'] = this.lastUpdate;
    return data;
  }
}

class SoilsAdaptation {
  String medium;
  String fine;
  String coarse;

  SoilsAdaptation({this.medium, this.fine, this.coarse});

  SoilsAdaptation.fromJson(Map<String, dynamic> json) {
    medium = json['medium'];
    fine = json['fine'];
    coarse = json['coarse'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['medium'] = this.medium;
    data['fine'] = this.fine;
    data['coarse'] = this.coarse;
    return data;
  }
}

class Seed {
  String vegetativeSpreadRate;
  String smallGrain;
  String seedsPerPound;
  String seedlingVigor;
  String seedSpreadRate;
  String commercialAvailability;
  String bloomPeriod;

  Seed(
      {this.vegetativeSpreadRate,
      this.smallGrain,
      this.seedsPerPound,
      this.seedlingVigor,
      this.seedSpreadRate,
      this.commercialAvailability,
      this.bloomPeriod});

  Seed.fromJson(Map<String, dynamic> json) {
    vegetativeSpreadRate = json['vegetative_spread_rate'];
    smallGrain = json['small_grain'];
    seedsPerPound = json['seeds_per_pound'];
    seedlingVigor = json['seedling_vigor'];
    seedSpreadRate = json['seed_spread_rate'];
    commercialAvailability = json['commercial_availability'];
    bloomPeriod = json['bloom_period'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['vegetative_spread_rate'] = this.vegetativeSpreadRate;
    data['small_grain'] = this.smallGrain;
    data['seeds_per_pound'] = this.seedsPerPound;
    data['seedling_vigor'] = this.seedlingVigor;
    data['seed_spread_rate'] = this.seedSpreadRate;
    data['commercial_availability'] = this.commercialAvailability;
    data['bloom_period'] = this.bloomPeriod;
    return data;
  }
}

class Propagation {
  String tubers;
  String sprigs;
  String sod;
  String seed;
  String cuttings;
  String corms;
  String container;
  String bulbs;
  String bareRoot;

  Propagation(
      {this.tubers,
      this.sprigs,
      this.sod,
      this.seed,
      this.cuttings,
      this.corms,
      this.container,
      this.bulbs,
      this.bareRoot});

  Propagation.fromJson(Map<String, dynamic> json) {
    tubers = json['tubers'];
    sprigs = json['sprigs'];
    sod = json['sod'];
    seed = json['seed'];
    cuttings = json['cuttings'];
    corms = json['corms'];
    container = json['container'];
    bulbs = json['bulbs'];
    bareRoot = json['bare_root'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tubers'] = this.tubers;
    data['sprigs'] = this.sprigs;
    data['sod'] = this.sod;
    data['seed'] = this.seed;
    data['cuttings'] = this.cuttings;
    data['corms'] = this.corms;
    data['container'] = this.container;
    data['bulbs'] = this.bulbs;
    data['bare_root'] = this.bareRoot;
    return data;
  }
}

class Products {
  String veneer;
  String pulpwood;
  String proteinPotential;
  String post;
  String palatableHuman;
  String palatableGrazeAnimal;
  String palatableBrowseAnimal;
  String nurseryStock;
  String navalStore;
  String lumber;
  String fuelwood;
  String fodder;
  String christmasTree;
  String berryNutSeed;

  Products(
      {this.veneer,
      this.pulpwood,
      this.proteinPotential,
      this.post,
      this.palatableHuman,
      this.palatableGrazeAnimal,
      this.palatableBrowseAnimal,
      this.nurseryStock,
      this.navalStore,
      this.lumber,
      this.fuelwood,
      this.fodder,
      this.christmasTree,
      this.berryNutSeed});

  Products.fromJson(Map<String, dynamic> json) {
    veneer = json['veneer'];
    pulpwood = json['pulpwood'];
    proteinPotential = json['protein_potential'];
    post = json['post'];
    palatableHuman = json['palatable_human'];
    palatableGrazeAnimal = json['palatable_graze_animal'];
    palatableBrowseAnimal = json['palatable_browse_animal'];
    nurseryStock = json['nursery_stock'];
    navalStore = json['naval_store'];
    lumber = json['lumber'];
    fuelwood = json['fuelwood'];
    fodder = json['fodder'];
    christmasTree = json['christmas_tree'];
    berryNutSeed = json['berry_nut_seed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['veneer'] = this.veneer;
    data['pulpwood'] = this.pulpwood;
    data['protein_potential'] = this.proteinPotential;
    data['post'] = this.post;
    data['palatable_human'] = this.palatableHuman;
    data['palatable_graze_animal'] = this.palatableGrazeAnimal;
    data['palatable_browse_animal'] = this.palatableBrowseAnimal;
    data['nursery_stock'] = this.nurseryStock;
    data['naval_store'] = this.navalStore;
    data['lumber'] = this.lumber;
    data['fuelwood'] = this.fuelwood;
    data['fodder'] = this.fodder;
    data['christmas_tree'] = this.christmasTree;
    data['berry_nut_seed'] = this.berryNutSeed;
    return data;
  }
}

class Images {
  String url;

  Images({this.url});

  Images.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    return data;
  }
}

class Growth {
  TemperatureMinimum temperatureMinimum;
  String shadeTolerance;
  String salinityTolerance;
  RootDepthMinimum rootDepthMinimum;
  String resproutAbility;
  RootDepthMinimum precipitationMinimum;
  RootDepthMinimum precipitationMaximum;
  PlantingDensityMinimum plantingDensityMinimum;
  PlantingDensityMinimum plantingDensityMaximum;
  String phMinimum;
  String phMaximum;
  String moistureUse;
  String hedgeTolerance;
  String frostFreeDaysMinimum;
  String fireTolerance;
  String fertilityRequirement;
  String droughtTolerance;
  String coldStratificationRequired;
  String caco3Tolerance;
  String anaerobicTolerance;

  Growth(
      {this.temperatureMinimum,
      this.shadeTolerance,
      this.salinityTolerance,
      this.rootDepthMinimum,
      this.resproutAbility,
      this.precipitationMinimum,
      this.precipitationMaximum,
      this.plantingDensityMinimum,
      this.plantingDensityMaximum,
      this.phMinimum,
      this.phMaximum,
      this.moistureUse,
      this.hedgeTolerance,
      this.frostFreeDaysMinimum,
      this.fireTolerance,
      this.fertilityRequirement,
      this.droughtTolerance,
      this.coldStratificationRequired,
      this.caco3Tolerance,
      this.anaerobicTolerance});

  Growth.fromJson(Map<String, dynamic> json) {
    temperatureMinimum = json['temperature_minimum'] != null
        ? new TemperatureMinimum.fromJson(json['temperature_minimum'])
        : null;
    shadeTolerance = json['shade_tolerance'];
    salinityTolerance = json['salinity_tolerance'];
    rootDepthMinimum = json['root_depth_minimum'] != null
        ? new RootDepthMinimum.fromJson(json['root_depth_minimum'])
        : null;
    resproutAbility = json['resprout_ability'];
    precipitationMinimum = json['precipitation_minimum'] != null
        ? new RootDepthMinimum.fromJson(json['precipitation_minimum'])
        : null;
    precipitationMaximum = json['precipitation_maximum'] != null
        ? new RootDepthMinimum.fromJson(json['precipitation_maximum'])
        : null;
    plantingDensityMinimum = json['planting_density_minimum'] != null
        ? new PlantingDensityMinimum.fromJson(json['planting_density_minimum'])
        : null;
    plantingDensityMaximum = json['planting_density_maximum'] != null
        ? new PlantingDensityMinimum.fromJson(json['planting_density_maximum'])
        : null;
    phMinimum = json['ph_minimum'];
    phMaximum = json['ph_maximum'];
    moistureUse = json['moisture_use'];
    hedgeTolerance = json['hedge_tolerance'];
    frostFreeDaysMinimum = json['frost_free_days_minimum'];
    fireTolerance = json['fire_tolerance'];
    fertilityRequirement = json['fertility_requirement'];
    droughtTolerance = json['drought_tolerance'];
    coldStratificationRequired = json['cold_stratification_required'];
    caco3Tolerance = json['caco_3_tolerance'];
    anaerobicTolerance = json['anaerobic_tolerance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.temperatureMinimum != null) {
      data['temperature_minimum'] = this.temperatureMinimum.toJson();
    }
    data['shade_tolerance'] = this.shadeTolerance;
    data['salinity_tolerance'] = this.salinityTolerance;
    if (this.rootDepthMinimum != null) {
      data['root_depth_minimum'] = this.rootDepthMinimum.toJson();
    }
    data['resprout_ability'] = this.resproutAbility;
    if (this.precipitationMinimum != null) {
      data['precipitation_minimum'] = this.precipitationMinimum.toJson();
    }
    if (this.precipitationMaximum != null) {
      data['precipitation_maximum'] = this.precipitationMaximum.toJson();
    }
    if (this.plantingDensityMinimum != null) {
      data['planting_density_minimum'] = this.plantingDensityMinimum.toJson();
    }
    if (this.plantingDensityMaximum != null) {
      data['planting_density_maximum'] = this.plantingDensityMaximum.toJson();
    }
    data['ph_minimum'] = this.phMinimum;
    data['ph_maximum'] = this.phMaximum;
    data['moisture_use'] = this.moistureUse;
    data['hedge_tolerance'] = this.hedgeTolerance;
    data['frost_free_days_minimum'] = this.frostFreeDaysMinimum;
    data['fire_tolerance'] = this.fireTolerance;
    data['fertility_requirement'] = this.fertilityRequirement;
    data['drought_tolerance'] = this.droughtTolerance;
    data['cold_stratification_required'] = this.coldStratificationRequired;
    data['caco_3_tolerance'] = this.caco3Tolerance;
    data['anaerobic_tolerance'] = this.anaerobicTolerance;
    return data;
  }
}

class TemperatureMinimum {
  String degF;
  String degC;

  TemperatureMinimum({this.degF, this.degC});

  TemperatureMinimum.fromJson(Map<String, dynamic> json) {
    degF = json['deg_f'];
    degC = json['deg_c'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['deg_f'] = this.degF;
    data['deg_c'] = this.degC;
    return data;
  }
}

class RootDepthMinimum {
  String inches;
  String cm;

  RootDepthMinimum({this.inches, this.cm});

  RootDepthMinimum.fromJson(Map<String, dynamic> json) {
    inches = json['inches'];
    cm = json['cm'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['inches'] = this.inches;
    data['cm'] = this.cm;
    return data;
  }
}

class PlantingDensityMinimum {
  String sqm;
  String acre;

  PlantingDensityMinimum({this.sqm, this.acre});

  PlantingDensityMinimum.fromJson(Map<String, dynamic> json) {
    sqm = json['sqm'];
    acre = json['acre'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sqm'] = this.sqm;
    data['acre'] = this.acre;
    return data;
  }
}

class FruitOrSeed {
  String seedPersistence;
  String seedPeriodEnd;
  String seedPeriodBegin;
  String seedAbundance;
  String conspicuous;
  String color;

  FruitOrSeed(
      {this.seedPersistence,
      this.seedPeriodEnd,
      this.seedPeriodBegin,
      this.seedAbundance,
      this.conspicuous,
      this.color});

  FruitOrSeed.fromJson(Map<String, dynamic> json) {
    seedPersistence = json['seed_persistence'];
    seedPeriodEnd = json['seed_period_end'];
    seedPeriodBegin = json['seed_period_begin'];
    seedAbundance = json['seed_abundance'];
    conspicuous = json['conspicuous'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['seed_persistence'] = this.seedPersistence;
    data['seed_period_end'] = this.seedPeriodEnd;
    data['seed_period_begin'] = this.seedPeriodBegin;
    data['seed_abundance'] = this.seedAbundance;
    data['conspicuous'] = this.conspicuous;
    data['color'] = this.color;
    return data;
  }
}

class Foliage {
  String texture;
  String porosityWinter;
  String porositySummer;
  String color;

  Foliage({this.texture, this.porosityWinter, this.porositySummer, this.color});

  Foliage.fromJson(Map<String, dynamic> json) {
    texture = json['texture'];
    porosityWinter = json['porosity_winter'];
    porositySummer = json['porosity_summer'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['texture'] = this.texture;
    data['porosity_winter'] = this.porosityWinter;
    data['porosity_summer'] = this.porositySummer;
    data['color'] = this.color;
    return data;
  }
}

class Flower {
  String conspicuous;
  String color;

  Flower({this.conspicuous, this.color});

  Flower.fromJson(Map<String, dynamic> json) {
    conspicuous = json['conspicuous'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['conspicuous'] = this.conspicuous;
    data['color'] = this.color;
    return data;
  }
}
