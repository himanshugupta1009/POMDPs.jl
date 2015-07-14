

abstract AbstractDistribution

create_transition(pomdp::POMDP) = error("$(typeof(pomdp)) does not implement create_transition") # creates a dsitribution 
create_observation(pomdp::POMDP) = error("$(typeof(pomdp)) does not implement create_observation") # creates a dsitribution 
rand!(state::Any, d::AbstractDistribution, rand::AbstractRNG=GLOABL_RNG)  = error("$(typeof(d)) does not implement rand") # fills with a random state
pdf(d::AbstractDistribution, x::Any)        = error("$(typeof(d)) does not implement pdf") # returns a probability


create_fully_obs_transition(pomdp::POMDP) = error("$(typeof(pomdp)) does not implement create_fully_obs_transition") # creates a dsitribution 
create_partially_obs_transition(pomdp::POMDP) = error("$(typeof(pomdp)) does not implement create_part_obs_transition") # creates a dsitribution 

abstract DiscreteDistribution

Base.length(d::DiscreteDistribution) = error("$(typeof(d)) does not implement length") 


typealias AbstractSpace AbstractDistribution

dimensions(s::AbstractSpace) = error("$(typeof(s)) does not implement dimensions") # returns an integer
lowerbound(s::AbstractSpace, i::Int) = error("$(typeof(s)) does not implement lowerbound") # returns bound of dim i
upperbound(s::AbstractSpace, i::Int) = error("$(typeof(s)) does not implement upperbound") # returns bound of dim i 
Base.getindex(s::AbstractSpace, i::Int) = error("$(typeof(s)) does not implement getindex") # returns distribution for dim i

domain(s::AbstractSpace) = error("$(typeof(s)) does not implement domain")

# return a space type
states(pomdp::POMDP) = error("$(typeof(pomdp)) does not implement states") 
states!(sts::AbstractSpace, pomdp::POMDP, state::Any) = error("$(typeof(pomdp)) does not implement states!") 
actions(pomdp::POMDP, state::Any) = error("$(typeof(pomdp)) does not implement actions") 
actions!(acts::AbstractSpace, pomdp::POMDP, state::Any) = error("$(typeof(pomdp)) does not implement actions!") 
observations(pomdp::POMDP) = error("$(typeof(pomdp)) does not implement observations") 
observations!(obs::AbstractSpace, pomdp::POMDP, state::Any) = error("$(typeof(pomdp)) does not implement observations!") 

fully_obs_space(pomdp::POMDP) = error("$(typeof(pomdp)) does not implement fully_obs_space") 
part_obs_space(pomdp::POMDP) = error("$(typeof(pomdp)) does not implement part_obs_space") 