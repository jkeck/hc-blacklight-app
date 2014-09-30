module RenderConstraintsHelper
  include Blacklight::RenderConstraintsHelperBehavior
  ##
  # Render the actual constraints, not including header or footer
  # info. 
  # 
  # @param [Hash] query parameters
  # @return [String]
  # def render_constraints(localized_params = params)
  #   (render_constraints_query(localized_params) + render_constraints_filters(localized_params) + "<--- Remove limits by clicking the x").html_safe
  # end
end
