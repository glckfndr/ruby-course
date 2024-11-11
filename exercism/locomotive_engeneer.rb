class LocomotiveEngineer
  def self.generate_list_of_wagons(*args)
    args
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    a, b, *c =  each_wagons_id
    c1, *d  = c
    ([c1] << [*missing_wagons] << [*d] << a << b).flatten
  end

  def self.add_missing_stops (from_to, **kwargs)
    from_to.merge({stops: kwargs.values()})
  end

  def self.extend_route_information(route, more_route_information)
    route.merge(more_route_information)
  end
end