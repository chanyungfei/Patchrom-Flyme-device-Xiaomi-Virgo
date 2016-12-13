import common
import edify_generator
import os

def ModifyBegin(edify):
  edify.script[0] = \
  '''ifelse(is_mounted("/system"), unmount("/system"));
ui_print("******************************************");
ui_print("* Flyme for Xiaomi MI Note(Virgo) Standard Edition");
ui_print("*");
ui_print("* Romer: Po_Chan");
ui_print("* http://weibo.com/PoChanL");
ui_print("******************************************");\n''' + edify.script[0]

def AddPrompt(edify):
    for i in xrange(len(edify.script)):
        if "block_image_update" in edify.script[i] and "by-name/system" in edify.script[i]:
            edify.script[i] = 'ui_print("{*} Extracting System");\n' + edify.script[i]
        elif 'package_extract_file("boot' in edify.script[i]:
            edify.script[i] = 'ui_print("{*} Flashing Kernel");\n' + edify.script[i]

def FullOTA_InstallEnd(info):
    edify = info.script
    ModifyBegin(edify)
    AddPrompt(edify)
