local cluster_base = require "st.matter.cluster_base"
local TotalVolatileOrganicCompoundsConcentrationMeasurementServerAttributes = require "TotalVolatileOrganicCompoundsConcentrationMeasurement.server.attributes"
local ConcentrationMeasurement = require "ConcentrationMeasurement"

local TotalVolatileOrganicCompoundsConcentrationMeasurement = {}

TotalVolatileOrganicCompoundsConcentrationMeasurement.ID = 0x042E
TotalVolatileOrganicCompoundsConcentrationMeasurement.NAME = "TotalVolatileOrganicCompoundsConcentrationMeasurement"
TotalVolatileOrganicCompoundsConcentrationMeasurement.server = {}
TotalVolatileOrganicCompoundsConcentrationMeasurement.client = {}
TotalVolatileOrganicCompoundsConcentrationMeasurement.server.attributes = TotalVolatileOrganicCompoundsConcentrationMeasurementServerAttributes:set_parent_cluster(TotalVolatileOrganicCompoundsConcentrationMeasurement)
TotalVolatileOrganicCompoundsConcentrationMeasurement.types = ConcentrationMeasurement.types

function TotalVolatileOrganicCompoundsConcentrationMeasurement:get_attribute_by_id(attr_id)
  return ConcentrationMeasurement:get_attribute_by_id(attr_id)
end

function TotalVolatileOrganicCompoundsConcentrationMeasurement:get_server_command_by_id(command_id)
  return ConcentrationMeasurement:get_server_command_by_id(command_id)
end

TotalVolatileOrganicCompoundsConcentrationMeasurement.attribute_direction_map = ConcentrationMeasurement.attribute_direction_map

TotalVolatileOrganicCompoundsConcentrationMeasurement.FeatureMap = ConcentrationMeasurement.types.Feature

function TotalVolatileOrganicCompoundsConcentrationMeasurement.are_features_supported(feature, feature_map)
  return ConcentrationMeasurement.are_features_supported(feature, feature_map)
end

local attribute_helper_mt = {}
attribute_helper_mt.__index = function(self, key)
  local direction = TotalVolatileOrganicCompoundsConcentrationMeasurement.attribute_direction_map[key]
  if direction == nil then
    error(string.format("Referenced unknown attribute %s on cluster %s", key, TotalVolatileOrganicCompoundsConcentrationMeasurement.NAME))
  end
  return TotalVolatileOrganicCompoundsConcentrationMeasurement[direction].attributes[key]
end
TotalVolatileOrganicCompoundsConcentrationMeasurement.attributes = {}
setmetatable(TotalVolatileOrganicCompoundsConcentrationMeasurement.attributes, attribute_helper_mt)

setmetatable(TotalVolatileOrganicCompoundsConcentrationMeasurement, {__index = cluster_base})

return TotalVolatileOrganicCompoundsConcentrationMeasurement
