package tinyfiledialogs
import "core:c"

foreign import lib {
	"tinyfiledialogs.lib",
	"system:comdlg32.lib",
	"system:Ole32.lib",
}

foreign lib {
	tinyfd_notifyPopup 			:: proc(title, message, icon_type: cstring) -> c.int ---
	tinyfd_messageBox 			:: proc(title, message, dialog_type, icon_type: cstring, default_button: c.int) -> c.int ---
	tinyfd_inputBox 			:: proc(title, message, default_input: cstring) -> [^]c.char ---
	tinyfd_saveFileDialog 		:: proc(title, default_path: cstring, pattern_count: c.int, patterns: [^]cstring, file_desc: cstring) -> [^]c.char ---
	tinyfd_openFileDialog 		:: proc(title, default_path: cstring, pattern_count: c.int, patterns: [^]cstring, file_desc: cstring, allow_multi: c.int) -> [^]c.char ---
	tinyfd_selectFolderDialog 	:: proc(title, default_path: cstring) -> [^]c.char ---
	tinyfd_colorChooser 		:: proc(title, default_hex_rgb: cstring, default_rgb, result_rgb: [3]byte) -> [^]c.char ---
}