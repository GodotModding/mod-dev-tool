GDPC                  @                                                                         P   res://.godot/exported/133200997/export-3070c538c03ee49b7677ff960a3f5195-main.scn�;      �      U'�%@���b0�    X   res://.godot/exported/133200997/export-edaedd9966c9e26a8adb51db2a023ea4-ModFolder.scn   @J            bC���w���Z�/D6    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctexP      ^      2��r3��MgB�[79       res://.godot/uid_cache.bin   o      Y       ��@\ʥ�K�����       res://Btn_StartGameKey.gd           �      ��^��=:��i[r�       res://FileData.gd   �      �       �YlQ/�0���֒�Z!       res://ModFolder.tscn.remap  `^      f       o����U7v`41u7�xC       res://icon.svg  �^      N      ]��s�9^w/�����       res://icon.svg.import   �      C      ���
@�TC��(Ԫ�       res://main.gd          �&      s����c�!�`X�       res://main.tscn.remap   �]      a       �J�Sw� ������       res://project.binary�o            �PP����LD�DA��       res://utils.gd  PN      �      T+���R�&1n�?��Y    �#(�NAA��# https://github.com/godotengine/godot-demo-projects/blob/3.4-b0d4a7c/gui/input_mapping/ActionRemapButton.gd

extends Button

var action = "start_game"

func _ready():
	assert(InputMap.has_action(action))
	set_process_unhandled_key_input(false)
	display_current_key()


func _toggled(button_pressed):
	set_process_unhandled_key_input(button_pressed)
	if button_pressed:
		text = " "
		release_focus()
	else:
		display_current_key()


func _unhandled_key_input(event):
	# Note that you can use the _input callback instead, especially if
	# you want to work with gamepads.
	if(event.pressed || event.alt_pressed || event.ctrl_pressed || event.meta_pressed || event.shift_pressed):
		remap_action_to(event)


func remap_action_to(event):
	InputMap.action_erase_events(action)
	InputMap.action_add_event(action, event)
	text = event.as_text()


func display_current_key():
	var current_key = InputMap.action_get_events(action)[0].as_text()
	text = current_key
��E�extends Resource
class_name FileData

var src: String
var dst: String

func add_data(new_src, new_dst):
	src = new_src
	dst = new_dst
�����^t_o�GST2   �   �      ����               � �        &  RIFF  WEBPVP8L  /������!"2�H�l�m�l�H�Q/H^��޷������d��g�(9�$E�Z��ߓ���'3���ض�U�j��$�՜ʝI۶c��3� [���5v�ɶ�=�Ԯ�m���mG�����j�m�m�_�XV����r*snZ'eS�����]n�w�Z:G9�>B�m�It��R#�^�6��($Ɓm+q�h��6�4mb�h3O���$E�s����A*DV�:#�)��)�X/�x�>@\�0|�q��m֋�d�0ψ�t�!&����P2Z�z��QF+9ʿ�d0��VɬF�F� ���A�����j4BUHp�AI�r��ِ���27ݵ<�=g��9�1�e"e�{�(�(m�`Ec\]�%��nkFC��d���7<�
V�Lĩ>���Qo�<`�M�$x���jD�BfY3�37�W��%�ݠ�5�Au����WpeU+.v�mj��%' ��ħp�6S�� q��M�׌F�n��w�$$�VI��o�l��m)��Du!SZ��V@9ד]��b=�P3�D��bSU�9�B���zQmY�M~�M<��Er�8��F)�?@`�:7�=��1I]�������3�٭!'��Jn�GS���0&��;�bE�
�
5[I��=i�/��%�̘@�YYL���J�kKvX���S���	�ڊW_�溶�R���S��I��`��?֩�Z�T^]1��VsU#f���i��1�Ivh!9+�VZ�Mr�טP�~|"/���IK
g`��MK�����|CҴ�ZQs���fvƄ0e�NN�F-���FNG)��W�2�JN	��������ܕ����2
�~�y#cB���1�YϮ�h�9����m������v��`g����]1�)�F�^^]Rץ�f��Tk� s�SP�7L�_Y�x�ŤiC�X]��r�>e:	{Sm�ĒT��ubN����k�Yb�;��Eߝ�m�Us�q��1�(\�����Ӈ�b(�7�"�Yme�WY!-)�L���L�6ie��@�Z3D\?��\W�c"e���4��AǘH���L�`L�M��G$𩫅�W���FY�gL$NI�'������I]�r��ܜ��`W<ߛe6ߛ�I>v���W�!a��������M3���IV��]�yhBҴFlr�!8Մ�^Ҷ�㒸5����I#�I�ڦ���P2R���(�r�a߰z����G~����w�=C�2������C��{�hWl%��и���O������;0*��`��U��R��vw�� (7�T#�Ƨ�o7�
�xk͍\dq3a��	x p�ȥ�3>Wc�� �	��7�kI��9F}�ID
�B���
��v<�vjQ�:a�J�5L&�F�{l��Rh����I��F�鳁P�Nc�w:17��f}u}�Κu@��`� @�������8@`�
�1 ��j#`[�)�8`���vh�p� P���׷�>����"@<�����sv� ����"�Q@,�A��P8��dp{�B��r��X��3��n$�^ ��������^B9��n����0T�m�2�ka9!�2!���]
?p ZA$\S��~B�O ��;��-|��
{�V��:���o��D��D0\R��k����8��!�I�-���-<��/<JhN��W�1���(�#2:E(*�H���{��>��&!��$| �~�+\#��8�> �H??�	E#��VY���t7���> 6�"�&ZJ��p�C_j����	P:�~�G0 �J��$�M���@�Q��Yz��i��~q�1?�c��Bߝϟ�n�*������8j������p���ox���"w���r�yvz U\F8��<E��xz�i���qi����ȴ�ݷ-r`\�6����Y��q^�Lx�9���#���m����-F�F.-�a�;6��lE�Q��)�P�x�:-�_E�4~v��Z�����䷳�:�n��,㛵��m�=wz�Ξ;2-��[k~v��Ӹ_G�%*�i� ����{�%;����m��g�ez.3���{�����Kv���s �fZ!:� 4W��޵D��U��
(t}�]5�ݫ߉�~|z��أ�#%���ѝ܏x�D4�4^_�1�g���<��!����t�oV�lm�s(EK͕��K�����n���Ӌ���&�̝M�&rs�0��q��Z��GUo�]'G�X�E����;����=Ɲ�f��_0�ߝfw�!E����A[;���ڕ�^�W"���s5֚?�=�+9@��j������b���VZ^�ltp��f+����Z�6��j�`�L��Za�I��N�0W���Z����:g��WWjs�#�Y��"�k5m�_���sh\���F%p䬵�6������\h2lNs�V��#�t�� }�K���Kvzs�>9>�l�+�>��^�n����~Ěg���e~%�w6ɓ������y��h�DC���b�KG-�d��__'0�{�7����&��yFD�2j~�����ټ�_��0�#��y�9��P�?���������f�fj6͙��r�V�K�{[ͮ�;4)O/��az{�<><__����G����[�0���v��G?e��������:���١I���z�M�Wۋ�x���������u�/��]1=��s��E&�q�l�-P3�{�vI�}��f��}�~��r�r�k�8�{���υ����O�֌ӹ�/�>�}�t	��|���Úq&���ݟW����ᓟwk�9���c̊l��Ui�̸z��f��i���_�j�S-|��w�J�<LծT��-9�����I�®�6 *3��y�[�.Ԗ�K��J���<�ݿ��-t�J���E�63���1R��}Ғbꨝט�l?�#���ӴQ��.�S���U
v�&�3�&O���0�9-�O�kK��V_gn��k��U_k˂�4�9�v�I�:;�w&��Q�ҍ�
��fG��B��-����ÇpNk�sZM�s���*��g8��-���V`b����H���
3cU'0hR
�w�XŁ�K݊�MV]�} o�w�tJJ���$꜁x$��l$>�F�EF�޺�G�j�#�G�t�bjj�F�б��q:�`O�4�y�8`Av<�x`��&I[��'A�˚�5��KAn��jx ��=Kn@��t����)�9��=�ݷ�tI��d\�M�j�B�${��G����VX�V6��f�#��V�wk ��W�8�	����lCDZ���ϖ@���X��x�W�Utq�ii�D($�X��Z'8Ay@�s�<�x͡�PU"rB�Q�_�Q6  /�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://do8ljkue3ngfa"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.svg"
dest_files=["res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_compression=1
compress/bptc_ldr=0
compress/normal_map=0
compress/channel_pack=0
mipmaps/generate=false
mipmaps/limit=-1
roughness/mode=0
roughness/src_normal=""
process/fix_alpha_border=true
process/premult_alpha=false
process/normal_map_invert_y=false
process/hdr_as_srgb=false
process/hdr_clamp_exposure=false
process/size_limit=0
detect_3d/compress_to=1
svg/scale=1.0
editor/scale_with_editor_scale=false
editor/convert_colors_with_editor_theme=false
U�Ȣi�8�KG�extends Control

const SAVE_PATH = 'user://save.json'

var cmd_args = {
	'--run': build,
	'--build': only_build,
	'--?': print_help,
}

var cmd_args_description = {
	'--run': 'Run the game with current settings',
	'--build': 'Export zip with current settings, but don\'t run the game',
	'--?': 'Show possible commands',
}

var cmd_args_passed
var data = {
	'runner_script_name': 'runner.cmd',
	'game_folder_path': '',
	'game_exe_path': '',
	'game_mod_folder_name': 'mods',
	'mod_parent_folder_name': 'mods-unpacked',
	'project_folder_path': '',
	'mod_folder_path': '',
	'mod_folder_name': '',
	'excluded_file_extensions': ['.csv.import']
}

# array of file_data's
var mod_file_paths: Array[FileData] = []

var current_dialog : String

@onready var file_dialog = $MarginContainer/FileDialog
@onready var current_game_exe = $MarginContainer/VBoxContainer/VBoxContainer/current_game_exe
@onready var current_mod_folder = $MarginContainer/VBoxContainer/VBoxContainer/current_mod_folder
@onready var btn_start_game_key = $MarginContainer/VBoxContainer/Btn_StartGameKey
@onready var line_edit = $MarginContainer/VBoxContainer/LineEdit
@onready var line_edit_excluded_file_extensions = $MarginContainer/VBoxContainer/LineEdit_ExcludedFileExtensions
@onready var error_message = $MarginContainer/VBoxContainer/Error_Message


# Called when the node enters the scene tree for the first time.
func _ready():
	# Load save file stored at SAVE_PATH
	data = load_save()
	
	# Get all cmd line arguments
	# --run -> Run the game with current settings
	# --export -> Export zip with current settings but don't run the game
	# --? --> Show possible commands
	cmd_args_passed = get_cmd_args()

	handle_cmd_args(cmd_args_passed)
	
	update_UI()

func _input(event):
	if event.is_action("start_game"):
		hide_error_message()
		build()

func get_cmd_args():
	var arguments = []
	for argument in OS.get_cmdline_args():
		if(argument.begins_with('--')):
			arguments.append(argument)
	
	return arguments

func handle_cmd_args(cmd_args_passed):
	# If no argument continue with UI Mode
	if(cmd_args_passed.size() == 0):
		return
	
	# Check if only one command
	if(cmd_args_passed.size() > 1):
		print("ERROR: Please provide only one argument")
		return
	
	# Grab the the one cmd arg
	var cmd_arg = cmd_args_passed[0]
	
	# Call the corresponding function of the command is known
	if(cmd_args.has(cmd_arg)):
		cmd_args[cmd_arg].call()
	else:
		print(str("ERROR: unknown command ", cmd_arg, " , try --? for help."))
	
	get_tree().quit()

func print_help():
	print(JSON.stringify(cmd_args_description, '   '))

func only_build():
	build(false)
	print(str('SUCCESS: Build completed export path -> ', str(data.game_folder_path, '/', data.game_mod_folder_name, '/', data.mod_folder_name, '.zip')))

func build(run_game = true):
	if(!check_paths()):
		return
	
	# Get all mod file src paths
	var mod_file_src_paths = Utils.get_flat_view_dict(data.mod_folder_path)	
	
	for mod_file_src_path in mod_file_src_paths:
		
		# handle excluded file extension
		if(Utils.is_file_extension(mod_file_src_path, data.excluded_file_extensions)):
			# skip if file extension is excluded
			continue
		
		# add mod files src and dst paths to mod_file_paths
		handle_mod_files(mod_file_src_path)

		# add imported files src and dst paths to mod_file_paths
		if mod_file_src_path.get_extension() == "import" && Utils.is_file_there(mod_file_src_path):
			handle_import_files(mod_file_src_path)

	# Create the zip file
	var zip_file_dst_path = str(data.game_folder_path, '/', data.game_mod_folder_name, '/', data.mod_folder_name, '.zip')
	zip_folder(zip_file_dst_path, mod_file_paths)

	# Start the game with the specified runner script ( can also just be the game .exe )
	if(run_game):
		OS.shell_open(str(data.game_folder_path, '/', data.runner_script_name))

func check_paths():
	# Game Folder selected
	if(data.game_folder_path == ''):
		show_error_message("Game Folder not defined - click the \"Game .exe\" Button.")
		return false
	# Mod Folder selected
	elif(data.mod_folder_path == ''):
		show_error_message("Mod Folder not defined - click the \"Mod Folder\" Button.")
		return false
	# Dev Mod Folder
	elif(!Utils.is_dir_there(data.mod_folder_path)):
		show_error_message("Mod Folder not found")
		return false
	# Game Mod Folder
	elif(!Utils.is_dir_there(data.game_folder_path.path_join(data.game_mod_folder_name))):
		show_error_message("Mod Folder in Game Directory not found")
		return false
	# Runner Script
	elif(!Utils.is_file_there(data.game_folder_path.path_join(data.runner_script_name))):
		show_error_message("Runner Script in Game Directory not found")
		return false
	else:
		return true

func handle_mod_files(mod_file_src_path):
	var file_data = FileData.new()
	
	# Get mod file destination path - the dst path is local to the zip file
	# Mod file src path example:
	# C:\Godot_Project_Folder\mod_parent_folder\ModAuthor-ModName\ModMain.gd
	# Mod file dst path example:
	# \mod_parent_folder\ModAuthor-ModName\ModMain.gd
	
	# ['C:\Godot_Project_Folder\mod_parent_folder\', '\ModMain.gd']
	var mod_file_src_path_split = mod_file_src_path.split(data.mod_folder_name)
	# \ModMain.gd
	var mod_folder_local_path = mod_file_src_path_split[1]
	# \mod_parent_folder\ModAuthor-ModName\ModMain.gd
	var mod_file_dst_path = str(data.mod_parent_folder_name, '/', data.mod_folder_name, mod_folder_local_path)

	file_data.add_data(mod_file_src_path, mod_file_dst_path)

	mod_file_paths.append(file_data)


func handle_import_files(import_file_src_path):
	var file_data = FileData.new()
	
	# Open file
	var text = Utils.file_get_as_text(import_file_src_path)
	
	# Get the path to the imported file
	var path_imported_file_regex_results = Utils.get_regex_results(text, "res\\:\\/\\/\\.import.+?(?=\\\")")
	if(path_imported_file_regex_results.size() == 0):
		print("ERROR: No path found inside .import file!")
		return 
	
	# Grab the first path to the imported file
	# Imported file example path:
	# res://.import/ImportedPNG.png-eddc81c8e2d2fc90950be5862656c2b5.stex
	var imported_file_src_path_local = path_imported_file_regex_results[0]
	# remove the res://
	imported_file_src_path_local = imported_file_src_path_local.replace('res://', '')
	# Globalize the path:
	# C:\Path\to\GodotProject\.import\ImportedPNG.png-eddc81c8e2d2fc90950be5862656c2b5.stex
	var imported_file_src_path = str(data.project_folder_path, imported_file_src_path_local)
	
	# Get the imported file dst file - the dst path is local to the zip file
	# Imported file dst path example:
	# \.import\ImportedPNG.png-eddc81c8e2d2fc90950be5862656c2b5.stex
	
	# ['C:\Path\to\GodotProject\', '\ImportedPNG.png-eddc81c8e2d2fc90950be5862656c2b5.stex']
	var imported_file_src_path_split = imported_file_src_path.split('.import')
	var imported_file_local_path = imported_file_src_path_split[1]
	
	var imported_file_dst_path = str('.import', imported_file_local_path)
	
	file_data.add_data(imported_file_src_path, imported_file_dst_path)
	
	mod_file_paths.append(file_data)

# Creates the zip folder at zip_file_dst_path and adds all mod_files
# zip_file_dst_path example:
# C:\Path\to\Game\mods\ModAuthor-ModName.zip
func zip_folder(zip_file_dst_path:String, mod_file_paths:Array[FileData]):
	# Create zip writer
	var writer = Utils.create_writer(zip_file_dst_path)
	# Add each mod_file to the zip
	for mod_file_path in mod_file_paths:
		Utils.zip(writer, mod_file_path.src, mod_file_path.dst)
	
	# Close zip writer
	Utils.close_writer(writer)

func update_UI():
	current_game_exe.text = str("Game .exe: ", data.game_exe_path)
	current_mod_folder.text = str("Mod Folder: ", data.mod_folder_path)
	line_edit.text = data.runner_script_name
	hide_error_message()
	
	line_edit_excluded_file_extensions.text = ", ".join(data.excluded_file_extensions)
	

func _on_btn_game_folder_pressed():
	if(data.game_folder_path != ''):
		file_dialog.current_dir = data.game_folder_path
	file_dialog.show()
	current_dialog = 'game'

func _on_btn_mod_folder_pressed():
	if(data.mod_folder_path != ''):
		file_dialog.current_dir = data.mod_folder_path
	file_dialog.show()
	current_dialog = 'mod'

func handle_file_dialog(dir):
	if(current_dialog == 'game'):
		data.game_exe_path = dir
		data.game_folder_path = dir.get_base_dir()
		current_game_exe.text = str("Game .exe: ", dir)
	elif(current_dialog == 'mod'):
		data.mod_folder_path = dir
		var mod_folder_split = dir.split("/")
		data.mod_folder_name = mod_folder_split[mod_folder_split.size() - 1]
		current_mod_folder.text = str("Mod Folder: ", dir)
		# TODO: Can be an issue if there is no mod parent folder,
		# in that case the parent folder is probably the project folder.
		# And if the Mod folder is inside a subfolder this also doesn't work.
		# TLDR: This will only work with this very specific file structure
		# godot_project_folder/mod_parent_folder/mod_folder/
		# Just adding another button to select The Godot Project folder is probably a better idea.
		data.project_folder_path = dir.get_slice(data.mod_parent_folder_name, 0)

func show_error_message(message: String):
	print(str("ERROR: ", message))
	error_message.text = str("ERROR: ", message)

func hide_error_message():
	error_message.text = ''

func _on_file_dialog_dir_selected(dir):
	handle_file_dialog(dir)

func _on_file_dialog_file_selected(path):
	handle_file_dialog(path)

func _on_line_edit_text_changed(new_text):
	data.runner_script_name = new_text

func _on_line_edit_excluded_file_extensions_text_changed(new_text):
	data.excluded_file_extensions = Utils.get_entries(new_text)

func _on_line_edit_parent_folder_name_text_changed(new_text):
	data.mod_parent_folder_name = new_text

func _notification(what):
	if(what == NOTIFICATION_WM_CLOSE_REQUEST):
		# save data
		save()
		# exit
		get_tree().quit()

func save():
	Utils.file_save(data, SAVE_PATH)

func load_save():
	if(FileAccess.file_exists(SAVE_PATH)):
		return Utils.file_load(SAVE_PATH)
	else:
		return data
6KO�[$RSRC                     PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://main.gd ��������   Script    res://Btn_StartGameKey.gd ��������      local://PackedScene_2y3du 6         PackedScene          	         names "   >      Main    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    script    Control    MarginContainer %   theme_override_constants/margin_left $   theme_override_constants/margin_top &   theme_override_constants/margin_right '   theme_override_constants/margin_bottom    VBoxContainer    current_game_exe    text    Label    current_mod_folder    Spacer    custom_minimum_size    Btn_GameExe    mouse_default_cursor_shape    Button    Btn_ModFolder    Spacer6    Label4    LineEdit_ParentFolderName    placeholder_text 	   LineEdit    Spacer2    Btn_StartGameKey    size_flags_horizontal    toggle_mode    Spacer3    Label2    Spacer4    Label3     LineEdit_ExcludedFileExtensions    Spacer5    Error_Message    horizontal_alignment    FileDialog    title 	   position    size    ok_button_text 
   file_mode    access    _on_btn_game_folder_pressed    pressed    _on_btn_mod_folder_pressed .   _on_line_edit_parent_folder_name_text_changed    text_changed 	   _toggled    toggled    _on_line_edit_text_changed 4   _on_line_edit_excluded_file_extensions_text_changed    _on_file_dialog_dir_selected    dir_selected    _on_file_dialog_file_selected    file_selected    	   variants                        �?                            Game .exe: %GAME_FOLDER_PATH%       Mod Folder: %MOD_FOLDER_PATH% 
          A          
   Game .exe       Mod Folder       Parent Folder Name:       mods-unpacked       Start Game Key:             %SOME_KEY%                Runner Script Name:       runner.cmd       Excluded File Extensions:    !   .something, .something.else, ...       %ERROR_MESSAGE%             Open a File or Directory -      #   -   L  X        Open       node_count             nodes     "  ��������       ����                                                          	   	   ����	                                 
                                         ����                     ����                     ����                          ����                          ����                   	                    ����            
                    ����                                ����                   	                    ����                          ����                                ����                   	                    ����                          ����                 !                                "   ����                   	                 #   ����                          ����                       $   ����                   	                 %   ����                       &   ����                       '   ����                   	                 (   ����         )                 *   *   ����   +      ,      -      .      /       0                conn_count             conns     0          2   1                 2   3                 5   4                7   6                 5   8                 5   9                 ;   :                 =   <                node_paths              editable_instances              version             RSRC����RSRC                     PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script           local://PackedScene_8iyf3 �          PackedScene          	         names "      
   ModFolder    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    Control    VBoxContainer    offset_right    offset_bottom    FolderName    Label    FolderLocation    offset_top    	   variants                        �?            B     �A     �A     HB      node_count             nodes     6   ��������       ����                                                          ����   	      
                       ����   	      
                       ����         	      
                conn_count              conns               node_paths              editable_instances              version             RSRC����A��A�ǥ�]�extends Node
	
func create_writer(dst_path):
	var writer := ZIPPacker.new()
	writer.open(dst_path) # global path to the zip file
	
	return writer

func close_writer(writer):
	return writer.close()

func zip(writer, src_path, dst_path):
	var file = FileAccess.open(src_path, FileAccess.READ)
	var file_length = file.get_length()
	var file_content = file.get_buffer(file_length)
	
	writer.start_file(dst_path) # path inside the zip file
	writer.write_file(file_content)
	writer.close_file()

func is_file_extension(path, extensions):
	var is_extension = false
	
	for extension in extensions:
		var file_name = path.get_file()
		if(file_name.contains(extension)):
			is_extension = true
			break
		else:
			is_extension = false
			
	
	return is_extension

func is_file_there(path):
	return FileAccess.file_exists(path)

func is_dir_there(path):
	return DirAccess.dir_exists_absolute(path)

func get_entries(string) -> Array:
	var regex = RegEx.new()
	# https://stackoverflow.com/a/5001626
	regex.compile("[^,\\s][^\\,]*[^,\\s]*")
	var results = []
	for result in regex.search_all(string):
		results.push_back(result.get_string())
	return results

func get_regex_results(string, regex_exp: String):
	var regex = RegEx.new()
	regex.compile(regex_exp)
	var results = []
	for result in regex.search_all(string):
		results.push_back(result.get_string())
	return results

func file_copy(src, dst):
	# src -> path to some file
	# dst -> path to some dir
	
	var file_name = src.get_file()
	
	var file = FileAccess.open(src, FileAccess.READ)
	var file_length = file.get_length()
	var file_content = file.get_buffer(file_length)
	
	var dst_file_path = str(dst, "/", file_name)
	var file_new = FileAccess.open(dst_file_path, FileAccess.WRITE)
	file_new.store_buffer(file_content)

func file_save(content, path):
	var file = FileAccess.open(path, FileAccess.WRITE)
	file.store_string(JSON.stringify(content))

func file_load(path):
	var file = FileAccess.open(path, FileAccess.READ)
	var content = file.get_as_text()
	return JSON.parse_string(content)

func file_get_as_text(path):
	var file = FileAccess.open(path, FileAccess.READ)
	var content = file.get_as_text()
	return content

func file_save_as_text(content, path):
	var file = FileAccess.open(path, FileAccess.WRITE)
	file.store_string(content)

# https://gist.github.com/willnationsdev/00d97aa8339138fd7ef0d6bd42748f6e
# p_match is a string that filters the list of files.
# If p_match_is_regex is false, p_match is directly string-searched against the FILENAME.
# If it is true, a regex object compiles p_match and runs it against the FILEPATH.
func get_flat_view_dict(p_dir = "res://", p_match = "", p_match_is_regex = false):
	var regex = null
	if p_match_is_regex:
		regex = RegEx.new()
		regex.compile(p_match)
		if not regex.is_valid():
			return []

	var dirs = [p_dir]
	var first = true
	var data = []
	while not dirs.is_empty():
		var dir_name = dirs.back()
		dirs.pop_back()

		var dir = DirAccess.open(dir_name)
		if(DirAccess.get_open_error() == OK):
			dir.list_dir_begin()
			var file_name = dir.get_next()
			while file_name != "":
				if not dir_name == "res://":
					first = false
				# If a directory, then add to list of directories to visit
				if dir.current_is_dir():
					dirs.push_back(dir.get_current_dir() + "/" + file_name)
				# If a file, check if we already have a record for the same name
				else:
					var path = dir.get_current_dir() + ("/" if not first else "") + file_name
					# grab all
					if p_match == "":
						data.append(path)
					# grab matching strings
					elif p_match_is_regex == false && file_name.find(p_match, 0) != -1:
						data.append(path)
					# grab matching regex
					elif p_match_is_regex == true:
						var regex_match = regex.search(path)
						if regex_match != null:
							data.append(path)
				# Move on to the next file in this directory
				file_name = dir.get_next()
			# We've exhausted all files in this directory. Close the iterator.
			dir.list_dir_end()
	return data
I�5���y�[remap]

path="res://.godot/exported/133200997/export-3070c538c03ee49b7677ff960a3f5195-main.scn"
�]x�q�|�:����0[remap]

path="res://.godot/exported/133200997/export-edaedd9966c9e26a8adb51db2a023ea4-ModFolder.scn"
3�g��l�9=<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><g transform="translate(32 32)"><path d="m-16-32c-8.86 0-16 7.13-16 15.99v95.98c0 8.86 7.13 15.99 16 15.99h96c8.86 0 16-7.13 16-15.99v-95.98c0-8.85-7.14-15.99-16-15.99z" fill="#363d52"/><path d="m-16-32c-8.86 0-16 7.13-16 15.99v95.98c0 8.86 7.13 15.99 16 15.99h96c8.86 0 16-7.13 16-15.99v-95.98c0-8.85-7.14-15.99-16-15.99zm0 4h96c6.64 0 12 5.35 12 11.99v95.98c0 6.64-5.35 11.99-12 11.99h-96c-6.64 0-12-5.35-12-11.99v-95.98c0-6.64 5.36-11.99 12-11.99z" fill-opacity=".4"/></g><g stroke-width="9.92746" transform="matrix(.10073078 0 0 .10073078 12.425923 2.256365)"><path d="m0 0s-.325 1.994-.515 1.976l-36.182-3.491c-2.879-.278-5.115-2.574-5.317-5.459l-.994-14.247-27.992-1.997-1.904 12.912c-.424 2.872-2.932 5.037-5.835 5.037h-38.188c-2.902 0-5.41-2.165-5.834-5.037l-1.905-12.912-27.992 1.997-.994 14.247c-.202 2.886-2.438 5.182-5.317 5.46l-36.2 3.49c-.187.018-.324-1.978-.511-1.978l-.049-7.83 30.658-4.944 1.004-14.374c.203-2.91 2.551-5.263 5.463-5.472l38.551-2.75c.146-.01.29-.016.434-.016 2.897 0 5.401 2.166 5.825 5.038l1.959 13.286h28.005l1.959-13.286c.423-2.871 2.93-5.037 5.831-5.037.142 0 .284.005.423.015l38.556 2.75c2.911.209 5.26 2.562 5.463 5.472l1.003 14.374 30.645 4.966z" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 919.24059 771.67186)"/><path d="m0 0v-47.514-6.035-5.492c.108-.001.216-.005.323-.015l36.196-3.49c1.896-.183 3.382-1.709 3.514-3.609l1.116-15.978 31.574-2.253 2.175 14.747c.282 1.912 1.922 3.329 3.856 3.329h38.188c1.933 0 3.573-1.417 3.855-3.329l2.175-14.747 31.575 2.253 1.115 15.978c.133 1.9 1.618 3.425 3.514 3.609l36.182 3.49c.107.01.214.014.322.015v4.711l.015.005v54.325c5.09692 6.4164715 9.92323 13.494208 13.621 19.449-5.651 9.62-12.575 18.217-19.976 26.182-6.864-3.455-13.531-7.369-19.828-11.534-3.151 3.132-6.7 5.694-10.186 8.372-3.425 2.751-7.285 4.768-10.946 7.118 1.09 8.117 1.629 16.108 1.846 24.448-9.446 4.754-19.519 7.906-29.708 10.17-4.068-6.837-7.788-14.241-11.028-21.479-3.842.642-7.702.88-11.567.926v.006c-.027 0-.052-.006-.075-.006-.024 0-.049.006-.073.006v-.006c-3.872-.046-7.729-.284-11.572-.926-3.238 7.238-6.956 14.642-11.03 21.479-10.184-2.264-20.258-5.416-29.703-10.17.216-8.34.755-16.331 1.848-24.448-3.668-2.35-7.523-4.367-10.949-7.118-3.481-2.678-7.036-5.24-10.188-8.372-6.297 4.165-12.962 8.079-19.828 11.534-7.401-7.965-14.321-16.562-19.974-26.182 4.4426579-6.973692 9.2079702-13.9828876 13.621-19.449z" fill="#478cbf" transform="matrix(4.162611 0 0 -4.162611 104.69892 525.90697)"/><path d="m0 0-1.121-16.063c-.135-1.936-1.675-3.477-3.611-3.616l-38.555-2.751c-.094-.007-.188-.01-.281-.01-1.916 0-3.569 1.406-3.852 3.33l-2.211 14.994h-31.459l-2.211-14.994c-.297-2.018-2.101-3.469-4.133-3.32l-38.555 2.751c-1.936.139-3.476 1.68-3.611 3.616l-1.121 16.063-32.547 3.138c.015-3.498.06-7.33.06-8.093 0-34.374 43.605-50.896 97.781-51.086h.066.067c54.176.19 97.766 16.712 97.766 51.086 0 .777.047 4.593.063 8.093z" fill="#478cbf" transform="matrix(4.162611 0 0 -4.162611 784.07144 817.24284)"/><path d="m0 0c0-12.052-9.765-21.815-21.813-21.815-12.042 0-21.81 9.763-21.81 21.815 0 12.044 9.768 21.802 21.81 21.802 12.048 0 21.813-9.758 21.813-21.802" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 389.21484 625.67104)"/><path d="m0 0c0-7.994-6.479-14.473-14.479-14.473-7.996 0-14.479 6.479-14.479 14.473s6.483 14.479 14.479 14.479c8 0 14.479-6.485 14.479-14.479" fill="#414042" transform="matrix(4.162611 0 0 -4.162611 367.36686 631.05679)"/><path d="m0 0c-3.878 0-7.021 2.858-7.021 6.381v20.081c0 3.52 3.143 6.381 7.021 6.381s7.028-2.861 7.028-6.381v-20.081c0-3.523-3.15-6.381-7.028-6.381" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 511.99336 724.73954)"/><path d="m0 0c0-12.052 9.765-21.815 21.815-21.815 12.041 0 21.808 9.763 21.808 21.815 0 12.044-9.767 21.802-21.808 21.802-12.05 0-21.815-9.758-21.815-21.802" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 634.78706 625.67104)"/><path d="m0 0c0-7.994 6.477-14.473 14.471-14.473 8.002 0 14.479 6.479 14.479 14.473s-6.477 14.479-14.479 14.479c-7.994 0-14.471-6.485-14.471-14.479" fill="#414042" transform="matrix(4.162611 0 0 -4.162611 656.64056 631.05679)"/></g></svg>
��   꾍ӥQ�q   res://icon.svge���}   res://main.tscn��9��+   res://ModFolder.tscn�@��O�ECFG	      _global_script_classes�                     class         FileData      language      GDScript      path      res://FileData.gd         base      Resource   _global_script_class_icons                FileData          application/config/name         ModDevTools    application/run/main_scene         res://main.tscn    application/config/features$   "         4.0    Forward Plus       application/config/icon         res://icon.svg     autoload/Utils         *res://utils.gd    editor/run/main_run_args         --headless --build     input/start_game�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed          shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode      @    physical_keycode          unicode           echo          script      ���;- 5h�.