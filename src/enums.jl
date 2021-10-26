@enum EBVClass begin
    SpeciesTraits
    SpeciesPopulations
    GeneticComposition
    CommunityComposition
    EcosystemStructure
    EcosystemFunction
end

@enum EBVName begin
    IntraspecificGeneticDiversity
    GeneticDifferentiation
    EffectivePopulationSize
    Inbreeding
    SpeciesDistributions
    SpeciesAbundances
    Morphology
    Physiology
    Phenology
    Movement
    CommunityAbundance
    TaxonomicAndPhylogeneticDiversity
    TraitDiversity
    InteractionDiversity
    PrimaryProductivity
    EcosystemPhenology
    EcosystemDisturbances
    LiveCoverFraction
    EcosystemDistribution
    EcosystemVerticalProfile
    Pollination
end

@enum EBVEntityType begin # Can  also be a string
    Species
    Community
    Ecosystem
end

@enum EBVSpatialExtent begin
    Global
    Continental
    National
    Regional
    Local
end

@enum EBVTemporalResolution begin # Can also be a string
    Decadal
    Yearly
    Monthly
    Weekly
    Daily
end

@enum EBVEnvironmentalDomain begin
    Terrestrial
    Marine
    Freshwater
end