class Route < ActiveRecord::Base

  # This class contains algorithms for doing graph traversal searches for the entire public transport
  # grid as a whole.
  
  def Route.calculate_all_paths(params = {})
    @fastest = Route.dijkstra(:start => params[:start], :finish => params[:finish], :type => 'fastest')
    @cheapest = Route.dijkstra(:start => params[:start], :finish => params[:finish], :type => 'cheapest')
    
    
  end

  # Standard Dijkstra's algorithm goodies here. I considered A*, but that doesn't guarantee the lowest cost path.
  # If scaling becomes a problem, then maybe A*, which trades accuracy for speed, may become more suitable.
  def Route.dijkstra(params = {})
    dist = {}
    previous = {}
    Path.all.each do |p|
      dist[p] = 2**32        # Arbitrary gigantic number - Ruby doesn't do Math.MAX, evidently.
      previous[v] = nil
    end
    dist[params[:start]] = 0
    
    # Note: We're not getting every node in the system; we're getting every node that's the end-point of a Path.
    all_stops = Path.every_single_endpoint
    until all_stops.empty? 
      u = all_stops[dist.invert.sort.first]       # u = Stop in all_stops with smallest distance in dist.
      if dist[u] == 2**32
        break
      end
      all_stops.delete(u)
      u.
    end
  end
end
