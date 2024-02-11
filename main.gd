




extends Node

@export var player : PackedScene
@export var map : PackedScene
@export var enemy: PackedScene = preload("res://enemy/enemy.tscn")
@export var enemies_amount = 5
var map_dimensions = []

func spawn_dude(level: int):
	var new_enemy = enemy.instantiate()
	new_enemy.set_level(level)

	var x_pos = int(map_dimensions[0] * 16 * randf())
	var y_pos = int(map_dimensions[1] * 16* randf())
	$Dudes.add_child(new_enemy)
	new_enemy.position = Vector2(x_pos, y_pos)

func _process(delta) -> void:
	while $Dudes.get_child_count() <= enemies_amount:
		spawn_dude(randi_range(0, 10))
		

func _ready():
	var area: Rect2i = $Map.get_used_rect()
	map_dimensions = [area.size[0], area.size[1]] ##idk why i did this
	spawn_dude(3)
	
## Server
#func _on_host_button_pressed():
	#upnp_setup()
	#
	#var peer = ENetMultiplayerPeer.new()
	#peer.create_server(9999)
	#multiplayer.multiplayer_peer = peer
#
	#multiplayer.peer_disconnected.connect(remove_player)
#
	#load_game()
#
##  Client - Call this in the `ready()` function and set the public IP address of your server for automatic joining
#func _on_join_button_pressed():
	#var peer = ENetMultiplayerPeer.new()
	#peer.create_client(%To.text, 9999)
	#multiplayer.multiplayer_peer = peer
#
	#multiplayer.connected_to_server.connect(load_game) # Loads only if connected to a server
	#multiplayer.server_disconnected.connect(server_offline)
#
#func load_game():
	#%Menu.hide()
	#%MapInstance.add_child(map.instantiate())
	#add_player.rpc(multiplayer.get_unique_id())
#
#@rpc("any_peer") # Add "call_local" if you also want to spawn a player from the server
#func add_player(id):
	#var player_instance = player.instantiate()
	#player_instance.name = str(id)
	#%SpawnPosition.add_child(player_instance)
#
#@rpc("any_peer")
#func remove_player(id):
	#if %SpawnPosition.get_node(str(id)):
		#%SpawnPosition.get_node(str(id)).queue_free()
#
#func server_offline():
	#%Menu.show()
	#if %MapInstance.get_child(0):
		#%MapInstance.get_child(0).queue_free()
#
## Set up port mapping for online multiplayer functionality
#func upnp_setup():
	#var upnp = UPNP.new()
	#upnp.discover()
	#upnp.add_port_mapping(9999)
	#%DisplayPublicIP.text = "Server IP: " + upnp.query_external_address()
