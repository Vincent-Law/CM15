// Created by Crowbar 0.74

$modelname "cpthazama/avp/xeno/drone.mdl"

$bodygroup "model"
{
	studio "body.smd"
}
$bodygroup "head"
{
	studio "m_head.smd"
	studio "gib_head.smd"
}
$bodygroup "larm"
{
	studio "larm.smd"
	studio "gib_larm.smd"
}
$bodygroup "lleg"
{
	studio "lleg.smd"
	studio "gib_lleg.smd"
}
$bodygroup "ltubes"
{
	studio "ltubes.smd"
	studio "gib_ltubes.smd"
}
$bodygroup "mouth_mini"
{
	studio "minimouth.smd"
	blank
}
$bodygroup "rarm"
{
	studio "rarm.smd"
	studio "gib_rarm.smd"
}
$bodygroup "rleg"
{
	studio "rleg.smd"
	studio "gib_rleg.smd"
}
$bodygroup "rtubes"
{
	studio "rtubes.smd"
	studio "gib_rtubes.smd"
}
$bodygroup "tail_main"
{
	studio "tail.smd"
	studio "gib_tail.smd"
}
$bodygroup "tail_end"
{
	studio "tail_end.smd"
	studio "gib_tail_end.smd"
	blank
}


$surfaceprop "alienflesh"

$contents "solid"

$illumposition 0 55.873 46.772

$cdmaterials "models\cpthazama\avp\xeno\warrior\"
$cdmaterials "models\cpthazama\avp\xeno\drone\"

$attachment "eyes" "Bip01 Head" 0 0 0 rotate -75 -90 180
$attachment "rhand" "Bip01 R Hand" 0 0 0 rotate 0 0 0
$attachment "lhand" "Bip01 L Hand" 0 0 0 rotate 0 0 0
$attachment "lfoot" "Bip01 L Foot" 0 0 0 rotate 0 0 0
$attachment "rfoot" "Bip01 R Foot" 0 0 0 rotate 0 0 0
$attachment "decap_spine" "Bip01 Neck" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -139.227 -37.601 -0.577 27.482 37.601 94.121

$hboxset "default"
$hbox 3 "Bip01 Pelvis" -7.24 -8.87 -5.92 7.02 6.28 5.5
$hbox 3 "Bip01 Spine" -6.93 -10.8 -10.25 6.93 10.55 6.42
$hbox 6 "Bip01 LThighTwist" -3.15 -4.45 -4.98 3.67 19.690001 5.04
$hbox 7 "Bip01 RThighTwist" -3.67 -4.45 -5.01 3.15 19.73 5.04
$hbox 2 "Bip01 Spine1" -7.58 -12.64 -11.92 7.58 8.16 6.7
$hbox 2 "Bip01 Spine2" -7.75 -11.95 -11.74 7.75 8.1 6.49
$hbox 2 "Bip01 Neck" -3 -5.55 -3.59 3 2.97 5.32
$hbox 4 "Bip01 L Clavicle" -9.38 -7.94 -4.32 0.09 3.45 6.34
$hbox 4 "Bip01 L UpperArm" 0 -2.01 -2.53 16.629999 1.8 2.17
$hbox 4 "Bip01 L Forearm" -5.26 -1.93 -1.96 15.97 1.96 2.32
$hbox 4 "Bip01 L Hand" -2.42 -0.8 -1.56 2.76 1.42 6.81
$hbox 4 "Bip01 LUpArmTwist" -15.54 -2.58 -2.22 2.98 2.78 2.98
$hbox 1 "Bip01 Neck1" -3 -4.05 -4.96 3 2.21 4.82
$hbox 1 "Bip01 Head" -4.13 -7.79 -20.219999 4.13 2.73 15.61
$hbox 5 "Bip01 R Clavicle" -0.09 -7.94 -4.32 9.38 3.45 6.34
$hbox 5 "Bip01 R UpperArm" 0 -2 -2.17 16.629999 1.8 2.53
$hbox 5 "Bip01 R Forearm" -5.26 -1.93 -2.32 15.97 1.96 1.96
$hbox 5 "Bip01 R Hand" -2.76 -0.8 -1.56 2.42 1.42 6.81
$hbox 5 "Bip01 RUpArmTwist" -2.98 -2.58 -2.22 15.55 2.78 2.98
$hbox 2 "Bip01 Xtra03" -2.23 -3.77 -12.19 2.23 3.58 0.86
$hbox 100 "Bip01 Xtra01" -3.76 -2.98 -18.459999 3.55 3.37 3.38
$hbox 101 "Bip01 Xtra01Opp" -3.55 -2.98 -18.459999 3.76 3.37 3.38
$hbox 102 "Bip01 Xtra02" -2.68 -2.82 -13.9 2.41 3.03 2.44
$hbox 103 "Bip01 Xtra02Opp" -2.41 -2.82 -13.9 2.68 3.03 2.44
$hbox 6 "Bip01 L Thigh" -1.41 -3.15 -4.26 24.85 2.65 2.86
$hbox 6 "Bip01 L Calf" -5.29 -2.63 -2.62 23.34 2.02 4.72
$hbox 6 "Bip01 L Foot" -2.05 -3.46 -6.11 2.03 4.12 10.86
$hbox 7 "Bip01 R Thigh" -3.44 -2.86 -2.65 24.85 4.26 3.15
$hbox 7 "Bip01 R Calf" -5.86 -4.72 -2.02 23.34 2.62 2.63
$hbox 7 "Bip01 R Foot" -2.03 -3.46 -6.11 2.05 4.12 10.86
$hbox 110 "Bip01 Tail" -5 -7.35 -24.01 2.98 6.52 12.8
$hbox 1 "innerMouth" -0.54 -0.66 -8.33 0.54 0.86 10.18
$hbox 1 "innerJawBottom" -0.75 -0.38 0 0.75 1.66 2.59
$hbox 1 "Jaw" -2.7 -1.74 -2 2.7 4.93 6.98
$hbox 4 "Bip01 L Finger0" -1.19 -0.75 -1.6 1.05 1.2 3.56
$hbox 4 "Bip01 L Finger01" -0.82 -0.54 -0.81 0.51 0.8 2.23
$hbox 4 "Bip01 L Finger1" -1.65 -1.01 -1.86 0.95 0.84 4.52
$hbox 4 "Bip01 L Finger11" -0.73 -0.04 -0.49 0.8 3.85 0.61
$hbox 4 "Bip01 L Finger2" -0.91 -0.76 -1.05 0.95 0.99 4.56
$hbox 4 "Bip01 L Finger21" -0.79 -0.24 -0.64 0.64 3.71 0.58
$hbox 4 "Bip01 L Finger3" -2.45 -0.6 -0.74 1.13 1.06 1.02
$hbox 4 "Bip01 L Finger31" -1.51 -0.38 -0.67 0.29 0.69 0.45
$hbox 6 "Bip01 L Toe0" -2.97 -3.33 -1.24 2.67 0.82 6.3
$hbox 6 "Bip01 L Toe01" -2.97 -2.6 -2.67 2.67 0.58 5.18
$hbox 5 "Bip01 R Finger0" -1.05 -0.75 -1.6 1.19 1.2 3.56
$hbox 5 "Bip01 R Finger01" -0.51 -0.54 -0.81 0.82 0.8 2.23
$hbox 5 "Bip01 R Finger1" -0.95 -1.01 -1.86 1.65 0.84 4.52
$hbox 5 "Bip01 R Finger11" -0.8 -0.04 -0.49 0.73 3.85 0.61
$hbox 5 "Bip01 R Finger2" -0.95 -0.76 -1.05 0.91 0.99 4.56
$hbox 5 "Bip01 R Finger21" -0.64 -0.24 -0.64 0.79 3.71 0.58
$hbox 5 "Bip01 R Finger3" -1.13 -0.6 -0.74 2.45 1.06 1.02
$hbox 5 "Bip01 R Finger31" -0.29 -0.38 -0.67 1.51 0.69 0.45
$hbox 7 "Bip01 R Toe0" -2.58 -3.33 -1.23 3.06 0.81 6.3
$hbox 7 "Bip01 R Toe01" -2.58 -2.6 -2.67 3.06 0.58 5.19
$hbox 110 "Bip01 Tail1" -2.82 -4.02 -23.790001 2.82 3.5 12.42
$hbox 110 "Bip01 Tail2" -2.86 -4.04 -24.110001 2.86 3.3 12.59
$hbox 110 "Bip01 Tail3" -2.86 -4.05 -23.700001 2.86 3.06 12.88
$hbox 111 "Bip01 Tail4" -2.57 -7.51 -24.85 2.57 2.6 12.74
$hbox 111 "Bip01 Tail5" -2.34 -8.36 -24.24 2.34 2.18 12.8
$hbox 111 "Bip01 Tail6" -2.07 -8.37 -23.26 2.07 1.86 11.7
$hbox 111 "Bip01 Tail7" -1.85 -5.29 -15.69 1.85 1.85 12.54

$definebone "Bip01" "" -0.000006 -0.035116 52.926098 0.000036 -179.999827 -109.049086 0 0 0 0 0 0
$definebone "Bip01 Pelvis" "Bip01" 0 0 0 3.327395 0.000114 0 0 0 0 0 0 0
$definebone "Bip01 Spine" "Bip01 Pelvis" 0.000287 -4.96207 -0.005074 -3.327166 -0.000115 1.597524 0 0 0 0 0 0
$definebone "Bip01 Spine1" "Bip01 Spine" 0.000005 -6.382874 -0.005036 -0.000057 0.000057 5.994228 0 0 0 0 0 0
$definebone "Bip01 Spine2" "Bip01 Spine1" 0.000002 -6.382843 -0.005054 0 0.000057 6.211955 0 0 0 0 0 0
$definebone "Bip01 Neck" "Bip01 Spine2" 0.000001 -6.384041 -0.002286 0 -0.000057 -13.750866 0 0 0 0 0 0
$definebone "Bip01 L Clavicle" "Bip01 Neck" -2.985965 2.968399 -0.409086 -0.848207 7.238344 13.79998 0 0 0 0 0 0
$definebone "Bip01 L UpperArm" "Bip01 L Clavicle" -5.077207 0.000053 0 -9.505782 149.149256 -166.956324 0 0 0 0 0 0
$definebone "Bip01 L Forearm" "Bip01 L UpperArm" 14.239935 0.000008 0.000001 35.924743 -0.000186 -0.000021 0 0 0 0 0 0
$definebone "Bip01 L Hand" "Bip01 L Forearm" 15.97279 0 0 79.18545 179.757069 177.269883 0 0 0 0 0 0
$definebone "Bip01 R Thigh" "Bip01 Pelvis" 4.213379 -0.000015 0.244953 -41.919036 80.482038 97.257249 0 0 0 0 0 0
$definebone "Bip01 R Calf" "Bip01 R Thigh" 22.62368 0 0.000001 -0.0001 -47.832419 -0.000082 0 0 0 0 0 0
$definebone "Bip01 Neck1" "Bip01 Neck" 0.000001 -2.963844 -0.002335 0 0 -3.427434 0 0 0 0 0 0
$definebone "Bip01 Head" "Bip01 Neck1" 0 -2.963654 -0.000004 0 0 9.051709 0 0 0 0 0 0
$definebone "Bip01 R Clavicle" "Bip01 Neck" 2.985965 2.968407 -0.409075 0.847864 -7.23823 13.800036 0 0 0 0 0 0
$definebone "Bip01 R UpperArm" "Bip01 R Clavicle" 5.07721 0.000015 -0.000003 -9.50583 30.85079 -13.043776 0 0 0 0 0 0
$definebone "Bip01 R Forearm" "Bip01 R UpperArm" 14.23992 -0.000046 -0.000017 -35.924729 0.000009 0.000027 0 0 0 0 0 0
$definebone "Bip01 R Hand" "Bip01 R Forearm" 15.972816 0 0 79.185463 -0.243651 -2.73068 0 0 0 0 0 0
$definebone "Bip01 L Thigh" "Bip01 Pelvis" -4.213382 0.000008 -0.244967 -40.490389 105.218012 164.099598 0 0 0 0 0 0
$definebone "Bip01 L Calf" "Bip01 L Thigh" 22.62365 -0.000001 0.000002 -47.832501 -0.000125 0.000079 0 0 0 0 0 0
$definebone "Bip01 L Foot" "Bip01 L Calf" 22.584774 -0.000001 0 3.453156 96.875489 164.641696 0 0 0 0 0 0
$definebone "Bip01 R Foot" "Bip01 R Calf" 22.584766 0.000002 0.000001 -82.309674 -26.750839 -78.814926 0 0 0 0 0 0
$definebone "Bip01 Xtra02Opp" "Bip01 Spine1" 3.277393 -1.554565 -5.711932 -27.584072 -0.023662 0.00579 0 0 0 0 0 0
$definebone "Bip01 Xtra01Opp" "Bip01 Spine2" 3.564286 -2.470375 -6.371791 -25.425395 10.313755 -34.173386 0 0 0 0 0 0
$definebone "Bip01 Xtra01" "Bip01 Spine2" -3.56425 -2.470383 -6.371815 25.425285 -10.313465 -34.173263 0 0 0 0 0 0
$definebone "Bip01 Xtra03" "Bip01 Neck" -0.000001 0.70919 -3.531708 -0.000114 0.000172 -5.413592 0 0 0 0 0 0
$definebone "Bip01 LThighTwist" "Bip01 L Thigh" 0.000031 0.00001 0.000013 -0.000056 90.00005 -179.999964 0 0 0 0 0 0
$definebone "Bip01 RUpArmTwist" "Bip01 R UpperArm" 0 0 0 -0.000003 -0.000005 0.000004 0 0 0 0 0 0
$definebone "Bip01 LUpArmTwist" "Bip01 L UpperArm" 0.000002 -0.000008 0.000003 -0.000038 179.999964 -180.000005 0 0 0 0 0 0
$definebone "Bip01 Xtra02" "Bip01 Spine1" -3.277365 -1.554565 -5.711947 27.583784 0.023947 0.005848 0 0 0 0 0 0
$definebone "Bip01 RThighTwist" "Bip01 R Thigh" 0.000027 -0.000002 -0.000006 -89.999941 -89.999975 0 0 0 0 0 0 0
$definebone "Bip01 Tail" "Bip01 Pelvis" 0.28622 2.896618 -4.922897 -3.327395 0 33.801192 0 0 0 0 0 0
$definebone "innerMouth" "Bip01 Head" 0.000001 -0.602852 2.054575 -0.000057 0 -6.970137 0 0 0 0 0 0
$definebone "innerJawBottom" "innerMouth" 0.000003 0.582893 8.578199 0 0.000057 -0.000106 0 0 0 0 0 0
$definebone "Jaw" "Bip01 Head" -0.000013 -0.135803 8.559412 -0.000057 0 13.371926 0 0 0 0 0 0
$definebone "bottomLipLeft" "Jaw" -1.044821 3.021866 6.556037 0 0 0.00001 0 0 0 0 0 0
$definebone "bottomLipRight" "Jaw" 1.044827 3.021881 6.556066 -0.000057 0 0.000067 0 0 0 0 0 0
$definebone "topLipLeft" "Bip01 Head" -1.044846 -0.682472 14.967903 -0.000057 0 13.371867 0 0 0 0 0 0
$definebone "topLipRight" "Bip01 Head" 1.044794 -0.682442 14.96789 -0.000057 0.000057 13.371984 0 0 0 0 0 0
$definebone "Bip01 L Finger0" "Bip01 L Hand" 1.795782 0.517853 2.361136 33.976236 58.231283 28.684797 0 0 0 0 0 0
$definebone "Bip01 L Finger01" "Bip01 L Finger0" 0.000015 -0.000011 2.941812 -0.000003 0.000043 -17.143184 0 0 0 0 0 0
$definebone "Bip01 L Finger02" "Bip01 L Finger01" 0.000011 -0.000008 2.234634 -0.000055 -0.000068 64.666189 0 0 0 0 0 0
$definebone "Bip01 L Finger1" "Bip01 L Hand" 1.014437 0.283051 6.19535 -5.374335 0.082173 -6.564552 0 0 0 0 0 0
$definebone "Bip01 L Finger11" "Bip01 L Finger1" -0.000004 0.000023 3.865932 0.000061 0.000126 71.719582 0 0 0 0 0 0
$definebone "Bip01 L Finger12" "Bip01 L Finger11" -0.000012 3.283808 -0.000023 0.000009 -0.000056 -24.650404 0 0 0 0 0 0
$definebone "Bip01 L Finger2" "Bip01 L Hand" -1.052279 -0.057953 6.134966 -9.058339 0.591474 -9.408715 0 0 0 0 0 0
$definebone "Bip01 L Finger21" "Bip01 L Finger2" -0.000019 0.000031 3.963181 0.000065 0.000067 72.57649 0 0 0 0 0 0
$definebone "Bip01 L Finger22" "Bip01 L Finger21" 0.000009 3.373936 -0.000008 0.000128 -0.000064 -23.835661 0 0 0 0 0 0
$definebone "Bip01 L Finger3" "Bip01 L Hand" -2.41514 0.219116 2.633102 50.695307 -9.310554 -8.885665 0 0 0 0 0 0
$definebone "Bip01 L Finger31" "Bip01 L Finger3" -2.450323 -0.000031 -0.000022 -0.000002 -15.95691 0.000067 0 0 0 0 0 0
$definebone "Bip01 L Finger32" "Bip01 L Finger31" -1.51199 -0.000031 -0.000013 -0.000068 81.976443 0 0 0 0 0 0 0
$definebone "Bip01 L ForeTwist" "Bip01 L Forearm" 0.000001 0.000015 0 89.976807 0.000091 0 0 0 0 0 0 0
$definebone "Bip01 L Toe0" "Bip01 L Foot" 0.389153 3.590726 10.860404 -3.207818 -1.917118 21.340718 0 0 0 0 0 0
$definebone "Bip01 L Toe01" "Bip01 L Toe0" 0.000003 -0.000008 3.53194 0.000058 -0.000117 19.768524 0 0 0 0 0 0
$definebone "innerJawTop" "innerMouth" 0.000003 -0.29882 8.578205 0 0 -0.000106 0 0 0 0 0 0
$definebone "Bip01 R Finger0" "Bip01 R Hand" -1.795778 0.517784 2.361097 -33.976301 -58.231235 28.684841 0 0 0 0 0 0
$definebone "Bip01 R Finger01" "Bip01 R Finger0" 0.000008 0.000015 2.941833 -0.000005 0.000138 -17.143131 0 0 0 0 0 0
$definebone "Bip01 R Finger02" "Bip01 R Finger01" -0.000019 -0.000011 2.234621 0.000046 0.000135 64.666121 0 0 0 0 0 0
$definebone "Bip01 R Finger1" "Bip01 R Hand" -1.014437 0.283028 6.195327 5.374298 -0.082108 -6.564551 0 0 0 0 0 0
$definebone "Bip01 R Finger11" "Bip01 R Finger1" 0.000024 -0.000031 3.865942 0.000005 -0.000061 71.71952 0 0 0 0 0 0
$definebone "Bip01 R Finger12" "Bip01 R Finger11" 0.000007 3.28384 0 -0.000118 0.000049 -24.650339 0 0 0 0 0 0
$definebone "Bip01 R Finger2" "Bip01 R Hand" 1.052282 -0.057961 6.134945 9.058356 -0.591412 -9.408717 0 0 0 0 0 0
$definebone "Bip01 R Finger21" "Bip01 R Finger2" 0.000019 0 3.963194 -0.000053 -0.000118 72.576388 0 0 0 0 0 0
$definebone "Bip01 R Finger22" "Bip01 R Finger21" -0.000003 3.373903 0.000038 -0.000118 -0.000006 -23.835537 0 0 0 0 0 0
$definebone "Bip01 R Finger3" "Bip01 R Hand" 2.415138 0.219086 2.633066 -50.695314 9.310602 -8.88566 0 0 0 0 0 0
$definebone "Bip01 R Finger31" "Bip01 R Finger3" 2.450333 -0.000015 0.000003 -0.000002 15.956857 0.000002 0 0 0 0 0 0
$definebone "Bip01 R Finger32" "Bip01 R Finger31" 1.511997 0.000061 -0.000003 0.000113 -81.976258 -0.000055 0 0 0 0 0 0
$definebone "Bip01 R ForeTwist" "Bip01 R Forearm" 0.000003 -0.000008 -0.000003 89.9768 -0.000075 0 0 0 0 0 0 0
$definebone "Bip01 R Toe0" "Bip01 R Foot" -0.479336 3.590753 10.860415 3.207767 1.91706 21.340789 0 0 0 0 0 0
$definebone "Bip01 R Toe01" "Bip01 R Toe0" 0 -0.00001 3.531926 -0.000053 0.000059 19.768473 0 0 0 0 0 0
$definebone "Bip01 Tail1" "Bip01 Tail" 0.000015 0.013748 -17.307758 -0.000057 0 -0.000055 0 0 0 0 0 0
$definebone "Bip01 Tail2" "Bip01 Tail1" 0.000001 0.01376 -17.307751 0 0 0 0 0 0 0 0 0
$definebone "Bip01 Tail3" "Bip01 Tail2" 0.000008 0.013779 -17.307762 0 0 0 0 0 0 0 0 0
$definebone "Bip01 Tail4" "Bip01 Tail3" 0.000005 0.013786 -17.307755 0.000057 0 0 0 0 0 0 0 0
$definebone "Bip01 Tail5" "Bip01 Tail4" 0.000026 0.013802 -17.307716 0 0 0 0 0 0 0 0 0
$definebone "Bip01 Tail6" "Bip01 Tail5" 0.000017 0.013786 -17.307701 0 0 0 0 0 0 0 0 0
$definebone "Bip01 Tail7" "Bip01 Tail6" 0.000008 0.013771 -17.307762 0 0 0 0 0 0 0 0 0
$definebone "Alien_Warrior" "" 0 0 0 0 -179.999964 -89.999982 0 0 0 0 0 0


$sectionframes 30 119

$poseparameter "move_yaw" -180 180 loop 360
$poseparameter "standing" 0 1 loop 0
$poseparameter "head_yaw" -65 65 loop 0
$poseparameter "head_pitch" -35 35 loop 0
$poseparameter "standing_head_yaw" -65 65 loop 0
$poseparameter "standing_head_pitch" -35 35 loop 0
$poseparameter "standing_body_yaw" -65 65 loop 0
$poseparameter "standing_body_pitch" -35 35 loop 0

$ikchain "lhand" "Bip01 L Hand" knee 0.727 0 0.686
$ikchain "lfoot" "Bip01 L Foot" knee 0.809 0 -0.588
$ikchain "rhand" "Bip01 R Hand" knee 0.731 0 -0.683
$ikchain "rfoot" "Bip01 R Foot" knee 0.802 0.597 0

$weightlist "weights_head_yaw" {
	 "Bip01" 0
	 "Bip01 Pelvis" 0
	 "Bip01 Spine" 0
	 "Bip01 Spine1" 0
	 "Bip01 Spine2" 0
	 "Bip01 Neck" 0
	 "Bip01 L Clavicle" 0
	 "Bip01 L UpperArm" 0
	 "Bip01 L Forearm" 0
	 "Bip01 L Hand" 0
	 "Bip01 R Thigh" 0
	 "Bip01 R Calf" 0
	 "Bip01 Neck1" 1
	 "Bip01 Head" 1
	 "Bip01 R Clavicle" 0
	 "Bip01 R UpperArm" 0
	 "Bip01 R Forearm" 0
	 "Bip01 R Hand" 0
	 "Bip01 L Thigh" 0
	 "Bip01 L Calf" 0
	 "Bip01 L Foot" 0
	 "Bip01 R Foot" 0
	 "Bip01 Xtra02Opp" 1
	 "Bip01 Xtra01Opp" 1
	 "Bip01 Xtra01" 1
	 "Bip01 Xtra03" 0
	 "Bip01 LThighTwist" 0
	 "Bip01 RUpArmTwist" 0
	 "Bip01 LUpArmTwist" 0
	 "Bip01 Xtra02" 1
	 "Bip01 RThighTwist" 0
	 "Bip01 Tail" 0
	 "innerMouth" 1
	 "innerJawBottom" 1
	 "Jaw" 1
	 "bottomLipLeft" 1
	 "bottomLipRight" 1
	 "topLipLeft" 1
	 "topLipRight" 1
	 "Bip01 L Finger0" 0
	 "Bip01 L Finger01" 0
	 "Bip01 L Finger02" 0
	 "Bip01 L Finger1" 0
	 "Bip01 L Finger11" 0
	 "Bip01 L Finger12" 0
	 "Bip01 L Finger2" 0
	 "Bip01 L Finger21" 0
	 "Bip01 L Finger22" 0
	 "Bip01 L Finger3" 0
	 "Bip01 L Finger31" 0
	 "Bip01 L Finger32" 0
	 "Bip01 L ForeTwist" 0
	 "Bip01 L Toe0" 0
	 "Bip01 L Toe01" 0
	 "innerJawTop" 1
	 "Bip01 R Finger0" 0
	 "Bip01 R Finger01" 0
	 "Bip01 R Finger02" 0
	 "Bip01 R Finger1" 0
	 "Bip01 R Finger11" 0
	 "Bip01 R Finger12" 0
	 "Bip01 R Finger2" 0
	 "Bip01 R Finger21" 0
	 "Bip01 R Finger22" 0
	 "Bip01 R Finger3" 0
	 "Bip01 R Finger31" 0
	 "Bip01 R Finger32" 0
	 "Bip01 R ForeTwist" 0
	 "Bip01 R Toe0" 0
	 "Bip01 R Toe01" 0
	 "Bip01 Tail1" 0
	 "Bip01 Tail2" 0
	 "Bip01 Tail3" 0
	 "Bip01 Tail4" 0
	 "Bip01 Tail5" 0
	 "Bip01 Tail6" 0
	 "Bip01 Tail7" 0
	 "Alien_Warrior" 0
}

$weightlist "weights_standing_body_yaw" {
	 "Bip01" 0
	 "Bip01 Pelvis" 0
	 "Bip01 Spine" 0
	 "Bip01 Spine1" 1
	 "Bip01 Spine2" 1
	 "Bip01 Neck" 1
	 "Bip01 L Clavicle" 1
	 "Bip01 L UpperArm" 1
	 "Bip01 L Forearm" 1
	 "Bip01 L Hand" 1
	 "Bip01 R Thigh" 0
	 "Bip01 R Calf" 0
	 "Bip01 Neck1" 1
	 "Bip01 Head" 1
	 "Bip01 R Clavicle" 1
	 "Bip01 R UpperArm" 1
	 "Bip01 R Forearm" 1
	 "Bip01 R Hand" 1
	 "Bip01 L Thigh" 0
	 "Bip01 L Calf" 0
	 "Bip01 L Foot" 0
	 "Bip01 R Foot" 0
	 "Bip01 Xtra02Opp" 1
	 "Bip01 Xtra01Opp" 1
	 "Bip01 Xtra01" 1
	 "Bip01 Xtra03" 1
	 "Bip01 LThighTwist" 0
	 "Bip01 RUpArmTwist" 1
	 "Bip01 LUpArmTwist" 1
	 "Bip01 Xtra02" 1
	 "Bip01 RThighTwist" 0
	 "Bip01 Tail" 0
	 "innerMouth" 1
	 "innerJawBottom" 1
	 "Jaw" 1
	 "bottomLipLeft" 1
	 "bottomLipRight" 1
	 "topLipLeft" 1
	 "topLipRight" 1
	 "Bip01 L Finger0" 1
	 "Bip01 L Finger01" 1
	 "Bip01 L Finger02" 1
	 "Bip01 L Finger1" 1
	 "Bip01 L Finger11" 1
	 "Bip01 L Finger12" 1
	 "Bip01 L Finger2" 1
	 "Bip01 L Finger21" 1
	 "Bip01 L Finger22" 1
	 "Bip01 L Finger3" 1
	 "Bip01 L Finger31" 1
	 "Bip01 L Finger32" 1
	 "Bip01 L ForeTwist" 1
	 "Bip01 L Toe0" 0
	 "Bip01 L Toe01" 0
	 "innerJawTop" 1
	 "Bip01 R Finger0" 1
	 "Bip01 R Finger01" 1
	 "Bip01 R Finger02" 1
	 "Bip01 R Finger1" 1
	 "Bip01 R Finger11" 1
	 "Bip01 R Finger12" 1
	 "Bip01 R Finger2" 1
	 "Bip01 R Finger21" 1
	 "Bip01 R Finger22" 1
	 "Bip01 R Finger3" 1
	 "Bip01 R Finger31" 1
	 "Bip01 R Finger32" 1
	 "Bip01 R ForeTwist" 1
	 "Bip01 R Toe0" 0
	 "Bip01 R Toe01" 0
	 "Bip01 Tail1" 0
	 "Bip01 Tail2" 0
	 "Bip01 Tail3" 0
	 "Bip01 Tail4" 0
	 "Bip01 Tail5" 0
	 "Bip01 Tail6" 0
	 "Bip01 Tail7" 0
	 "Alien_Warrior" 0
}

$animation "headLeft_corrective_animation" "drone_anims\headLeft_corrective_animation.smd" {
}

$animation "headCenter_corrective_animation" "drone_anims\headCenter_corrective_animation.smd" {
}

$animation "headRight_corrective_animation" "drone_anims\headRight_corrective_animation.smd" {
}

$animation "headDown_corrective_animation" "drone_anims\headDown_corrective_animation.smd" {
}

$animation "headUp_corrective_animation" "drone_anims\headUp_corrective_animation.smd" {
}

$animation "standing_headLeft_corrective_animation" "drone_anims\standing_headLeft_corrective_animation.smd" {
}

$animation "standing_headCenter_corrective_animation" "drone_anims\standing_headCenter_corrective_animation.smd" {
}

$animation "standing_headRight_corrective_animation" "drone_anims\standing_headRight_corrective_animation.smd" {
}

$animation "standing_headDown_corrective_animation" "drone_anims\standing_headDown_corrective_animation.smd" {
}

$animation "standing_headUp_corrective_animation" "drone_anims\standing_headUp_corrective_animation.smd" {
}

$animation "standing_bodyLeft_corrective_animation" "drone_anims\standing_bodyLeft_corrective_animation.smd" {
}

$animation "standing_bodyCenter_corrective_animation" "drone_anims\standing_bodyCenter_corrective_animation.smd" {
}

$animation "standing_bodyRight_corrective_animation" "drone_anims\standing_bodyRight_corrective_animation.smd" {
}

$animation "standing_bodyDown_corrective_animation" "drone_anims\standing_bodyDown_corrective_animation.smd" {
}

$animation "standing_bodyUp_corrective_animation" "drone_anims\standing_bodyUp_corrective_animation.smd" {
}

$animation "@claw_swipe_left_high_corrective_animation" "drone_anims\@claw_swipe_left_high_corrective_animation.smd" {
}

$animation "@claw_swipe_left_high_return_corrective_animation" "drone_anims\@claw_swipe_left_high_return_corrective_animation.smd" {
}

$animation "@claw_swipe_left_low_corrective_animation" "drone_anims\@claw_swipe_left_low_corrective_animation.smd" {
}

$animation "@claw_swipe_left_low_return_corrective_animation" "drone_anims\@claw_swipe_left_low_return_corrective_animation.smd" {
}

$animation "@claw_swipe_left_mid_corrective_animation" "drone_anims\@claw_swipe_left_mid_corrective_animation.smd" {
}

$animation "@claw_swipe_left_mid_return_corrective_animation" "drone_anims\@claw_swipe_left_mid_return_corrective_animation.smd" {
}

$animation "@claw_swipe_right_high_corrective_animation" "drone_anims\@claw_swipe_right_high_corrective_animation.smd" {
}

$animation "@claw_swipe_right_high_return_corrective_animation" "drone_anims\@claw_swipe_right_high_return_corrective_animation.smd" {
}

$animation "@claw_swipe_right_low_corrective_animation" "drone_anims\@claw_swipe_right_low_corrective_animation.smd" {
}

$animation "@claw_swipe_right_low_return_corrective_animation" "drone_anims\@claw_swipe_right_low_return_corrective_animation.smd" {
}

$animation "@claw_swipe_right_mid_corrective_animation" "drone_anims\@claw_swipe_right_mid_corrective_animation.smd" {
}

$animation "@claw_swipe_right_mid_return_corrective_animation" "drone_anims\@claw_swipe_right_mid_return_corrective_animation.smd" {
}

$animation "@headbite_2ndry_corrective_animation" "drone_anims\@headbite_2ndry_corrective_animation.smd" {
}

$animation "target_offset" "drone_anims\target_offset.smd" {
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 3
}

$animation "headCenter" "drone_anims\headCenter.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "headCenter_corrective_animation" 0
	weightlist "weights_head_yaw"
}

$animation "headUp" "drone_anims\headUp.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "headUp_corrective_animation" 0
	weightlist "weights_head_yaw"
}

$animation "headDown" "drone_anims\headDown.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "headDown_corrective_animation" 0
	weightlist "weights_head_yaw"
}

$animation "headLeft" "drone_anims\headLeft.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "headLeft_corrective_animation" 0
	weightlist "weights_head_yaw"
}

$animation "headRight" "drone_anims\headRight.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "headRight_corrective_animation" 0
	weightlist "weights_head_yaw"
}

$animation "standing_headCenter" "drone_anims\standing_headCenter.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "standing_headCenter_corrective_animation" 0
	weightlist "weights_head_yaw"
}

$animation "standing_headUp" "drone_anims\standing_headUp.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "standing_headUp_corrective_animation" 0
	weightlist "weights_head_yaw"
}

$animation "standing_headDown" "drone_anims\standing_headDown.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "standing_headDown_corrective_animation" 0
	weightlist "weights_head_yaw"
}

$animation "standing_headLeft" "drone_anims\standing_headLeft.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "standing_headLeft_corrective_animation" 0
	weightlist "weights_head_yaw"
}

$animation "standing_headRight" "drone_anims\standing_headRight.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "standing_headRight_corrective_animation" 0
	weightlist "weights_head_yaw"
}

$animation "standing_bodyCenter" "drone_anims\standing_bodyCenter.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "standing_bodyCenter_corrective_animation" 0
	weightlist "weights_standing_body_yaw"
}

$animation "standing_bodyUp" "drone_anims\standing_bodyUp.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "standing_bodyUp_corrective_animation" 0
	weightlist "weights_standing_body_yaw"
}

$animation "standing_bodyDown" "drone_anims\standing_bodyDown.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "standing_bodyDown_corrective_animation" 0
	weightlist "weights_standing_body_yaw"
}

$animation "standing_bodyLeft" "drone_anims\standing_bodyLeft.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "standing_bodyLeft_corrective_animation" 0
	weightlist "weights_standing_body_yaw"
}

$animation "standing_bodyRight" "drone_anims\standing_bodyRight.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "standing_bodyRight_corrective_animation" 0
	weightlist "weights_standing_body_yaw"
}

$animation "crawlf_f" "drone_anims\crawlf_f.smd" {
	fps 34
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 3
	walkframe 16 LX
}

$animation "crawlf_b" "drone_anims\crawlf_b.smd" {
	fps 34
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 3
	walkframe 16 LX
}

$animation "crawlf_45l" "drone_anims\crawlf_45l.smd" {
	fps 34
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 3
	walkframe 16 LX LY
}

$animation "crawlf_45r" "drone_anims\crawlf_45r.smd" {
	fps 34
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 3
	walkframe 16 LX LY
}

$animation "crawlf_45bl" "drone_anims\crawlf_45bl.smd" {
	fps 34
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 3
	walkframe 16 LX LY
}

$animation "crawlf_45br" "drone_anims\crawlf_45br.smd" {
	fps 34
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 3
	walkframe 16 LX LY
}

$animation "crawlf_l" "drone_anims\crawlf_l.smd" {
	fps 34
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 3
	walkframe 16 LY
}

$animation "crawlf_r" "drone_anims\crawlf_r.smd" {
	fps 34
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 3
	walkframe 16 LY
}

$animation "crawl_burst_f" "drone_anims\crawl_burst_f.smd" {
	fps 38
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 3
	walkframe 16 LX
}

$animation "run_f" "drone_anims\run_f.smd" {
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 3
	walkframe 20 LX
}

$animation "run_b" "drone_anims\run_b.smd" {
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 3
	walkframe 20 LX
}

$animation "run_r" "drone_anims\run_r.smd" {
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 3
	walkframe 20 LY
}

$animation "run_l" "drone_anims\run_l.smd" {
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 3
	walkframe 20 LY
}

$animation "standing_sprint" "drone_anims\standing_sprint.smd" {
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 23 23 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 23 23 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 23 23 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 23 23 target 3
	walkframe 23 LX
}

$animation "standing_sprint2" "drone_anims\standing_sprint2.smd" {
	fps 45
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 3
	walkframe 29 LX
}

$animation "walk_s_0" "drone_anims\walk_s_0.smd" {
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 3
	walkframe 24 LX
}

$animation "walk_s_45l" "drone_anims\walk_s_45l.smd" {
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 3
	walkframe 24 LX LY
}

$animation "walk_s_45r" "drone_anims\walk_s_45r.smd" {
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 3
	walkframe 24 LX LY
}

$animation "walk_s_90l" "drone_anims\walk_s_90l.smd" {
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 3
	walkframe 20 LY
}

$animation "walk_s_90r" "drone_anims\walk_s_90r.smd" {
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 3
	walkframe 20 LY
}

$animation "walk_s_315l" "drone_anims\walk_s_315l.smd" {
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 3
	walkframe 24 LX LY
}

$animation "walk_s_315r" "drone_anims\walk_s_315r.smd" {
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 3
	walkframe 24 LX LY
}

$animation "walk_s_180" "drone_anims\walk_s_180.smd" {
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 3
	walkframe 24 LX
}

$animation "sneak_0" "drone_anims\sneak_0.smd" {
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 3
	walkframe 59 LX
}

$animation "sneak_45l" "drone_anims\sneak_45l.smd" {
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 3
	walkframe 59 LX LY
}

$animation "sneak_45r" "drone_anims\sneak_45r.smd" {
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 3
	walkframe 59 LX LY
}

$animation "sneak_90l" "drone_anims\sneak_90l.smd" {
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 3
	walkframe 59 LY
}

$animation "sneak_90r" "drone_anims\sneak_90r.smd" {
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 3
	walkframe 59 LY
}

$animation "sneak_315l" "drone_anims\sneak_315l.smd" {
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 3
	walkframe 59 LX LY
}

$animation "sneak_315r" "drone_anims\sneak_315r.smd" {
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 3
	walkframe 59 LX LY
}

$animation "sneak_180" "drone_anims\sneak_180.smd" {
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 3
	walkframe 59 LX
}

$sequence "ref" {
	"drone_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 3
}

$sequence "pp_head" {
	"drone_anims\pp_head.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 4 4 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 4 4 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 4 4 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 4 4 target 3
}

$sequence "head_yaw" {
	"headLeft"
	"headCenter"
	"headRight"
	autoplay
	blend "head_yaw" -65 65
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "head_pitch" {
	"headDown"
	"headCenter"
	"headUp"
	autoplay
	blend "head_pitch" -35 35
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "pp_standing_head" {
	"drone_anims\pp_standing_head.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 4 4 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 4 4 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 4 4 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 4 4 target 3
}

$sequence "standing_head_yaw" {
	"standing_headLeft"
	"standing_headCenter"
	"standing_headRight"
	autoplay
	blend "standing_head_yaw" -65 65
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "standing_head_pitch" {
	"standing_headDown"
	"standing_headCenter"
	"standing_headUp"
	autoplay
	blend "standing_head_pitch" -35 35
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "pp_standing_body" {
	"drone_anims\pp_standing_body.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 4 4 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 4 4 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 4 4 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 4 4 target 3
}

$sequence "standing_body_yaw" {
	"standing_bodyLeft"
	"standing_bodyCenter"
	"standing_bodyRight"
	autoplay
	blend "standing_body_yaw" -65 65
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "standing_body_pitch" {
	"standing_bodyDown"
	"standing_bodyCenter"
	"standing_bodyUp"
	autoplay
	blend "standing_body_pitch" -35 35
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "idle" {
	"drone_anims\idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 150 150 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 150 150 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 150 150 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 150 150 target 3
}

$sequence "standing_idle" {
	"drone_anims\standing_idle.smd"
	activity "ACT_IDLE_ANGRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 50 50 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 50 50 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 50 50 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 50 50 target 3
}

$sequence "interaction" {
	"drone_anims\interaction.smd"
	activity "ACT_INTERACTION" 1
	{ event 1100 83 "interaction" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 138 138 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 138 138 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 138 138 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 138 138 target 3
}

$sequence "Constraints_idle" {
	"drone_anims\Constraints_idle.smd"
	activity "ACT_Constraints_idle" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 89 89 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 89 89 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 89 89 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 89 89 target 3
}

$sequence "Constraints_idle_02" {
	"drone_anims\Constraints_idle_02.smd"
	activity "ACT_Constraints_idle_02" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 89 89 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 89 89 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 89 89 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 89 89 target 3
}

$sequence "Constraints_idle_03" {
	"drone_anims\Constraints_idle_03.smd"
	activity "ACT_Constraints_idle_03" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 89 89 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 89 89 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 89 89 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 89 89 target 3
}

$sequence "Constraints_Release_Agressive" {
	"drone_anims\Constraints_Release_Agressive.smd"
	activity "ACT_Constraints_Release_Agressive" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 149 149 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 149 149 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 149 149 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 149 149 target 3 usesequence 
	walkframe 110 LX LY
	walkframe 114 LX LY
	walkframe 119 LX LY
	walkframe 124 LX LY
	walkframe 129 LX LY
	walkframe 134 LX LY
	walkframe 138 LX LY
	walkframe 143 LX LY
}

$sequence "Constraints_roar1" {
	"drone_anims\Constraints_roar1.smd"
	activity "ACT_Constraints_roar1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 179 179 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 179 179 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 179 179 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 179 179 target 3
}

$sequence "Constraints_roar2" {
	"drone_anims\Constraints_roar2.smd"
	activity "ACT_Constraints_roar2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 149 149 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 149 149 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 149 149 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 149 149 target 3
}

$sequence "Constraints_roar3" {
	"drone_anims\Constraints_roar3.smd"
	activity "ACT_Constraints_roar3" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 179 179 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 179 179 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 179 179 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 179 179 target 3
}

$sequence "climb_up" {
	"drone_anims\climb_up.smd"
	activity "ACT_CLIMB_UP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 3 usesequence 
	walkframe 29 LZ
}

$sequence "climb_down" {
	"drone_anims\climb_down.smd"
	activity "ACT_CLIMB_DOWN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 3 usesequence 
	walkframe 29 LZ
}

$sequence "climb_stop" {
	"drone_anims\climb_stop.smd"
	activity "ACT_CLIMB_DISMOUNT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 3 usesequence 
	walkframe 20 LX
}

$sequence "spit_standing" {
	"drone_anims\spit_standing.smd"
	{ event 1100 24 "spit" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 49 49 target 0
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 49 49 target 2
	weightlist "weights_standing_body_yaw"
}

$sequence "90_left" {
	"drone_anims\90_left.smd"
	"drone_anims\90_left_2.smd"
	activity "ACT_90_LEFT" 1
	blend "standing" 0 1
	blendwidth 2
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 18 18 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 18 18 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 18 18 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 18 18 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
}

$sequence "90_right" {
	"drone_anims\90_right.smd"
	"drone_anims\90_right_2.smd"
	activity "ACT_90_RIGHT" 1
	blend "standing" 0 1
	blendwidth 2
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 18 18 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 18 18 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 18 18 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 18 18 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
}

$sequence "180" {
	"drone_anims\180.smd"
	activity "ACT_180" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 24 LX LY
	walkframe 25 LX LY
	walkframe 26 LX LY
}

$sequence "180_left" {
	"drone_anims\180_left.smd"
	activity "ACT_180_ALEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 24 LX LY
	walkframe 25 LX LY
	walkframe 26 LX LY
}

$sequence "180_onSpot" {
	"drone_anims\180_onSpot.smd"
	"drone_anims\180_onSpot_2.smd"
	activity "ACT_180_LEFT" 1
	blend "standing" 0 1
	blendwidth 2
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 24 LX LY
	walkframe 25 LX LY
	walkframe 26 LX LY
}

$sequence "180_onSpot_left" {
	"drone_anims\180_onSpot_left.smd"
	activity "ACT_180_ONSPOT_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 24 LX LY
	walkframe 25 LX LY
	walkframe 26 LX LY
}

$sequence "HeadStab_PulseRifle" {
	"drone_anims\HeadStab_PulseRifle.smd"
	activity "ACT_HEADSTAB_PULSERIFLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 18 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 31 LX LY
	walkframe 33 LX LY
	walkframe 36 LX LY
	walkframe 38 LX LY
	walkframe 40 LX LY
}

$sequence "HeadStab_PulseRifle_countered" {
	"drone_anims\HeadStab_PulseRifle_countered.smd"
	activity "ACT_HEADSTAB_PULSERIFLE_COUNTERED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 15 LX LY
	walkframe 19 LX LY
	walkframe 23 LX LY
	walkframe 27 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 42 LX LY
	walkframe 46 LX LY
	walkframe 50 LX LY
	walkframe 53 LX LY
	walkframe 57 LX LY
	walkframe 60 LX LY
}

$sequence "HeadStab_PulseRifle_death" {
	"drone_anims\HeadStab_PulseRifle_death.smd"
	activity "ACT_HEADSTAB_PULSERIFLE_DEATH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 50 50 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 50 50 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 50 50 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 50 50 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 6 LX LY
	walkframe 10 LX LY
	walkframe 13 LX LY
	walkframe 16 LX LY
	walkframe 19 LX LY
	walkframe 22 LX LY
	walkframe 26 LX LY
	walkframe 29 LX LY
	walkframe 32 LX LY
	walkframe 35 LX LY
	walkframe 38 LX LY
	walkframe 41 LX LY
	walkframe 45 LX LY
	walkframe 48 LX LY
	walkframe 50 LX LY
}

$sequence "HeadStab_Smartgun" {
	"drone_anims\HeadStab_Smartgun.smd"
	activity "ACT_HEADSTAB_SMARTGUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 18 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 31 LX LY
	walkframe 33 LX LY
	walkframe 36 LX LY
	walkframe 38 LX LY
	walkframe 40 LX LY
}

$sequence "HeadStab_Smartgun_countered" {
	"drone_anims\HeadStab_Smartgun_countered.smd"
	activity "ACT_HEADSTAB_SMARTGUN_COUNTERED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 15 LX LY
	walkframe 19 LX LY
	walkframe 23 LX LY
	walkframe 27 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 42 LX LY
	walkframe 46 LX LY
	walkframe 50 LX LY
	walkframe 53 LX LY
	walkframe 57 LX LY
	walkframe 60 LX LY
}

$sequence "HeadStab_Smartgun_death" {
	"drone_anims\HeadStab_Smartgun_death.smd"
	activity "ACT_HEADSTAB_SMARTGUN_DEATH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 53 53 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 53 53 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 53 53 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 53 53 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 7 LX LY
	walkframe 10 LX LY
	walkframe 14 LX LY
	walkframe 17 LX LY
	walkframe 20 LX LY
	walkframe 24 LX LY
	walkframe 27 LX LY
	walkframe 30 LX LY
	walkframe 34 LX LY
	walkframe 37 LX LY
	walkframe 41 LX LY
	walkframe 44 LX LY
	walkframe 47 LX LY
	walkframe 51 LX LY
	walkframe 53 LX LY
}

$sequence "MP_tail_stab" {
	"drone_anims\MP_tail_stab.smd"
	activity "ACT_MP_TAIL_STAB" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 5 5 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 5 5 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 5 5 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 5 5 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
}

$sequence "MP_tail_stab_idle" {
	"drone_anims\MP_tail_stab_idle.smd"
	activity "ACT_MP_TAIL_STAB_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 45 45 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 45 45 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 45 45 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 45 45 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 6 LX LY
	walkframe 9 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 17 LX LY
	walkframe 20 LX LY
	walkframe 23 LX LY
	walkframe 26 LX LY
	walkframe 29 LX LY
	walkframe 32 LX LY
	walkframe 35 LX LY
	walkframe 37 LX LY
	walkframe 40 LX LY
	walkframe 43 LX LY
	walkframe 45 LX LY
}

$sequence "MP_tail_stab_ready" {
	"drone_anims\MP_tail_stab_ready.smd"
	activity "ACT_MP_TAIL_STAB_READY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
	walkframe 25 LX LY
}

$sequence "MP_tail_stab_return" {
	"drone_anims\MP_tail_stab_return.smd"
	activity "ACT_MP_TAIL_STAB_RETURN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
	walkframe 25 LX LY
}

$sequence "Stand_Defenseless_long_back" {
	"drone_anims\Stand_Defenseless_long_back.smd"
	activity "ACT_STAND_DEFENSELESS_LONG_BACK" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 65 65 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 65 65 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 65 65 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 65 65 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 12 LX LY
	walkframe 17 LX LY
	walkframe 21 LX LY
	walkframe 25 LX LY
	walkframe 29 LX LY
	walkframe 33 LX LY
	walkframe 37 LX LY
	walkframe 41 LX LY
	walkframe 45 LX LY
	walkframe 50 LX LY
	walkframe 54 LX LY
	walkframe 58 LX LY
	walkframe 62 LX LY
	walkframe 65 LX LY
}

$sequence "Stand_idle_2nd_melee_flinch_BL" {
	"drone_anims\Stand_idle_2nd_melee_flinch_BL.smd"
	activity "ACT_STAND_IDLE_2ND_MELEE_FLINCH_BL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
}

$sequence "Stand_idle_2nd_melee_flinch_BR" {
	"drone_anims\Stand_idle_2nd_melee_flinch_BR.smd"
	activity "ACT_STAND_IDLE_2ND_MELEE_FLINCH_BR" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
}

$sequence "Stand_knockdown_long_back" {
	"drone_anims\Stand_knockdown_long_back.smd"
	activity "ACT_STAND_KNOCKDOWN_LONG_BACK" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 115 115 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 115 115 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 115 115 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 115 115 target 3 usesequence 
	walkframe 7 LX LY
	walkframe 15 LX LY
	walkframe 22 LX LY
	walkframe 29 LX LY
	walkframe 36 LX LY
	walkframe 44 LX LY
	walkframe 51 LX LY
	walkframe 58 LX LY
	walkframe 65 LX LY
	walkframe 73 LX LY
	walkframe 80 LX LY
	walkframe 87 LX LY
	walkframe 94 LX LY
	walkframe 102 LX LY
	walkframe 109 LX LY
	walkframe 115 LX LY
}

$sequence "ai_standing_hop_left" {
	"drone_anims\ai_standing_hop_left.smd"
	activity "ACT_AI_STANDING_HOP_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 29 LX LY
}

$sequence "ai_standing_hop_right" {
	"drone_anims\ai_standing_hop_right.smd"
	activity "ACT_AI_STANDING_HOP_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 29 LX LY
}

$sequence "ai_standing_idle_to_crawl" {
	"drone_anims\ai_standing_idle_to_crawl.smd"
	activity "ACT_AI_STANDING_IDLE_TO_CRAWL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
}

$sequence "ai_standing_jump_90" {
	"drone_anims\ai_standing_jump_90.smd"
	activity "ACT_AI_STANDING_JUMP_90" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
}

$sequence "ai_standing_jump_90_left" {
	"drone_anims\ai_standing_jump_90_left.smd"
	activity "ACT_AI_STANDING_JUMP_90_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 28 28 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 28 28 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 28 28 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 28 28 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 24 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 28 LX LY
}

$sequence "ai_standing_jump_90_right" {
	"drone_anims\ai_standing_jump_90_right.smd"
	activity "ACT_AI_STANDING_JUMP_90_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 28 28 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 28 28 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 28 28 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 28 28 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 24 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 28 LX LY
}

$sequence "ai_standing_jump_down" {
	"drone_anims\ai_standing_jump_down.smd"
	activity "ACT_AI_STANDING_JUMP_DOWN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 43 43 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 43 43 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 43 43 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 43 43 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 14 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 22 LX LY
	walkframe 25 LX LY
	walkframe 28 LX LY
	walkframe 30 LX LY
	walkframe 33 LX LY
	walkframe 36 LX LY
	walkframe 39 LX LY
	walkframe 41 LX LY
	walkframe 43 LX LY
}

$sequence "ai_standing_jump_down_intoRun" {
	"drone_anims\ai_standing_jump_down_intoRun.smd"
	activity "ACT_AI_STANDING_JUMP_DOWN_INTORUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 32 LX LY
	walkframe 34 LX LY
	walkframe 35 LX LY
}

$sequence "ai_standing_jump_fwd" {
	"drone_anims\ai_standing_jump_fwd.smd"
	activity "ACT_AI_STANDING_JUMP_FWD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 32 LX LY
	walkframe 34 LX LY
	walkframe 35 LX LY
}

$sequence "ai_standing_jump_fwd_intoRun" {
	"drone_anims\ai_standing_jump_fwd_intoRun.smd"
	activity "ACT_AI_STANDING_JUMP_FWD_INTORUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 32 LX LY
	walkframe 34 LX LY
	walkframe 35 LX LY
}

$sequence "ai_standing_jump_up" {
	"drone_anims\ai_standing_jump_up.smd"
	activity "ACT_AI_STANDING_JUMP_UP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 32 LX LY
	walkframe 34 LX LY
	walkframe 35 LX LY
}

$sequence "ai_standing_jump_up_intoRun" {
	"drone_anims\ai_standing_jump_up_intoRun.smd"
	activity "ACT_AI_STANDING_JUMP_UP_INTORUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 32 LX LY
	walkframe 34 LX LY
	walkframe 35 LX LY
}

$sequence "ai_standing_run" {
	"drone_anims\ai_standing_run.smd"
	activity "ACT_AI_STANDING_RUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
}

$sequence "ai_standing_turn_180_left" {
	"drone_anims\ai_standing_turn_180_left.smd"
	activity "ACT_AI_STANDING_TURN_180_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
	walkframe 25 LX LY
}

$sequence "ai_standing_turn_180_left_run" {
	"drone_anims\ai_standing_turn_180_left_run.smd"
	activity "ACT_AI_STANDING_TURN_180_LEFT_RUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 30 LX LY
}

$sequence "ai_standing_turn_180_right" {
	"drone_anims\ai_standing_turn_180_right.smd"
	activity "ACT_AI_STANDING_TURN_180_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
	walkframe 25 LX LY
}

$sequence "ai_standing_turn_180_right_run" {
	"drone_anims\ai_standing_turn_180_right_run.smd"
	activity "ACT_AI_STANDING_TURN_180_RIGHT_RUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 27 27 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 27 27 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 27 27 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 27 27 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 26 LX LY
	walkframe 27 LX LY
}

$sequence "ai_standing_turn_90_left" {
	"drone_anims\ai_standing_turn_90_left.smd"
	activity "ACT_AI_STANDING_TURN_90_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
}

$sequence "ai_standing_turn_90_left_run" {
	"drone_anims\ai_standing_turn_90_left_run.smd"
	activity "ACT_AI_STANDING_TURN_90_LEFT_RUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
}

$sequence "ai_standing_turn_90_right" {
	"drone_anims\ai_standing_turn_90_right.smd"
	activity "ACT_AI_STANDING_TURN_90_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
}

$sequence "ai_standing_turn_90_right_run" {
	"drone_anims\ai_standing_turn_90_right_run.smd"
	activity "ACT_AI_STANDING_TURN_90_RIGHT_RUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 17 17 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 17 17 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 17 17 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 17 17 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
}

$sequence "ai_standing_walk" {
	"drone_anims\ai_standing_walk.smd"
	activity "ACT_WALK" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 3 usesequence 
	walkframe 40 LX
}

$sequence "injured_crawl_onfire" {
	"drone_anims\injured_crawl_onfire.smd"
	activity "ACT_WALK_ON_FIRE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 3 usesequence 
	walkframe 59 LX
}

$sequence "crawl_injured_no_leftArm" {
	"drone_anims\crawl_injured_no_leftArm.smd"
	activity "ACT_WALK_CROUCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 3 usesequence 
	walkframe 29 LX
}

$sequence "crawl_injured_no_rightArm" {
	"drone_anims\crawl_injured_no_rightArm.smd"
	activity "ACT_WALK_CROUCH_AIM" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 3 usesequence 
	walkframe 29 LX
}

$sequence "crawl_injured_noLegs" {
	"drone_anims\crawl_injured_noLegs.smd"
	activity "ACT_RUN_CROUCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 89 89 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 89 89 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 89 89 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 89 89 target 3 usesequence 
	walkframe 89 LX
}

$sequence "all4s_claw_swipe_1" {
	"drone_anims\all4s_claw_swipe_1.smd"
	activity "ACT_ALL4S_CLAW_SWIPE_1" 1
	{ event 1100 7 "attack" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
}

$sequence "all4s_claw_swipe_1_return" {
	"drone_anims\all4s_claw_swipe_1_return.smd"
	activity "ACT_ALL4S_CLAW_SWIPE_1_RETURN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 8 8 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 8 8 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 8 8 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 8 8 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
}

$sequence "all4s_claw_swipe_2" {
	"drone_anims\all4s_claw_swipe_2.smd"
	activity "ACT_ALL4S_CLAW_SWIPE_2" 1
	{ event 1100 7 "attack" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
}

$sequence "all4s_claw_swipe_2_return" {
	"drone_anims\all4s_claw_swipe_2_return.smd"
	activity "ACT_ALL4S_CLAW_SWIPE_2_RETURN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 8 8 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 8 8 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 8 8 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 8 8 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
}

$sequence "all4s_spit_left" {
	"drone_anims\all4s_spit_left.smd"
	activity "ACT_ALL4S_SPIT_LEFT" 1
	{ event 1100 24 "spit" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 48 48 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 48 48 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 48 48 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 48 48 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 6 LX LY
	walkframe 9 LX LY
	walkframe 12 LX LY
	walkframe 15 LX LY
	walkframe 18 LX LY
	walkframe 21 LX LY
	walkframe 25 LX LY
	walkframe 28 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 37 LX LY
	walkframe 40 LX LY
	walkframe 43 LX LY
	walkframe 46 LX LY
	walkframe 48 LX LY
}

$sequence "all4s_spit_right" {
	"drone_anims\all4s_spit_right.smd"
	activity "ACT_ALL4S_SPIT_RIGHT" 1
	{ event 1100 24 "spit" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 48 48 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 48 48 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 48 48 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 48 48 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 6 LX LY
	walkframe 9 LX LY
	walkframe 12 LX LY
	walkframe 15 LX LY
	walkframe 18 LX LY
	walkframe 21 LX LY
	walkframe 25 LX LY
	walkframe 28 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 37 LX LY
	walkframe 40 LX LY
	walkframe 43 LX LY
	walkframe 46 LX LY
	walkframe 48 LX LY
}

$sequence "ceiling_to_floor_drop" {
	"drone_anims\ceiling_to_floor_drop.smd"
	activity "ACT_CEILING_TO_FLOOR_DROP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
}

$sequence "ceiling_to_floor_drop_2" {
	"drone_anims\ceiling_to_floor_drop_2.smd"
	activity "ACT_CEILING_TO_FLOOR_DROP_2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
}

$sequence "ceiling_to_floor_drop_pose" {
	"drone_anims\ceiling_to_floor_drop_pose.smd"
	activity "ACT_CEILING_TO_FLOOR_DROP_POSE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 5 5 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 5 5 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 5 5 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 5 5 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
}

$sequence "ceiling_to_floor_drop_pose_2" {
	"drone_anims\ceiling_to_floor_drop_pose_2.smd"
	activity "ACT_GLIDE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 3
}

$sequence "ceiling_to_floor_land" {
	"drone_anims\ceiling_to_floor_land.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 12 12 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 12 12 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 12 12 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 12 12 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
}

$sequence "claw_swipe_left_high" {
	"drone_anims\claw_swipe_left_high.smd"
	activity "ACT_CLAW_SWIPE_LEFT_HIGH" 1
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@claw_swipe_left_high_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_standing_body_yaw"
}

$sequence "claw_swipe_left_high_return" {
	"drone_anims\claw_swipe_left_high_return.smd"
	activity "ACT_CLAW_SWIPE_LEFT_HIGH_RETURN" 1
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@claw_swipe_left_high_return_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_standing_body_yaw"
}

$sequence "claw_swipe_left_low" {
	"drone_anims\claw_swipe_left_low.smd"
	activity "ACT_CLAW_SWIPE_LEFT_LOW" 1
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@claw_swipe_left_low_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_standing_body_yaw"
}

$sequence "claw_swipe_left_low_return" {
	"drone_anims\claw_swipe_left_low_return.smd"
	activity "ACT_CLAW_SWIPE_LEFT_LOW_RETURN" 1
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@claw_swipe_left_low_return_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_standing_body_yaw"
}

$sequence "claw_swipe_left_mid" {
	"drone_anims\claw_swipe_left_mid.smd"
	activity "ACT_CLAW_SWIPE_LEFT_MID" 1
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@claw_swipe_left_mid_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_standing_body_yaw"
}

$sequence "claw_swipe_left_mid_return" {
	"drone_anims\claw_swipe_left_mid_return.smd"
	activity "ACT_CLAW_SWIPE_LEFT_MID_RETURN" 1
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@claw_swipe_left_mid_return_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_standing_body_yaw"
}

$sequence "claw_swipe_right_high" {
	"drone_anims\claw_swipe_right_high.smd"
	activity "ACT_CLAW_SWIPE_RIGHT_HIGH" 1
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@claw_swipe_right_high_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_standing_body_yaw"
}

$sequence "claw_swipe_right_high_return" {
	"drone_anims\claw_swipe_right_high_return.smd"
	activity "ACT_CLAW_SWIPE_RIGHT_HIGH_RETURN" 1
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@claw_swipe_right_high_return_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_standing_body_yaw"
}

$sequence "claw_swipe_right_low" {
	"drone_anims\claw_swipe_right_low.smd"
	activity "ACT_CLAW_SWIPE_RIGHT_LOW" 1
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@claw_swipe_right_low_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_standing_body_yaw"
}

$sequence "claw_swipe_right_low_return" {
	"drone_anims\claw_swipe_right_low_return.smd"
	activity "ACT_CLAW_SWIPE_RIGHT_LOW_RETURN" 1
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@claw_swipe_right_low_return_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_standing_body_yaw"
}

$sequence "claw_swipe_right_mid" {
	"drone_anims\claw_swipe_right_mid.smd"
	activity "ACT_CLAW_SWIPE_RIGHT_MID" 1
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@claw_swipe_right_mid_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_standing_body_yaw"
}

$sequence "claw_swipe_right_mid_return" {
	"drone_anims\claw_swipe_right_mid_return.smd"
	activity "ACT_CLAW_SWIPE_RIGHT_MID_RETURN" 1
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@claw_swipe_right_mid_return_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_standing_body_yaw"
}

$sequence "crawl_fast" {
	"crawlf_b"
	"crawlf_45br"
	"crawlf_r"
	"crawlf_45r"
	"crawlf_f"
	"crawlf_45l"
	"crawlf_l"
	"crawlf_45bl"
	"crawlf_b"
	activity "ACT_RUN_RELAXED" 1
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2
}

$sequence "crawl_burst" {
	"crawlf_b"
	"crawlf_45br"
	"crawlf_r"
	"crawlf_45r"
	"crawl_burst_f"
	"crawlf_45l"
	"crawlf_l"
	"crawlf_45bl"
	"crawlf_b"
	activity "ACT_SPRINT" 1
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2
}

$sequence "crawl_claw_attack_left" {
	"drone_anims\crawl_claw_attack_left.smd"
	activity "ACT_CRAWL_CLAW_ATTACK_LEFT" 1
	{ event 1100 22 "attack" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 27 27 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 27 27 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 27 27 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 27 27 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 26 LX LY
	walkframe 27 LX LY
}

$sequence "crawl_claw_attack_left_fall" {
	"drone_anims\crawl_claw_attack_left_fall.smd"
	activity "ACT_CRAWL_CLAW_ATTACK_LEFT_FALL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 114 114 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 114 114 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 114 114 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 114 114 target 3 usesequence 
	walkframe 7 LX LY
	walkframe 14 LX LY
	walkframe 22 LX LY
	walkframe 29 LX LY
	walkframe 36 LX LY
	walkframe 43 LX LY
	walkframe 50 LX LY
	walkframe 58 LX LY
	walkframe 65 LX LY
	walkframe 72 LX LY
	walkframe 79 LX LY
	walkframe 86 LX LY
	walkframe 93 LX LY
	walkframe 101 LX LY
	walkframe 108 LX LY
	walkframe 114 LX LY
}

$sequence "crawl_claw_attack_left_land" {
	"drone_anims\crawl_claw_attack_left_land.smd"
	activity "ACT_CRAWL_CLAW_ATTACK_LEFT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
}

$sequence "crawl_claw_attack_right" {
	"drone_anims\crawl_claw_attack_right.smd"
	activity "ACT_CRAWL_CLAW_ATTACK_RIGHT" 1
	{ event 1100 22 "attack" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 27 27 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 27 27 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 27 27 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 27 27 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 26 LX LY
	walkframe 27 LX LY
}

$sequence "crawl_claw_attack_right_land" {
	"drone_anims\crawl_claw_attack_right_land.smd"
	activity "ACT_CRAWL_CLAW_ATTACK_RIGHT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
}

$sequence "crawl_hop_wall_left" {
	"drone_anims\crawl_hop_wall_left.smd"
	activity "ACT_CRAWL_HOP_WALL_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 21 21 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 21 21 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 21 21 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 21 21 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
}

$sequence "crawl_hop_wall_right" {
	"drone_anims\crawl_hop_wall_right.smd"
	activity "ACT_CRAWL_HOP_WALL_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 21 21 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 21 21 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 21 21 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 21 21 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
}

$sequence "crawl_pause" {
	"drone_anims\crawl_pause.smd"
	activity "ACT_CRAWL_PAUSE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 48 48 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 48 48 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 48 48 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 48 48 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 6 LX LY
	walkframe 9 LX LY
	walkframe 12 LX LY
	walkframe 15 LX LY
	walkframe 18 LX LY
	walkframe 21 LX LY
	walkframe 25 LX LY
	walkframe 28 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 37 LX LY
	walkframe 40 LX LY
	walkframe 43 LX LY
	walkframe 46 LX LY
	walkframe 48 LX LY
}

$sequence "crawl_sidestep_left" {
	"drone_anims\crawl_sidestep_left.smd"
	activity "ACT_CRAWL_SIDESTEP_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
}

$sequence "crawl_sidestep_right" {
	"drone_anims\crawl_sidestep_right.smd"
	activity "ACT_CRAWL_SIDESTEP_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
}

$sequence "crawl_stand_attack_left" {
	"drone_anims\crawl_stand_attack_left.smd"
	activity "ACT_CRAWL_STAND_ATTACK_LEFT" 1
	{ event 1100 29 "attack" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 18 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 31 LX LY
	walkframe 33 LX LY
	walkframe 36 LX LY
	walkframe 38 LX LY
	walkframe 40 LX LY
}

$sequence "crawl_stand_attack_left_countered" {
	"drone_anims\crawl_stand_attack_left_countered.smd"
	activity "ACT_CRAWL_STAND_ATTACK_LEFT_COUNTERED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 15 LX LY
	walkframe 19 LX LY
	walkframe 23 LX LY
	walkframe 26 LX LY
	walkframe 30 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 41 LX LY
	walkframe 45 LX LY
	walkframe 49 LX LY
	walkframe 53 LX LY
	walkframe 56 LX LY
	walkframe 59 LX LY
}

$sequence "crawl_stand_attack_left_end" {
	"drone_anims\crawl_stand_attack_left_end.smd"
	activity "ACT_CRAWL_STAND_ATTACK_LEFT_END" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
}

$sequence "crawl_stand_attack_left_loop" {
	"drone_anims\crawl_stand_attack_left_loop.smd"
	activity "ACT_CRAWL_STAND_ATTACK_LEFT_LOOP" 1
	{ event 1100 4 "attack" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
}

$sequence "crawl_stand_attack_left_loop_move" {
	"drone_anims\crawl_stand_attack_left_loop_move.smd"
	activity "ACT_CRAWL_STAND_ATTACK_LEFT_LOOP_MOVE" 1
	{ event 1100 4 "attack" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
}

$sequence "crawl_stand_attack_left_loop_variant1" {
	"drone_anims\crawl_stand_attack_left_loop_variant1.smd"
	activity "ACT_CRAWL_STAND_ATTACK_LEFT_LOOP_VARIANT1" 1
	{ event 1100 16 "attack_mouth" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 36 36 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 36 36 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 36 36 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 36 36 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 28 LX LY
	walkframe 30 LX LY
	walkframe 32 LX LY
	walkframe 35 LX LY
	walkframe 36 LX LY
}

$sequence "crawl_stand_attack_left_loop_variant1_move" {
	"drone_anims\crawl_stand_attack_left_loop_variant1_move.smd"
	activity "ACT_CRAWL_STAND_ATTACK_LEFT_LOOP_VARIANT1_MOVE" 1
	{ event 1100 16 "attack_mouth" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 36 36 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 36 36 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 36 36 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 36 36 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 28 LX LY
	walkframe 30 LX LY
	walkframe 32 LX LY
	walkframe 35 LX LY
	walkframe 36 LX LY
}

$sequence "crawl_stand_attack_left_medium_variant" {
	"drone_anims\crawl_stand_attack_left_medium_variant.smd"
	activity "ACT_CRAWL_STAND_ATTACK_LEFT_MEDIUM_VARIANT" 1
	{ event 1100 27 "attack" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 38 38 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 38 38 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 38 38 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 38 38 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 24 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 32 LX LY
	walkframe 34 LX LY
	walkframe 37 LX LY
	walkframe 38 LX LY
}

$sequence "crawl_stand_attack_left_variant1" {
	"drone_anims\crawl_stand_attack_left_variant1.smd"
	activity "ACT_CRAWL_STAND_ATTACK_LEFT_VARIANT1" 1
	{ event 1100 28 "attack" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 44 44 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 44 44 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 44 44 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 44 44 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 14 LX LY
	walkframe 17 LX LY
	walkframe 20 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 28 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 37 LX LY
	walkframe 39 LX LY
	walkframe 42 LX LY
	walkframe 44 LX LY
}

$sequence "crawl_stand_attack_right" {
	"drone_anims\crawl_stand_attack_right.smd"
	activity "ACT_CRAWL_STAND_ATTACK_RIGHT" 1
	{ event 1100 29 "attack" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 18 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 31 LX LY
	walkframe 33 LX LY
	walkframe 36 LX LY
	walkframe 38 LX LY
	walkframe 40 LX LY
}

$sequence "crawl_stand_attack_right_countered" {
	"drone_anims\crawl_stand_attack_right_countered.smd"
	activity "ACT_CRAWL_STAND_ATTACK_RIGHT_COUNTERED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 15 LX LY
	walkframe 19 LX LY
	walkframe 23 LX LY
	walkframe 26 LX LY
	walkframe 30 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 41 LX LY
	walkframe 45 LX LY
	walkframe 49 LX LY
	walkframe 53 LX LY
	walkframe 56 LX LY
	walkframe 59 LX LY
}

$sequence "crawl_stand_attack_right_end" {
	"drone_anims\crawl_stand_attack_right_end.smd"
	activity "ACT_CRAWL_STAND_ATTACK_RIGHT_END" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 22 22 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 22 22 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 22 22 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 22 22 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
}

$sequence "crawl_stand_attack_right_loop" {
	"drone_anims\crawl_stand_attack_right_loop.smd"
	activity "ACT_CRAWL_STAND_ATTACK_RIGHT_LOOP" 1
	{ event 1100 4 "attack" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
}

$sequence "crawl_stand_attack_right_loop_move" {
	"drone_anims\crawl_stand_attack_right_loop_move.smd"
	activity "ACT_CRAWL_STAND_ATTACK_RIGHT_LOOP_MOVE" 1
	{ event 1100 4 "attack" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
}

$sequence "crawl_stand_attack_right_loop_variant1" {
	"drone_anims\crawl_stand_attack_right_loop_variant1.smd"
	activity "ACT_CRAWL_STAND_ATTACK_RIGHT_LOOP_VARIANT1" 1
	{ event 1100 16 "attack_tail" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 24 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 30 LX LY
	walkframe 31 LX LY
}

$sequence "crawl_stand_attack_right_loop_variant1_move" {
	"drone_anims\crawl_stand_attack_right_loop_variant1_move.smd"
	activity "ACT_CRAWL_STAND_ATTACK_RIGHT_LOOP_VARIANT1_MOVE" 1
	{ event 1100 16 "attack_tail" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 24 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 30 LX LY
	walkframe 31 LX LY
}

$sequence "crawl_stand_attack_right_medium_variant" {
	"drone_anims\crawl_stand_attack_right_medium_variant.smd"
	activity "ACT_CRAWL_STAND_ATTACK_RIGHT_MEDIUM_VARIANT" 1
	{ event 1100 27 "attack" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 38 38 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 38 38 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 38 38 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 38 38 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 24 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 32 LX LY
	walkframe 34 LX LY
	walkframe 37 LX LY
	walkframe 38 LX LY
}

$sequence "crawl_stand_attack_right_variant1" {
	"drone_anims\crawl_stand_attack_right_variant1.smd"
	activity "ACT_CRAWL_STAND_ATTACK_RIGHT_VARIANT1" 1
	{ event 1100 28 "attack" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 44 44 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 44 44 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 44 44 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 44 44 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 14 LX LY
	walkframe 17 LX LY
	walkframe 20 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 28 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 37 LX LY
	walkframe 39 LX LY
	walkframe 42 LX LY
	walkframe 44 LX LY
}

$sequence "crawl_stop05m" {
	"drone_anims\crawl_stop05m.smd"
	activity "ACT_CRAWL_STOP05M" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 13 13 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 13 13 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 13 13 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 13 13 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
}

$sequence "crawl_stop05m_180_left" {
	"drone_anims\crawl_stop05m_180_left.smd"
	activity "ACT_CRAWL_STOP05M_180_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
}

$sequence "crawl_stop05m_180_right" {
	"drone_anims\crawl_stop05m_180_right.smd"
	activity "ACT_CRAWL_STOP05M_180_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
}

$sequence "crawl_stop05m_90_left" {
	"drone_anims\crawl_stop05m_90_left.smd"
	activity "ACT_CRAWL_STOP05M_90_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 13 13 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 13 13 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 13 13 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 13 13 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
}

$sequence "crawl_stop05m_90_right" {
	"drone_anims\crawl_stop05m_90_right.smd"
	activity "ACT_CRAWL_STOP05M_90_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 13 13 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 13 13 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 13 13 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 13 13 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
}

$sequence "crawl_stop0m" {
	"drone_anims\crawl_stop0m.smd"
	activity "ACT_CRAWL_STOP0M" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
}

$sequence "crawl_stop0m_quick" {
	"drone_anims\crawl_stop0m_quick.smd"
	activity "ACT_CRAWL_STOP0M_QUICK" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
}

$sequence "crawl_stop1m" {
	"drone_anims\crawl_stop1m.smd"
	activity "ACT_CRAWL_STOP1M" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
}

$sequence "crawl_stop1m_quick" {
	"drone_anims\crawl_stop1m_quick.smd"
	activity "ACT_CRAWL_STOP1M_QUICK" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 11 11 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 11 11 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 11 11 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 11 11 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
}

$sequence "crawl_stop2m" {
	"drone_anims\crawl_stop2m.smd"
	activity "ACT_CRAWL_STOP2M" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 11 11 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 11 11 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 11 11 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 11 11 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
}

$sequence "crawl_stop2m_180_left" {
	"drone_anims\crawl_stop2m_180_left.smd"
	activity "ACT_CRAWL_STOP2M_180_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
}

$sequence "crawl_stop2m_180_right" {
	"drone_anims\crawl_stop2m_180_right.smd"
	activity "ACT_CRAWL_STOP2M_180_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
}

$sequence "crawl_stop2m_90_left" {
	"drone_anims\crawl_stop2m_90_left.smd"
	activity "ACT_CRAWL_STOP2M_90_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 11 11 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 11 11 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 11 11 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 11 11 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
}

$sequence "crawl_stop2m_90_right" {
	"drone_anims\crawl_stop2m_90_right.smd"
	activity "ACT_CRAWL_STOP2M_90_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 11 11 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 11 11 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 11 11 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 11 11 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
}

$sequence "crawl_to_block" {
	"drone_anims\crawl_to_block.smd"
	activity "ACT_CRAWL_TO_BLOCK" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 34 34 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 34 34 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 34 34 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 34 34 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 24 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 31 LX LY
	walkframe 33 LX LY
	walkframe 34 LX LY
}

$sequence "crawl_to_block_medium" {
	"drone_anims\crawl_to_block_medium.smd"
	activity "ACT_CRAWL_TO_BLOCK_MEDIUM" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
}

$sequence "crawl_wall_claw_attack_left" {
	"drone_anims\crawl_wall_claw_attack_left.smd"
	activity "ACT_CRAWL_WALL_CLAW_ATTACK_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 11 11 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 11 11 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 11 11 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 11 11 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
}

$sequence "crawl_wall_claw_attack_left_countered" {
	"drone_anims\crawl_wall_claw_attack_left_countered.smd"
	activity "ACT_CRAWL_WALL_CLAW_ATTACK_LEFT_COUNTERED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 122 122 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 122 122 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 122 122 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 122 122 target 3 usesequence 
	walkframe 8 LX LY
	walkframe 15 LX LY
	walkframe 23 LX LY
	walkframe 31 LX LY
	walkframe 38 LX LY
	walkframe 46 LX LY
	walkframe 54 LX LY
	walkframe 62 LX LY
	walkframe 69 LX LY
	walkframe 77 LX LY
	walkframe 85 LX LY
	walkframe 92 LX LY
	walkframe 100 LX LY
	walkframe 108 LX LY
	walkframe 115 LX LY
	walkframe 122 LX LY
}

$sequence "crawl_wall_claw_attack_left_land" {
	"drone_anims\crawl_wall_claw_attack_left_land.smd"
	activity "ACT_CRAWL_WALL_CLAW_ATTACK_LEFT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
}

$sequence "crawl_wall_claw_attack_right" {
	"drone_anims\crawl_wall_claw_attack_right.smd"
	activity "ACT_CRAWL_WALL_CLAW_ATTACK_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 11 11 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 11 11 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 11 11 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 11 11 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
}

$sequence "crawl_wall_claw_attack_right_countered" {
	"drone_anims\crawl_wall_claw_attack_right_countered.smd"
	activity "ACT_CRAWL_WALL_CLAW_ATTACK_RIGHT_COUNTERED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 121 121 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 121 121 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 121 121 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 121 121 target 3 usesequence 
	walkframe 8 LX LY
	walkframe 15 LX LY
	walkframe 23 LX LY
	walkframe 31 LX LY
	walkframe 38 LX LY
	walkframe 46 LX LY
	walkframe 53 LX LY
	walkframe 61 LX LY
	walkframe 69 LX LY
	walkframe 76 LX LY
	walkframe 84 LX LY
	walkframe 92 LX LY
	walkframe 99 LX LY
	walkframe 107 LX LY
	walkframe 114 LX LY
	walkframe 121 LX LY
}

$sequence "crawl_wall_claw_attack_right_land" {
	"drone_anims\crawl_wall_claw_attack_right_land.smd"
	activity "ACT_CRAWL_WALL_CLAW_ATTACK_RIGHT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
}

$sequence "dodge_left" {
	"drone_anims\dodge_left.smd"
	activity "ACT_DODGE_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
}

$sequence "dodge_right" {
	"drone_anims\dodge_right.smd"
	activity "ACT_DODGE_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
}

$sequence "falling_pose" {
	"drone_anims\falling_pose.smd"
	activity "ACT_falling_pose" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
}

$sequence "flinch_back_left" {
	"drone_anims\flinch_back_left.smd"
	activity "ACT_FLINCH_BACK_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 32 LX LY
	walkframe 34 LX LY
	walkframe 35 LX LY
}

$sequence "flinch_back_right" {
	"drone_anims\flinch_back_right.smd"
	activity "ACT_FLINCH_BACK_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 32 LX LY
	walkframe 34 LX LY
	walkframe 35 LX LY
}

$sequence "flinch_fwd_left" {
	"drone_anims\flinch_fwd_left.smd"
	activity "ACT_FLINCH_FWD_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 32 LX LY
	walkframe 34 LX LY
	walkframe 35 LX LY
}

$sequence "flinch_fwd_right" {
	"drone_anims\flinch_fwd_right.smd"
	activity "ACT_FLINCH_FWD_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 32 LX LY
	walkframe 34 LX LY
	walkframe 35 LX LY
}

$sequence "floor_to_ceiling_180_back_4m" {
	"drone_anims\floor_to_ceiling_180_back_4m.smd"
	activity "ACT_FLOOR_TO_CEILING_180_BACK_4M" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
}

$sequence "floor_to_ceiling_180_back_4m_land" {
	"drone_anims\floor_to_ceiling_180_back_4m_land.smd"
	activity "ACT_FLOOR_TO_CEILING_180_BACK_4M_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 17 17 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 17 17 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 17 17 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 17 17 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
}

$sequence "floor_to_ceiling_180_back_8m" {
	"drone_anims\floor_to_ceiling_180_back_8m.smd"
	activity "ACT_FLOOR_TO_CEILING_180_BACK_8M" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
}

$sequence "floor_to_ceiling_180_back_8m_land" {
	"drone_anims\floor_to_ceiling_180_back_8m_land.smd"
	activity "ACT_FLOOR_TO_CEILING_180_BACK_8M_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 22 22 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 22 22 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 22 22 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 22 22 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
}

$sequence "floor_to_ceiling_180_left_4m" {
	"drone_anims\floor_to_ceiling_180_left_4m.smd"
	activity "ACT_FLOOR_TO_CEILING_180_LEFT_4M" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 12 12 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 12 12 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 12 12 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 12 12 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
}

$sequence "floor_to_ceiling_180_left_4m_land" {
	"drone_anims\floor_to_ceiling_180_left_4m_land.smd"
	activity "ACT_FLOOR_TO_CEILING_180_LEFT_4M_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
}

$sequence "floor_to_ceiling_180_left_8m" {
	"drone_anims\floor_to_ceiling_180_left_8m.smd"
	activity "ACT_FLOOR_TO_CEILING_180_LEFT_8M" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 17 17 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 17 17 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 17 17 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 17 17 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
}

$sequence "floor_to_ceiling_180_left_8m_land" {
	"drone_anims\floor_to_ceiling_180_left_8m_land.smd"
	activity "ACT_FLOOR_TO_CEILING_180_LEFT_8M_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 19 19 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 19 19 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 19 19 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 19 19 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 19 LX LY
}

$sequence "floor_to_ceiling_180_right_4m" {
	"drone_anims\floor_to_ceiling_180_right_4m.smd"
	activity "ACT_FLOOR_TO_CEILING_180_RIGHT_4M" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 12 12 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 12 12 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 12 12 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 12 12 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
}

$sequence "floor_to_ceiling_180_right_4m_land" {
	"drone_anims\floor_to_ceiling_180_right_4m_land.smd"
	activity "ACT_FLOOR_TO_CEILING_180_RIGHT_4M_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 15 15 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
}

$sequence "floor_to_ceiling_180_right_8m" {
	"drone_anims\floor_to_ceiling_180_right_8m.smd"
	activity "ACT_FLOOR_TO_CEILING_180_RIGHT_8M" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 17 17 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 17 17 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 17 17 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 17 17 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
}

$sequence "floor_to_ceiling_180_right_8m_land" {
	"drone_anims\floor_to_ceiling_180_right_8m_land.smd"
	activity "ACT_FLOOR_TO_CEILING_180_RIGHT_8M_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 19 19 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 19 19 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 19 19 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 19 19 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 19 LX LY
}

$sequence "floor_to_wall" {
	"drone_anims\floor_to_wall.smd"
	activity "ACT_FLOOR_TO_WALL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
}

$sequence "floor_to_wall_22_5" {
	"drone_anims\floor_to_wall_22_5.smd"
	activity "ACT_FLOOR_TO_WALL_22_5" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 24 LX LY
	walkframe 25 LX LY
	walkframe 26 LX LY
}

$sequence "floor_to_wall_22_5_fromStand" {
	"drone_anims\floor_to_wall_22_5_fromStand.smd"
	activity "ACT_FLOOR_TO_WALL_22_5_FROMSTAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 24 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 30 LX LY
	walkframe 31 LX LY
}

$sequence "floor_to_wall_45" {
	"drone_anims\floor_to_wall_45.smd"
	activity "ACT_FLOOR_TO_WALL_45" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 24 LX LY
	walkframe 25 LX LY
	walkframe 26 LX LY
}

$sequence "floor_to_wall_45_fromStand" {
	"drone_anims\floor_to_wall_45_fromStand.smd"
	activity "ACT_FLOOR_TO_WALL_45_FROMSTAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 24 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 30 LX LY
	walkframe 31 LX LY
}

$sequence "floor_to_wall_67_5" {
	"drone_anims\floor_to_wall_67_5.smd"
	activity "ACT_FLOOR_TO_WALL_67_5" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 26 26 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 24 LX LY
	walkframe 25 LX LY
	walkframe 26 LX LY
}

$sequence "floor_to_wall_67_5_fromStand" {
	"drone_anims\floor_to_wall_67_5_fromStand.smd"
	activity "ACT_FLOOR_TO_WALL_67_5_FROMSTAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 24 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 30 LX LY
	walkframe 31 LX LY
}

$sequence "floor_to_wall_med" {
	"drone_anims\floor_to_wall_med.smd"
	activity "ACT_FLOOR_TO_WALL_MED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 12 12 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 12 12 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 12 12 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 12 12 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
}

$sequence "floor_to_wall_med_into_med" {
	"drone_anims\floor_to_wall_med_into_med.smd"
	activity "ACT_FLOOR_TO_WALL_MED_INTO_MED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 7 7 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 7 7 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 7 7 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 7 7 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
}

$sequence "floor_to_wall_short" {
	"drone_anims\floor_to_wall_short.smd"
	activity "ACT_FLOOR_TO_WALL_SHORT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
}

$sequence "grab_fromWall" {
	"drone_anims\grab_fromWall.smd"
	activity "ACT_GRAB_FROMWALL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
}

$sequence "grapple_tail_stab_counter" {
	"drone_anims\grapple_tail_stab_counter.smd"
	activity "ACT_GRAPPLE_TAIL_STAB_COUNTER" 1
	{ event 1100 12 "trophyFX blood_pierce tail" }
	{ event 1100 12 "snd pierce_tail" }
	{ event 1100 35 "snd short_hiss" }
	{ event 1100 47 "snd remove_tail" }
	{ event 1100 48 "trophy ragdoll_target" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 86 86 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 86 86 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 86 86 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 86 86 target 3 usesequence 
	walkframe 5 LX LY
	walkframe 11 LX LY
	walkframe 16 LX LY
	walkframe 22 LX LY
	walkframe 27 LX LY
	walkframe 33 LX LY
	walkframe 38 LX LY
	walkframe 44 LX LY
	walkframe 49 LX LY
	walkframe 54 LX LY
	walkframe 60 LX LY
	walkframe 65 LX LY
	walkframe 71 LX LY
	walkframe 76 LX LY
	walkframe 82 LX LY
	walkframe 86 LX LY
}

$sequence "grapple_tail_stab_death" {
	"drone_anims\grapple_tail_stab_death.smd"
	activity "ACT_GRAPPLE_TAIL_STAB_DEATH" 1
	{ event 1100 10 "trophyFX blood_pierce tail" }
	{ event 1100 10 "snd pierce_tail" }
	{ event 1100 124 "snd short_hiss" }
	{ event 1100 129 "snd remove_tail" }
	{ event 1100 130 "trophy ragdoll_target" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 149 149 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 149 149 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 149 149 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 149 149 target 3 usesequence 
	walkframe 9 LX LY
	walkframe 19 LX LY
	walkframe 28 LX LY
	walkframe 38 LX LY
	walkframe 47 LX LY
	walkframe 56 LX LY
	walkframe 66 LX LY
	walkframe 75 LX LY
	walkframe 84 LX LY
	walkframe 94 LX LY
	walkframe 103 LX LY
	walkframe 113 LX LY
	walkframe 122 LX LY
	walkframe 131 LX LY
	walkframe 141 LX LY
	walkframe 149 LX LY
}

$sequence "grapple_tail_stab_grab" {
	"drone_anims\grapple_tail_stab_grab.smd"
	activity "ACT_GRAPPLE_TAIL_STAB_GRAB" 1
	{ event 1100 27 "snd grunt" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 15 LX LY
	walkframe 19 LX LY
	walkframe 23 LX LY
	walkframe 27 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 42 LX LY
	walkframe 46 LX LY
	walkframe 50 LX LY
	walkframe 53 LX LY
	walkframe 57 LX LY
	walkframe 60 LX LY
}

$sequence "headbite" {
	"drone_anims\headbite.smd"
	activity "ACT_HEADBITE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 15 LX LY
	walkframe 19 LX LY
	walkframe 23 LX LY
	walkframe 27 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 42 LX LY
	walkframe 46 LX LY
	walkframe 50 LX LY
	walkframe 53 LX LY
	walkframe 57 LX LY
	walkframe 60 LX LY
}

$sequence "headbite_2ndry" {
	"drone_anims\headbite_2ndry.smd"
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@headbite_2ndry_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "headbite_behind" {
	"drone_anims\headbite_behind.smd"
	activity "ACT_HEADBITE_BEHIND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 15 LX LY
	walkframe 19 LX LY
	walkframe 23 LX LY
	walkframe 27 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 42 LX LY
	walkframe 46 LX LY
	walkframe 50 LX LY
	walkframe 53 LX LY
	walkframe 57 LX LY
	walkframe 60 LX LY
}

$sequence "headbite_behind_countered" {
	"drone_anims\headbite_behind_countered.smd"
	activity "ACT_HEADBITE_BEHIND_COUNTERED" 1
	{ event 1100 5 "snd mouth" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 55 55 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 55 55 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 55 55 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 55 55 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 7 LX LY
	walkframe 11 LX LY
	walkframe 14 LX LY
	walkframe 18 LX LY
	walkframe 21 LX LY
	walkframe 25 LX LY
	walkframe 28 LX LY
	walkframe 32 LX LY
	walkframe 35 LX LY
	walkframe 39 LX LY
	walkframe 42 LX LY
	walkframe 46 LX LY
	walkframe 49 LX LY
	walkframe 53 LX LY
	walkframe 55 LX LY
}

$sequence "headbite_behind_kill" {
	"drone_anims\headbite_behind_kill.smd"
	activity "ACT_HEADBITE_BEHIND_KILL" 1
	{ event 1100 18 "trophyFX blood_mouth mouth" }
	{ event 1100 16 "snd mouth" }
	{ event 1100 66 "snd short_hiss" }
	{ event 1100 80 "trophy ragdoll_target" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 90 90 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 90 90 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 90 90 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 90 90 target 3 usesequence 
	walkframe 6 LX LY
	walkframe 11 LX LY
	walkframe 17 LX LY
	walkframe 23 LX LY
	walkframe 28 LX LY
	walkframe 34 LX LY
	walkframe 40 LX LY
	walkframe 46 LX LY
	walkframe 51 LX LY
	walkframe 57 LX LY
	walkframe 63 LX LY
	walkframe 68 LX LY
	walkframe 74 LX LY
	walkframe 80 LX LY
	walkframe 85 LX LY
	walkframe 90 LX LY
}

$sequence "headbite_behind_kill_slow" {
	"drone_anims\headbite_behind_kill_slow.smd"
	activity "ACT_HEADBITE_BEHIND_KILL_SLOW" 1
	{ event 1100 19 "trophyFX blood_mouth mouth" }
	{ event 1100 16 "snd mouth" }
	{ event 1100 85 "snd short_hiss" }
	{ event 1100 110 "trophy ragdoll_target" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 120 120 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 120 120 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 120 120 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 120 120 target 3 usesequence 
	walkframe 8 LX LY
	walkframe 15 LX LY
	walkframe 23 LX LY
	walkframe 30 LX LY
	walkframe 38 LX LY
	walkframe 45 LX LY
	walkframe 53 LX LY
	walkframe 61 LX LY
	walkframe 68 LX LY
	walkframe 76 LX LY
	walkframe 83 LX LY
	walkframe 91 LX LY
	walkframe 98 LX LY
	walkframe 106 LX LY
	walkframe 113 LX LY
	walkframe 120 LX LY
}

$sequence "headbite_behind_pred" {
	"drone_anims\headbite_behind_pred.smd"
	activity "ACT_HEADBITE_BEHIND_PRED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 15 LX LY
	walkframe 19 LX LY
	walkframe 23 LX LY
	walkframe 27 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 42 LX LY
	walkframe 46 LX LY
	walkframe 50 LX LY
	walkframe 53 LX LY
	walkframe 57 LX LY
	walkframe 60 LX LY
}

$sequence "headbite_behind_pred_countered" {
	"drone_anims\headbite_behind_pred_countered.smd"
	activity "ACT_HEADBITE_BEHIND_PRED_COUNTERED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 77 77 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 77 77 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 77 77 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 77 77 target 3 usesequence 
	walkframe 5 LX LY
	walkframe 10 LX LY
	walkframe 15 LX LY
	walkframe 20 LX LY
	walkframe 24 LX LY
	walkframe 29 LX LY
	walkframe 34 LX LY
	walkframe 39 LX LY
	walkframe 44 LX LY
	walkframe 49 LX LY
	walkframe 54 LX LY
	walkframe 59 LX LY
	walkframe 63 LX LY
	walkframe 68 LX LY
	walkframe 73 LX LY
	walkframe 77 LX LY
}

$sequence "headbite_behind_pred_kill" {
	"drone_anims\headbite_behind_pred_kill.smd"
	activity "ACT_HEADBITE_BEHIND_PRED_KILL" 1
	{ event 1100 64 "trophy ragdoll_target" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 90 90 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 90 90 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 90 90 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 90 90 target 3 usesequence 
	walkframe 6 LX LY
	walkframe 11 LX LY
	walkframe 17 LX LY
	walkframe 23 LX LY
	walkframe 28 LX LY
	walkframe 34 LX LY
	walkframe 40 LX LY
	walkframe 46 LX LY
	walkframe 51 LX LY
	walkframe 57 LX LY
	walkframe 63 LX LY
	walkframe 68 LX LY
	walkframe 74 LX LY
	walkframe 80 LX LY
	walkframe 85 LX LY
	walkframe 90 LX LY
}

$sequence "headbite_countered" {
	"drone_anims\headbite_countered.smd"
	activity "ACT_HEADBITE_COUNTERED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 18 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 31 LX LY
	walkframe 33 LX LY
	walkframe 36 LX LY
	walkframe 38 LX LY
	walkframe 40 LX LY
}

$sequence "headbite_grab" {
	"drone_anims\headbite_grab.smd"
	activity "ACT_HEADBITE_GRAB" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 30 LX LY
}

$sequence "headbite_kill" {
	"drone_anims\headbite_kill.smd"
	activity "ACT_HEADBITE_KILL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 90 90 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 90 90 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 90 90 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 90 90 target 3 usesequence 
	walkframe 6 LX LY
	walkframe 11 LX LY
	walkframe 17 LX LY
	walkframe 23 LX LY
	walkframe 28 LX LY
	walkframe 34 LX LY
	walkframe 40 LX LY
	walkframe 46 LX LY
	walkframe 51 LX LY
	walkframe 57 LX LY
	walkframe 63 LX LY
	walkframe 68 LX LY
	walkframe 74 LX LY
	walkframe 80 LX LY
	walkframe 85 LX LY
	walkframe 90 LX LY
}

$sequence "headbite_pred" {
	"drone_anims\headbite_pred.smd"
	activity "ACT_HEADBITE_PRED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 15 LX LY
	walkframe 19 LX LY
	walkframe 23 LX LY
	walkframe 27 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 42 LX LY
	walkframe 46 LX LY
	walkframe 50 LX LY
	walkframe 53 LX LY
	walkframe 57 LX LY
	walkframe 60 LX LY
}

$sequence "headbite_pred_countered" {
	"drone_anims\headbite_pred_countered.smd"
	activity "ACT_HEADBITE_PRED_COUNTERED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 30 LX LY
}

$sequence "headbite_pred_kill" {
	"drone_anims\headbite_pred_kill.smd"
	activity "ACT_HEADBITE_PRED_KILL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 3 usesequence 
	walkframe 5 LX LY
	walkframe 10 LX LY
	walkframe 14 LX LY
	walkframe 19 LX LY
	walkframe 24 LX LY
	walkframe 29 LX LY
	walkframe 33 LX LY
	walkframe 38 LX LY
	walkframe 43 LX LY
	walkframe 48 LX LY
	walkframe 52 LX LY
	walkframe 57 LX LY
	walkframe 62 LX LY
	walkframe 67 LX LY
	walkframe 71 LX LY
	walkframe 75 LX LY
}

$sequence "hiss_reaction" {
	"drone_anims\hiss_reaction.smd"
	activity "ACT_HISS_REACTION" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 50 50 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 50 50 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 50 50 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 50 50 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 6 LX LY
	walkframe 10 LX LY
	walkframe 13 LX LY
	walkframe 16 LX LY
	walkframe 19 LX LY
	walkframe 22 LX LY
	walkframe 26 LX LY
	walkframe 29 LX LY
	walkframe 32 LX LY
	walkframe 35 LX LY
	walkframe 38 LX LY
	walkframe 41 LX LY
	walkframe 45 LX LY
	walkframe 48 LX LY
	walkframe 50 LX LY
}

$sequence "hop_left" {
	"drone_anims\hop_left.smd"
	activity "ACT_HOP_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 29 LX LY
}

$sequence "hop_right" {
	"drone_anims\hop_right.smd"
	activity "ACT_HOP_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 29 LX LY
}

$sequence "idle_to_injured_crawl" {
	"drone_anims\idle_to_injured_crawl.smd"
	activity "ACT_IDLE_TO_INJURED_CRAWL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 30 LX LY
}

$sequence "injured_grapple_pred_two_arms" {
	"drone_anims\injured_grapple_pred_two_arms.smd"
	activity "ACT_INJURED_GRAPPLE_PRED_TWO_ARMS" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 47 47 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 47 47 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 47 47 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 47 47 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 6 LX LY
	walkframe 9 LX LY
	walkframe 12 LX LY
	walkframe 15 LX LY
	walkframe 18 LX LY
	walkframe 21 LX LY
	walkframe 24 LX LY
	walkframe 27 LX LY
	walkframe 30 LX LY
	walkframe 33 LX LY
	walkframe 36 LX LY
	walkframe 39 LX LY
	walkframe 42 LX LY
	walkframe 45 LX LY
	walkframe 47 LX LY
}

$sequence "injured_grapple_pred_two_arms_countered" {
	"drone_anims\injured_grapple_pred_two_arms_countered.smd"
	activity "ACT_INJURED_GRAPPLE_PRED_TWO_ARMS_COUNTERED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 62 62 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 62 62 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 62 62 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 62 62 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 12 LX LY
	walkframe 16 LX LY
	walkframe 20 LX LY
	walkframe 24 LX LY
	walkframe 28 LX LY
	walkframe 32 LX LY
	walkframe 35 LX LY
	walkframe 39 LX LY
	walkframe 43 LX LY
	walkframe 47 LX LY
	walkframe 51 LX LY
	walkframe 55 LX LY
	walkframe 59 LX LY
	walkframe 62 LX LY
}

$sequence "injured_grapple_pred_two_arms_kill" {
	"drone_anims\injured_grapple_pred_two_arms_kill.smd"
	activity "ACT_INJURED_GRAPPLE_PRED_TWO_ARMS_KILL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 170 170 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 170 170 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 170 170 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 170 170 target 3 usesequence 
	walkframe 11 LX LY
	walkframe 21 LX LY
	walkframe 32 LX LY
	walkframe 43 LX LY
	walkframe 53 LX LY
	walkframe 64 LX LY
	walkframe 75 LX LY
	walkframe 86 LX LY
	walkframe 96 LX LY
	walkframe 107 LX LY
	walkframe 118 LX LY
	walkframe 128 LX LY
	walkframe 139 LX LY
	walkframe 150 LX LY
	walkframe 160 LX LY
	walkframe 170 LX LY
}

$sequence "injured_grapple_two_arms" {
	"drone_anims\injured_grapple_two_arms.smd"
	activity "ACT_INJURED_GRAPPLE_TWO_ARMS" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 28 28 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 28 28 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 28 28 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 28 28 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 24 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 28 LX LY
}

$sequence "injured_grapple_two_arms_countered" {
	"drone_anims\injured_grapple_two_arms_countered.smd"
	activity "ACT_INJURED_GRAPPLE_TWO_ARMS_COUNTERED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 39 39 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 39 39 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 39 39 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 39 39 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 28 LX LY
	walkframe 30 LX LY
	walkframe 33 LX LY
	walkframe 35 LX LY
	walkframe 38 LX LY
	walkframe 39 LX LY
}

$sequence "injured_grapple_two_arms_kill" {
	"drone_anims\injured_grapple_two_arms_kill.smd"
	activity "ACT_INJURED_GRAPPLE_TWO_ARMS_KILL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 3 usesequence 
	walkframe 5 LX LY
	walkframe 10 LX LY
	walkframe 14 LX LY
	walkframe 19 LX LY
	walkframe 24 LX LY
	walkframe 29 LX LY
	walkframe 33 LX LY
	walkframe 38 LX LY
	walkframe 43 LX LY
	walkframe 48 LX LY
	walkframe 52 LX LY
	walkframe 57 LX LY
	walkframe 62 LX LY
	walkframe 67 LX LY
	walkframe 71 LX LY
	walkframe 75 LX LY
}

$sequence "jump_begin" {
	"drone_anims\jump_begin.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 29 LX LY
}

$sequence "jump_down" {
	"drone_anims\jump_down.smd"
	activity "ACT_JUMP_DOWN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
}

$sequence "jump_down_into_crawl" {
	"drone_anims\jump_down_into_crawl.smd"
	activity "ACT_JUMP_DOWN_INTO_CRAWL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 30 LX LY
}

$sequence "jump_fwd" {
	"drone_anims\jump_fwd.smd"
	activity "ACT_JUMP_FWD" 1
	{ event 1100 5 "jump_start" }
	{ event 1100 19 "jump_end" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
}

$sequence "jump_fwd_into_crawl" {
	"drone_anims\jump_fwd_into_crawl.smd"
	activity "ACT_JUMP_FWD_INTO_CRAWL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 30 LX LY
}

$sequence "jump_up" {
	"drone_anims\jump_up.smd"
	activity "ACT_JUMP_UP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
}

$sequence "jump_up_into_crawl" {
	"drone_anims\jump_up_into_crawl.smd"
	activity "ACT_JUMP_UP_INTO_CRAWL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
}

$sequence "knockdown_back" {
	"drone_anims\knockdown_back.smd"
	activity "ACT_KNOCKDOWN_BACK" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 3 usesequence 
	walkframe 5 LX LY
	walkframe 10 LX LY
	walkframe 14 LX LY
	walkframe 19 LX LY
	walkframe 24 LX LY
	walkframe 29 LX LY
	walkframe 33 LX LY
	walkframe 38 LX LY
	walkframe 43 LX LY
	walkframe 48 LX LY
	walkframe 52 LX LY
	walkframe 57 LX LY
	walkframe 62 LX LY
	walkframe 67 LX LY
	walkframe 71 LX LY
	walkframe 75 LX LY
}

$sequence "knockdown_forward" {
	"drone_anims\knockdown_forward.smd"
	activity "ACT_KNOCKDOWN_FORWARD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 3 usesequence 
	walkframe 5 LX LY
	walkframe 10 LX LY
	walkframe 14 LX LY
	walkframe 19 LX LY
	walkframe 24 LX LY
	walkframe 29 LX LY
	walkframe 33 LX LY
	walkframe 38 LX LY
	walkframe 43 LX LY
	walkframe 48 LX LY
	walkframe 52 LX LY
	walkframe 57 LX LY
	walkframe 62 LX LY
	walkframe 67 LX LY
	walkframe 71 LX LY
	walkframe 75 LX LY
}

$sequence "leap_attack_MarineHUD_countered" {
	"drone_anims\leap_attack_MarineHUD_countered.smd"
	activity "ACT_LEAP_ATTACK_MARINEHUD_COUNTERED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 3 usesequence 
	walkframe 6 LX LY
	walkframe 13 LX LY
	walkframe 19 LX LY
	walkframe 25 LX LY
	walkframe 32 LX LY
	walkframe 38 LX LY
	walkframe 44 LX LY
	walkframe 51 LX LY
	walkframe 57 LX LY
	walkframe 63 LX LY
	walkframe 69 LX LY
	walkframe 76 LX LY
	walkframe 82 LX LY
	walkframe 88 LX LY
	walkframe 95 LX LY
	walkframe 100 LX LY
}

$sequence "leap_attack_MarineHUD_grapple" {
	"drone_anims\leap_attack_MarineHUD_grapple.smd"
	activity "ACT_LEAP_ATTACK_MARINEHUD_GRAPPLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 85 85 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 85 85 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 85 85 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 85 85 target 3 usesequence 
	walkframe 5 LX LY
	walkframe 11 LX LY
	walkframe 16 LX LY
	walkframe 22 LX LY
	walkframe 27 LX LY
	walkframe 32 LX LY
	walkframe 38 LX LY
	walkframe 43 LX LY
	walkframe 48 LX LY
	walkframe 54 LX LY
	walkframe 59 LX LY
	walkframe 65 LX LY
	walkframe 70 LX LY
	walkframe 75 LX LY
	walkframe 81 LX LY
	walkframe 85 LX LY
}

$sequence "leap_attack_MarineHUD_jump_miss" {
	"drone_anims\leap_attack_MarineHUD_jump_miss.smd"
	activity "ACT_LEAP_ATTACK_MARINEHUD_JUMP_MISS" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
	walkframe 25 LX LY
}

$sequence "leap_attack_MarineHUD_kill" {
	"drone_anims\leap_attack_MarineHUD_kill.smd"
	activity "ACT_LEAP_ATTACK_MARINEHUD_KILL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 55 55 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 55 55 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 55 55 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 55 55 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 7 LX LY
	walkframe 11 LX LY
	walkframe 14 LX LY
	walkframe 18 LX LY
	walkframe 21 LX LY
	walkframe 25 LX LY
	walkframe 28 LX LY
	walkframe 32 LX LY
	walkframe 35 LX LY
	walkframe 39 LX LY
	walkframe 42 LX LY
	walkframe 46 LX LY
	walkframe 49 LX LY
	walkframe 53 LX LY
	walkframe 55 LX LY
}

$sequence "leap_attack_MarineHUD_running_jump" {
	"drone_anims\leap_attack_MarineHUD_running_jump.smd"
	activity "ACT_LEAP_ATTACK_MARINEHUD_RUNNING_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 23 23 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 23 23 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 23 23 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 23 23 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
}

$sequence "leap_attack_countered" {
	"drone_anims\leap_attack_countered.smd"
	activity "ACT_LEAP_ATTACK_COUNTERED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 15 LX LY
	walkframe 19 LX LY
	walkframe 23 LX LY
	walkframe 27 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 42 LX LY
	walkframe 46 LX LY
	walkframe 50 LX LY
	walkframe 53 LX LY
	walkframe 57 LX LY
	walkframe 60 LX LY
}

$sequence "leap_attack_countered_MP" {
	"drone_anims\leap_attack_countered_MP.smd"
	activity "ACT_LEAP_ATTACK_COUNTERED_MP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 21 21 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 21 21 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 21 21 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 21 21 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
}

$sequence "leap_attack_marine" {
	"drone_anims\leap_attack_marine.smd"
	activity "ACT_LEAP_ATTACK_MARINE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 24 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 30 LX LY
	walkframe 31 LX LY
}

$sequence "leap_attack_miss" {
	"drone_anims\leap_attack_miss.smd"
	activity "ACT_LEAP_ATTACK_MISS" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 48 48 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 48 48 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 48 48 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 48 48 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 6 LX LY
	walkframe 9 LX LY
	walkframe 12 LX LY
	walkframe 15 LX LY
	walkframe 18 LX LY
	walkframe 21 LX LY
	walkframe 25 LX LY
	walkframe 28 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 37 LX LY
	walkframe 40 LX LY
	walkframe 43 LX LY
	walkframe 46 LX LY
	walkframe 48 LX LY
}

$sequence "leap_long" {
	"drone_anims\leap_long.smd"
	activity "ACT_LEAP_LONG" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 28 28 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 28 28 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 28 28 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 28 28 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 24 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 28 LX LY
}

$sequence "leap_long_hit" {
	"drone_anims\leap_long_hit.smd"
	activity "ACT_LEAP_LONG_HIT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 18 18 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 18 18 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 18 18 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 18 18 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
}

$sequence "leap_long_land" {
	"drone_anims\leap_long_land.smd"
	activity "ACT_LEAP_LONG_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 18 18 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 18 18 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 18 18 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 18 18 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
}

$sequence "leap_medium" {
	"drone_anims\leap_medium.smd"
	activity "ACT_LEAP_MEDIUM" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
}

$sequence "leap_medium_hit" {
	"drone_anims\leap_medium_hit.smd"
	activity "ACT_LEAP_MEDIUM_HIT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
}

$sequence "leap_medium_land" {
	"drone_anims\leap_medium_land.smd"
	activity "ACT_LEAP_MEDIUM_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 14 14 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
}

$sequence "leap_pred_countered" {
	"drone_anims\leap_pred_countered.smd"
	activity "ACT_LEAP_PRED_COUNTERED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 3 usesequence 
	walkframe 6 LX LY
	walkframe 13 LX LY
	walkframe 19 LX LY
	walkframe 25 LX LY
	walkframe 32 LX LY
	walkframe 38 LX LY
	walkframe 44 LX LY
	walkframe 51 LX LY
	walkframe 57 LX LY
	walkframe 63 LX LY
	walkframe 69 LX LY
	walkframe 76 LX LY
	walkframe 82 LX LY
	walkframe 88 LX LY
	walkframe 95 LX LY
	walkframe 100 LX LY
}

$sequence "light_attack_left_mid" {
	"drone_anims\light_attack_left_mid.smd"
	activity "ACT_LIGHT_ATTACK_LEFT_MID" 1
	{ event 1100 5 "attack" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 0 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 2 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
	weightlist "weights_standing_body_yaw"
}

$sequence "light_attack_left_mid_blocked" {
	"drone_anims\light_attack_left_mid_blocked.smd"
	activity "ACT_LIGHT_ATTACK_LEFT_MID_BLOCKED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
}

$sequence "light_attack_left_mid_blocked_ai" {
	"drone_anims\light_attack_left_mid_blocked_ai.smd"
	activity "ACT_LIGHT_ATTACK_LEFT_MID_BLOCKED_AI" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 33 33 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 33 33 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 33 33 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 33 33 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 30 LX LY
	walkframe 32 LX LY
	walkframe 33 LX LY
}

$sequence "light_attack_left_mid_long" {
	"drone_anims\light_attack_left_mid_long.smd"
	activity "ACT_LIGHT_ATTACK_LEFT_MID_LONG" 1
	{ event 1100 20 "attack" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 39 39 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 39 39 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 39 39 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 39 39 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 28 LX LY
	walkframe 30 LX LY
	walkframe 33 LX LY
	walkframe 35 LX LY
	walkframe 38 LX LY
	walkframe 39 LX LY
}

$sequence "light_attack_left_mid_medium" {
	"drone_anims\light_attack_left_mid_medium.smd"
	activity "ACT_LIGHT_ATTACK_LEFT_MID_MEDIUM" 1
	{ event 1100 13 "attack" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 32 32 target 0
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 32 32 target 2
	weightlist "weights_standing_body_yaw"
}

$sequence "light_attack_left_to_crawl_fwd" {
	"drone_anims\light_attack_left_to_crawl_fwd.smd"
	activity "ACT_LIGHT_ATTACK_LEFT_TO_CRAWL_FWD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
}

$sequence "light_attack_left_to_run_fwd" {
	"drone_anims\light_attack_left_to_run_fwd.smd"
	activity "ACT_LIGHT_ATTACK_LEFT_TO_RUN_FWD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
}

$sequence "light_attack_right_mid" {
	"drone_anims\light_attack_right_mid.smd"
	activity "ACT_LIGHT_ATTACK_RIGHT_MID" 1
	{ event 1100 5 "attack" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 0 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 2 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
	weightlist "weights_standing_body_yaw"
}

$sequence "light_attack_right_mid_blocked" {
	"drone_anims\light_attack_right_mid_blocked.smd"
	activity "ACT_LIGHT_ATTACK_RIGHT_MID_BLOCKED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 24 24 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
}

$sequence "light_attack_right_mid_blocked_ai" {
	"drone_anims\light_attack_right_mid_blocked_ai.smd"
	activity "ACT_LIGHT_ATTACK_RIGHT_MID_BLOCKED_AI" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 33 33 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 33 33 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 33 33 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 33 33 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 30 LX LY
	walkframe 32 LX LY
	walkframe 33 LX LY
}

$sequence "light_attack_right_mid_long" {
	"drone_anims\light_attack_right_mid_long.smd"
	activity "ACT_LIGHT_ATTACK_RIGHT_MID_LONG" 1
	{ event 1100 20 "attack" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 39 39 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 39 39 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 39 39 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 39 39 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 28 LX LY
	walkframe 30 LX LY
	walkframe 33 LX LY
	walkframe 35 LX LY
	walkframe 38 LX LY
	walkframe 39 LX LY
}

$sequence "light_attack_right_mid_medium" {
	"drone_anims\light_attack_right_mid_medium.smd"
	activity "ACT_LIGHT_ATTACK_RIGHT_MID_MEDIUM" 1
	{ event 1100 13 "attack" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 32 32 target 0
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 32 32 target 2
	weightlist "weights_standing_body_yaw"
}

$sequence "light_attack_right_to_crawl_fwd" {
	"drone_anims\light_attack_right_to_crawl_fwd.smd"
	activity "ACT_LIGHT_ATTACK_RIGHT_TO_CRAWL_FWD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
}

$sequence "light_attack_right_to_run_fwd" {
	"drone_anims\light_attack_right_to_run_fwd.smd"
	activity "ACT_LIGHT_ATTACK_RIGHT_TO_RUN_FWD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
}

$sequence "light_step_attack_left_mid" {
	"drone_anims\light_step_attack_left_mid.smd"
	activity "ACT_LIGHT_STEP_ATTACK_LEFT_MID" 1
	{ event 1100 4 "attack" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
}

$sequence "light_step_attack_right_mid" {
	"drone_anims\light_step_attack_right_mid.smd"
	activity "ACT_LIGHT_STEP_ATTACK_RIGHT_MID" 1
	{ event 1100 5 "attack" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
}

$sequence "look_down_to_up" {
	"drone_anims\look_down_to_up.smd"
	activity "ACT_LOOK_DOWN_TO_UP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
}

$sequence "look_right_to_left" {
	"drone_anims\look_right_to_left.smd"
	activity "ACT_LOOK_RIGHT_TO_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
}

$sequence "low_vent_floor" {
	"drone_anims\low_vent_floor.smd"
	activity "ACT_LOW_VENT_FLOOR" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
}

$sequence "low_vent_floor_land" {
	"drone_anims\low_vent_floor_land.smd"
	activity "ACT_LOW_VENT_FLOOR_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
}

$sequence "marine_ripoff_head_countered" {
	"drone_anims\marine_ripoff_head_countered.smd"
	activity "ACT_MARINE_RIPOFF_HEAD_COUNTERED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 50 50 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 50 50 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 50 50 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 50 50 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 6 LX LY
	walkframe 10 LX LY
	walkframe 13 LX LY
	walkframe 16 LX LY
	walkframe 19 LX LY
	walkframe 22 LX LY
	walkframe 26 LX LY
	walkframe 29 LX LY
	walkframe 32 LX LY
	walkframe 35 LX LY
	walkframe 38 LX LY
	walkframe 41 LX LY
	walkframe 45 LX LY
	walkframe 48 LX LY
	walkframe 50 LX LY
}

$sequence "marine_ripoff_head_hold" {
	"drone_anims\marine_ripoff_head_hold.smd"
	activity "ACT_MARINE_RIPOFF_HEAD_HOLD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 19 19 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 19 19 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 19 19 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 19 19 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 19 LX LY
}

$sequence "marine_ripoff_head_kill" {
	"drone_anims\marine_ripoff_head_kill.smd"
	activity "ACT_MARINE_RIPOFF_HEAD_KILL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 129 129 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 129 129 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 129 129 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 129 129 target 3 usesequence 
	walkframe 8 LX LY
	walkframe 16 LX LY
	walkframe 24 LX LY
	walkframe 33 LX LY
	walkframe 41 LX LY
	walkframe 49 LX LY
	walkframe 57 LX LY
	walkframe 65 LX LY
	walkframe 73 LX LY
	walkframe 81 LX LY
	walkframe 89 LX LY
	walkframe 98 LX LY
	walkframe 106 LX LY
	walkframe 114 LX LY
	walkframe 122 LX LY
	walkframe 129 LX LY
}

$sequence "med_into_floor_to_wall_med" {
	"drone_anims\med_into_floor_to_wall_med.smd"
	activity "ACT_MED_INTO_FLOOR_TO_WALL_MED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 8 8 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 8 8 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 8 8 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 8 8 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
}

$sequence "melee_heavy_attack_charge_up" {
	"drone_anims\melee_heavy_attack_charge_up.smd"
	activity "ACT_MELEE_HEAVY_ATTACK_CHARGE_UP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 23 23 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 23 23 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 23 23 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 23 23 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
}

$sequence "melee_heavy_attack_long" {
	"drone_anims\melee_heavy_attack_long.smd"
	activity "ACT_MELEE_HEAVY_ATTACK_LONG" 1
	{ event 1100 20 "attack_tail" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 38 38 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 38 38 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 38 38 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 38 38 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 24 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 32 LX LY
	walkframe 34 LX LY
	walkframe 37 LX LY
	walkframe 38 LX LY
}

$sequence "melee_heavy_attack_medium" {
	"drone_anims\melee_heavy_attack_medium.smd"
	activity "ACT_MELEE_HEAVY_ATTACK_MEDIUM" 1
	{ event 1100 13 "attack_tail" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 24 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 30 LX LY
	walkframe 31 LX LY
}

$sequence "melee_heavy_attack_short" {
	"drone_anims\melee_heavy_attack_short.smd"
	activity "ACT_MELEE_HEAVY_ATTACK_SHORT" 1
	{ event 1100 5 "attack_tail" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 23 23 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 23 23 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 23 23 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 23 23 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
}

$sequence "neckbite_marine_ohwa_counter" {
	"drone_anims\neckbite_marine_ohwa_counter.smd"
	activity "ACT_NECKBITE_MARINE_OHWA_COUNTER" 1
	{ event 1100 5 "fatality self vo SoundTbl_Pain" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 66 66 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 66 66 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 66 66 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 66 66 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 13 LX LY
	walkframe 17 LX LY
	walkframe 21 LX LY
	walkframe 25 LX LY
	walkframe 29 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 42 LX LY
	walkframe 46 LX LY
	walkframe 50 LX LY
	walkframe 54 LX LY
	walkframe 59 LX LY
	walkframe 63 LX LY
	walkframe 66 LX LY
}

$sequence "neckbite_marine_ohwa_death" {
	"drone_anims\neckbite_marine_ohwa_death.smd"
	activity "ACT_NECKBITE_MARINE_OHWA_DEATH" 1
	{ event 1100 37 "fatality target decap bite" }
	{ event 1100 5 "fatality self vo SoundTbl_MiniMouth" }
	{ event 1100 24 "fatality self vo SoundTbl_Bite" }
	{ event 1100 5 "fatality target sfx VJ.AVP.Fatality.HeadBite" }
	{ event 1100 25 "fatality target sfx VJ.AVP.Fatality.HeadBite" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 130 130 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 130 130 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 130 130 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 130 130 target 3 usesequence 
	walkframe 8 LX LY
	walkframe 16 LX LY
	walkframe 25 LX LY
	walkframe 33 LX LY
	walkframe 41 LX LY
	walkframe 49 LX LY
	walkframe 57 LX LY
	walkframe 66 LX LY
	walkframe 74 LX LY
	walkframe 82 LX LY
	walkframe 90 LX LY
	walkframe 98 LX LY
	walkframe 106 LX LY
	walkframe 115 LX LY
	walkframe 123 LX LY
	walkframe 130 LX LY
}

$sequence "neckbite_marine_ohwa_grab" {
	"drone_anims\neckbite_marine_ohwa_grab.smd"
	activity "ACT_NECKBITE_MARINE_OHWA_GRAB" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 15 LX LY
	walkframe 19 LX LY
	walkframe 23 LX LY
	walkframe 27 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 42 LX LY
	walkframe 46 LX LY
	walkframe 50 LX LY
	walkframe 53 LX LY
	walkframe 57 LX LY
	walkframe 60 LX LY
}

$sequence "pred_trophy_allfours_lift" {
	"drone_anims\pred_trophy_allfours_lift.smd"
	activity "ACT_PRED_TROPHY_ALLFOURS_LIFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 15 LX LY
	walkframe 19 LX LY
	walkframe 23 LX LY
	walkframe 27 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 42 LX LY
	walkframe 46 LX LY
	walkframe 50 LX LY
	walkframe 53 LX LY
	walkframe 57 LX LY
	walkframe 60 LX LY
}

$sequence "pred_trophy_allfours_lift_short" {
	"drone_anims\pred_trophy_allfours_lift_short.smd"
	activity "ACT_PRED_TROPHY_ALLFOURS_LIFT_SHORT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
}

$sequence "pred_trophy_countered" {
	"drone_anims\pred_trophy_countered.smd"
	activity "ACT_PRED_TROPHY_COUNTERED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 18 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 31 LX LY
	walkframe 33 LX LY
	walkframe 36 LX LY
	walkframe 38 LX LY
	walkframe 40 LX LY
}

$sequence "pred_trophy_death" {
	"drone_anims\pred_trophy_death.smd"
	activity "ACT_PRED_TROPHY_DEATH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 79 79 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 79 79 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 79 79 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 79 79 target 3 usesequence 
	walkframe 5 LX LY
	walkframe 10 LX LY
	walkframe 15 LX LY
	walkframe 20 LX LY
	walkframe 25 LX LY
	walkframe 30 LX LY
	walkframe 35 LX LY
	walkframe 40 LX LY
	walkframe 45 LX LY
	walkframe 50 LX LY
	walkframe 55 LX LY
	walkframe 60 LX LY
	walkframe 65 LX LY
	walkframe 70 LX LY
	walkframe 75 LX LY
	walkframe 79 LX LY
}

$sequence "pred_trophy_death_headplant" {
	"drone_anims\pred_trophy_death_headplant.smd"
	activity "ACT_PRED_TROPHY_DEATH_HEADPLANT" 1
	{ event 1100 65 "fatality self blood face" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 134 134 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 134 134 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 134 134 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 134 134 target 3 usesequence 
	walkframe 8 LX LY
	walkframe 17 LX LY
	walkframe 25 LX LY
	walkframe 34 LX LY
	walkframe 42 LX LY
	walkframe 51 LX LY
	walkframe 59 LX LY
	walkframe 68 LX LY
	walkframe 76 LX LY
	walkframe 84 LX LY
	walkframe 93 LX LY
	walkframe 101 LX LY
	walkframe 110 LX LY
	walkframe 118 LX LY
	walkframe 127 LX LY
	walkframe 134 LX LY
}

$sequence "pred_trophy_death_impaled" {
	"drone_anims\pred_trophy_death_impaled.smd"
	activity "ACT_PRED_TROPHY_DEATH_IMPALED" 1
	{ event 1100 10 "fatality self blood chest" }
	{ event 1100 22 "fatality self vo SoundTbl_Death" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 163 163 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 163 163 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 163 163 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 163 163 target 3 usesequence 
	walkframe 10 LX LY
	walkframe 21 LX LY
	walkframe 31 LX LY
	walkframe 41 LX LY
	walkframe 51 LX LY
	walkframe 62 LX LY
	walkframe 72 LX LY
	walkframe 82 LX LY
	walkframe 92 LX LY
	walkframe 103 LX LY
	walkframe 113 LX LY
	walkframe 123 LX LY
	walkframe 133 LX LY
	walkframe 144 LX LY
	walkframe 154 LX LY
	walkframe 163 LX LY
}

$sequence "pred_trophy_death_kneeplant" {
	"drone_anims\pred_trophy_death_kneeplant.smd"
	activity "ACT_PRED_TROPHY_DEATH_KNEEPLANT" 1
	{ event 1100 22 "fatality self sfx kneeplant" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 166 166 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 166 166 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 166 166 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 166 166 target 3 usesequence 
	walkframe 10 LX LY
	walkframe 21 LX LY
	walkframe 31 LX LY
	walkframe 42 LX LY
	walkframe 52 LX LY
	walkframe 63 LX LY
	walkframe 73 LX LY
	walkframe 84 LX LY
	walkframe 94 LX LY
	walkframe 104 LX LY
	walkframe 115 LX LY
	walkframe 125 LX LY
	walkframe 136 LX LY
	walkframe 146 LX LY
	walkframe 157 LX LY
	walkframe 166 LX LY
}

$sequence "pred_trophy_death_slow" {
	"drone_anims\pred_trophy_death_slow.smd"
	activity "ACT_PRED_TROPHY_DEATH_SLOW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 137 137 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 137 137 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 137 137 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 137 137 target 3 usesequence 
	walkframe 9 LX LY
	walkframe 17 LX LY
	walkframe 26 LX LY
	walkframe 35 LX LY
	walkframe 43 LX LY
	walkframe 52 LX LY
	walkframe 60 LX LY
	walkframe 69 LX LY
	walkframe 78 LX LY
	walkframe 86 LX LY
	walkframe 95 LX LY
	walkframe 104 LX LY
	walkframe 112 LX LY
	walkframe 121 LX LY
	walkframe 129 LX LY
	walkframe 137 LX LY
}

$sequence "pred_trophy_lift" {
	"drone_anims\pred_trophy_lift.smd"
	activity "ACT_PRED_TROPHY_LIFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 15 LX LY
	walkframe 19 LX LY
	walkframe 23 LX LY
	walkframe 27 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 42 LX LY
	walkframe 46 LX LY
	walkframe 50 LX LY
	walkframe 53 LX LY
	walkframe 57 LX LY
	walkframe 60 LX LY
}

$sequence "pred_trophy_lift_downed_short" {
	"drone_anims\pred_trophy_lift_downed_short.smd"
	activity "ACT_PRED_TROPHY_LIFT_DOWNED_SHORT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
}

$sequence "pred_trophy_standing_lift" {
	"drone_anims\pred_trophy_standing_lift.smd"
	activity "ACT_PRED_TROPHY_STANDING_LIFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 15 LX LY
	walkframe 19 LX LY
	walkframe 23 LX LY
	walkframe 27 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 42 LX LY
	walkframe 46 LX LY
	walkframe 50 LX LY
	walkframe 53 LX LY
	walkframe 57 LX LY
	walkframe 60 LX LY
}

$sequence "pred_trophy_standing_lift_short" {
	"drone_anims\pred_trophy_standing_lift_short.smd"
	activity "ACT_PRED_TROPHY_STANDING_LIFT_SHORT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 16 16 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
}

$sequence "run" {
	"run_b"
	"run_r"
	"run_f"
	"run_l"
	"run_b"
	activity "ACT_RUN" 1
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
}

$sequence "ai_standing_sprint" {
	"run_b"
	"run_r"
	"standing_sprint"
	"run_l"
	"run_b"
	activity "ACT_MP_SPRINT" 1
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
}

$sequence "sprint" {
	"run_b"
	"run_r"
	"standing_sprint2"
	"run_l"
	"run_b"
	activity "ACT_VM_SPRINT_IDLE" 1
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
}

$sequence "standing_flinch_back_left" {
	"drone_anims\standing_flinch_back_left.smd"
	activity "ACT_STANDING_FLINCH_BACK_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 30 LX LY
}

$sequence "standing_flinch_back_right" {
	"drone_anims\standing_flinch_back_right.smd"
	activity "ACT_STANDING_FLINCH_BACK_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 30 LX LY
}

$sequence "standing_flinch_fwd_left" {
	"drone_anims\standing_flinch_fwd_left.smd"
	activity "ACT_STANDING_FLINCH_FWD_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 30 LX LY
}

$sequence "standing_flinch_fwd_right" {
	"drone_anims\standing_flinch_fwd_right.smd"
	activity "ACT_STANDING_FLINCH_FWD_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 30 LX LY
}

$sequence "@standing_guard" {
	"drone_anims\@standing_guard.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	weightlist "weights_standing_body_yaw"
}

$sequence "standing_guard" {
	"drone_anims\standing_guard.smd"
	activity "ACT_IDLE_STEALTH" 1
	fadein 0.2
	fadeout 0.2
	addlayer "@standing_guard"
	fps 30
	loop
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 0
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 2
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 3
}

$sequence "standing_guard_block_left" {
	"drone_anims\standing_guard_block_left.smd"
	activity "ACT_STANDING_GUARD_BLOCK_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
}

$sequence "standing_guard_block_right" {
	"drone_anims\standing_guard_block_right.smd"
	activity "ACT_STANDING_GUARD_BLOCK_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
}

$sequence "standing_guard_broken" {
	"drone_anims\standing_guard_broken.smd"
	activity "ACT_STANDING_GUARD_BROKEN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 45 45 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 45 45 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 45 45 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 45 45 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 6 LX LY
	walkframe 9 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 17 LX LY
	walkframe 20 LX LY
	walkframe 23 LX LY
	walkframe 26 LX LY
	walkframe 29 LX LY
	walkframe 32 LX LY
	walkframe 35 LX LY
	walkframe 37 LX LY
	walkframe 40 LX LY
	walkframe 43 LX LY
	walkframe 45 LX LY
}

$sequence "standing_guard_broken_behind" {
	"drone_anims\standing_guard_broken_behind.smd"
	activity "ACT_STANDING_GUARD_BROKEN_BEHIND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 45 45 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 45 45 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 45 45 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 45 45 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 6 LX LY
	walkframe 9 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 17 LX LY
	walkframe 20 LX LY
	walkframe 23 LX LY
	walkframe 26 LX LY
	walkframe 29 LX LY
	walkframe 32 LX LY
	walkframe 35 LX LY
	walkframe 37 LX LY
	walkframe 40 LX LY
	walkframe 43 LX LY
	walkframe 45 LX LY
}

$sequence "standing_knockdown_back" {
	"drone_anims\standing_knockdown_back.smd"
	activity "ACT_STANDING_KNOCKDOWN_BACK" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 3 usesequence 
	walkframe 5 LX LY
	walkframe 10 LX LY
	walkframe 14 LX LY
	walkframe 19 LX LY
	walkframe 24 LX LY
	walkframe 29 LX LY
	walkframe 33 LX LY
	walkframe 38 LX LY
	walkframe 43 LX LY
	walkframe 48 LX LY
	walkframe 52 LX LY
	walkframe 57 LX LY
	walkframe 62 LX LY
	walkframe 67 LX LY
	walkframe 71 LX LY
	walkframe 75 LX LY
}

$sequence "standing_knockdown_forward" {
	"drone_anims\standing_knockdown_forward.smd"
	activity "ACT_STANDING_KNOCKDOWN_FORWARD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 75 75 target 3 usesequence 
	walkframe 5 LX LY
	walkframe 10 LX LY
	walkframe 14 LX LY
	walkframe 19 LX LY
	walkframe 24 LX LY
	walkframe 29 LX LY
	walkframe 33 LX LY
	walkframe 38 LX LY
	walkframe 43 LX LY
	walkframe 48 LX LY
	walkframe 52 LX LY
	walkframe 57 LX LY
	walkframe 62 LX LY
	walkframe 67 LX LY
	walkframe 71 LX LY
	walkframe 75 LX LY
}

$sequence "standing_look_down_to_up" {
	"drone_anims\standing_look_down_to_up.smd"
	activity "ACT_STANDING_LOOK_DOWN_TO_UP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
}

$sequence "standing_look_right_to_left" {
	"drone_anims\standing_look_right_to_left.smd"
	activity "ACT_STANDING_LOOK_RIGHT_TO_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
}

$sequence "stealth_kill" {
	"drone_anims\stealth_kill.smd"
	activity "ACT_STEALTH_KILL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
	walkframe 25 LX LY
}

$sequence "stealth_kill_behind_Marine_ohwn" {
	"drone_anims\stealth_kill_behind_Marine_ohwn.smd"
	activity "ACT_STEALTH_KILL_BEHIND_MARINE_OHWN" 1
	{ event 1100 17 "fatality target sfx VJ.AVP.Fatality.NeckSnap" }
	{ event 1100 37 "fatality target decap head" }
	{ event 1100 37 "fatality self gibhold head" }
	{ event 1100 37 "fatality target sfx VJ.AVP.Fatality.HeadDecap" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 97 97 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 97 97 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 97 97 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 97 97 target 3 usesequence 
	walkframe 6 LX LY
	walkframe 12 LX LY
	walkframe 18 LX LY
	walkframe 25 LX LY
	walkframe 31 LX LY
	walkframe 37 LX LY
	walkframe 43 LX LY
	walkframe 49 LX LY
	walkframe 55 LX LY
	walkframe 61 LX LY
	walkframe 67 LX LY
	walkframe 74 LX LY
	walkframe 80 LX LY
	walkframe 86 LX LY
	walkframe 92 LX LY
	walkframe 97 LX LY
}

$sequence "stealth_kill_countered" {
	"drone_anims\stealth_kill_countered.smd"
	activity "ACT_STEALTH_KILL_COUNTERED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 50 50 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 50 50 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 50 50 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 50 50 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 6 LX LY
	walkframe 10 LX LY
	walkframe 13 LX LY
	walkframe 16 LX LY
	walkframe 19 LX LY
	walkframe 22 LX LY
	walkframe 26 LX LY
	walkframe 29 LX LY
	walkframe 32 LX LY
	walkframe 35 LX LY
	walkframe 38 LX LY
	walkframe 41 LX LY
	walkframe 45 LX LY
	walkframe 48 LX LY
	walkframe 50 LX LY
}

$sequence "stealth_kill_finished" {
	"drone_anims\stealth_kill_finished.smd"
	activity "ACT_STEALTH_KILL_FINISHED" 1
	{ event 1100 11 "fatality self sfx VJ.AVP.Fatality.TailStab" }
	{ event 1100 42 "fatality self sfx VJ.AVP.Fatality.TailRetract" }
	{ event 1100 62 "fatality self vo SoundTbl_Hiss" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 72 72 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 72 72 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 72 72 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 72 72 target 3 usesequence 
	walkframe 5 LX LY
	walkframe 9 LX LY
	walkframe 14 LX LY
	walkframe 18 LX LY
	walkframe 23 LX LY
	walkframe 27 LX LY
	walkframe 32 LX LY
	walkframe 37 LX LY
	walkframe 41 LX LY
	walkframe 46 LX LY
	walkframe 50 LX LY
	walkframe 55 LX LY
	walkframe 59 LX LY
	walkframe 64 LX LY
	walkframe 68 LX LY
	walkframe 72 LX LY
}

$sequence "stealth_kill_marine_head_and_arms_hold" {
	"drone_anims\stealth_kill_marine_head_and_arms_hold.smd"
	activity "ACT_STEALTH_KILL_MARINE_HEAD_AND_ARMS_HOLD" 1
	{ event 1100 12 "fatality self vo SoundTbl_Hiss" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 29 LX LY
}

$sequence "stealth_kill_marine_head_and_arms_kill" {
	"drone_anims\stealth_kill_marine_head_and_arms_kill.smd"
	activity "ACT_STEALTH_KILL_MARINE_HEAD_AND_ARMS_KILL" 1
	{ event 1100 13 "fatality target vo SoundTbl_Panic" }
	{ event 1100 34 "fatality self sfx VJ.AVP.Fatality.TailSlice" }
	{ event 1100 34 "fatality target blood neck" }
	{ event 1100 68 "fatality target decap head" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 114 114 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 114 114 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 114 114 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 114 114 target 3 usesequence 
	walkframe 7 LX LY
	walkframe 14 LX LY
	walkframe 22 LX LY
	walkframe 29 LX LY
	walkframe 36 LX LY
	walkframe 43 LX LY
	walkframe 50 LX LY
	walkframe 58 LX LY
	walkframe 65 LX LY
	walkframe 72 LX LY
	walkframe 79 LX LY
	walkframe 86 LX LY
	walkframe 93 LX LY
	walkframe 101 LX LY
	walkframe 108 LX LY
	walkframe 114 LX LY
}

$sequence "stealth_kill_marine_tailstab_head_hold" {
	"drone_anims\stealth_kill_marine_tailstab_head_hold.smd"
	activity "ACT_STEALTH_KILL_MARINE_TAILSTAB_HEAD_HOLD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 29 LX LY
}

$sequence "stealth_kill_marine_tailstab_head_kill" {
	"drone_anims\stealth_kill_marine_tailstab_head_kill.smd"
	activity "ACT_STEALTH_KILL_MARINE_TAILSTAB_HEAD_KILL" 1
	{ event 1100 13 "fatality self sfx VJ.AVP.Fatality.TailStab" }
	{ event 1100 81 "fatality self sfx VJ.AVP.Fatality.TailRetract" }
	{ event 1100 52 "fatality target vo SoundTbl_Choke" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 119 119 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 119 119 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 119 119 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 119 119 target 3 usesequence 
	walkframe 8 LX LY
	walkframe 15 LX LY
	walkframe 23 LX LY
	walkframe 30 LX LY
	walkframe 38 LX LY
	walkframe 45 LX LY
	walkframe 53 LX LY
	walkframe 60 LX LY
	walkframe 68 LX LY
	walkframe 75 LX LY
	walkframe 83 LX LY
	walkframe 90 LX LY
	walkframe 98 LX LY
	walkframe 105 LX LY
	walkframe 113 LX LY
	walkframe 119 LX LY
}

$sequence "stealth_kill_pred" {
	"drone_anims\stealth_kill_pred.smd"
	activity "ACT_STEALTH_KILL_PRED" 1
	{ event 1100 15 "fatality self vo SoundTbl_Hiss" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 30 LX LY
}

$sequence "stealth_kill_pred_countered" {
	"drone_anims\stealth_kill_pred_countered.smd"
	activity "ACT_STEALTH_KILL_PRED_COUNTERED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 76 76 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 76 76 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 76 76 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 76 76 target 3 usesequence 
	walkframe 5 LX LY
	walkframe 10 LX LY
	walkframe 14 LX LY
	walkframe 19 LX LY
	walkframe 24 LX LY
	walkframe 29 LX LY
	walkframe 34 LX LY
	walkframe 39 LX LY
	walkframe 43 LX LY
	walkframe 48 LX LY
	walkframe 53 LX LY
	walkframe 58 LX LY LZR
	walkframe 63 LX LY LZR
	walkframe 67 LX LY LZR
	walkframe 72 LX LY LZR
	walkframe 76 LX LY LZR
}

$sequence "stealth_kill_pred_finished" {
	"drone_anims\stealth_kill_pred_finished.smd"
	activity "ACT_STEALTH_KILL_PRED_FINISHED" 1
	{ event 1100 7 "fatality self sfx VJ.AVP.Fatality.TailStab" }
	{ event 1100 31 "fatality self sfx VJ.AVP.Fatality.TailRetract" }
	{ event 1100 52 "fatality self vo SoundTbl_Hiss" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 67 67 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 67 67 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 67 67 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 67 67 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 9 LX LY
	walkframe 13 LX LY
	walkframe 17 LX LY
	walkframe 21 LX LY
	walkframe 26 LX LY
	walkframe 30 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 43 LX LY
	walkframe 47 LX LY
	walkframe 51 LX LY
	walkframe 55 LX LY
	walkframe 60 LX LY
	walkframe 64 LX LY
	walkframe 67 LX LY
}

$sequence "stealth_kill_pred_tailstab_head_hold" {
	"drone_anims\stealth_kill_pred_tailstab_head_hold.smd"
	activity "ACT_STEALTH_KILL_PRED_TAILSTAB_HEAD_HOLD" 1
	{ event 1100 18 "fatality self vo SoundTbl_Hiss" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 24 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 29 LX LY
}

$sequence "stealth_kill_pred_tailstab_head_kill" {
	"drone_anims\stealth_kill_pred_tailstab_head_kill.smd"
	activity "ACT_STEALTH_KILL_PRED_TAILSTAB_HEAD_KILL" 1
	{ event 1100 7 "fatality self sfx VJ.AVP.Fatality.TailStab" }
	{ event 1100 67 "fatality self sfx VJ.AVP.Fatality.TailRetract" }
	{ event 1100 85 "fatality self vo SoundTbl_Hiss" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 109 109 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 109 109 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 109 109 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 109 109 target 3 usesequence 
	walkframe 7 LX LY
	walkframe 14 LX LY
	walkframe 21 LX LY
	walkframe 28 LX LY
	walkframe 34 LX LY
	walkframe 41 LX LY
	walkframe 48 LX LY
	walkframe 55 LX LY
	walkframe 62 LX LY
	walkframe 69 LX LY
	walkframe 76 LX LY
	walkframe 83 LX LY
	walkframe 89 LX LY
	walkframe 96 LX LY
	walkframe 103 LX LY
	walkframe 109 LX LY
}

$sequence "stealthkill_pred_death" {
	"drone_anims\stealthkill_pred_death.smd"
	activity "ACT_STEALTHKILL_PRED_DEATH" 1
	{ event 1100 24 "fatality self vo SoundTbl_Scream" }
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 65 65 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 65 65 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 65 65 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 65 65 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 12 LX LY
	walkframe 17 LX LY
	walkframe 21 LX LY
	walkframe 25 LX LY
	walkframe 29 LX LY
	walkframe 33 LX LY
	walkframe 37 LX LY
	walkframe 41 LX LY
	walkframe 45 LX LY
	walkframe 50 LX LY
	walkframe 54 LX LY
	walkframe 58 LX LY
	walkframe 62 LX LY
	walkframe 65 LX LY
}

$sequence "stealthkill_standing_pred_death" {
	"drone_anims\stealthkill_standing_pred_death.smd"
	activity "ACT_STEALTHKILL_STANDING_PRED_DEATH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 64 64 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 64 64 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 64 64 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 64 64 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 12 LX LY
	walkframe 16 LX LY
	walkframe 20 LX LY
	walkframe 24 LX LY
	walkframe 28 LX LY
	walkframe 33 LX LY
	walkframe 37 LX LY
	walkframe 41 LX LY
	walkframe 45 LX LY
	walkframe 49 LX LY
	walkframe 53 LX LY
	walkframe 57 LX LY
	walkframe 61 LX LY
	walkframe 64 LX LY
}

$sequence "tail_stab" {
	"drone_anims\tail_stab.smd"
	activity "ACT_TAIL_STAB" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 8 8 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 8 8 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 8 8 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 8 8 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
}

$sequence "tail_stab_drag_kill_claws" {
	"drone_anims\tail_stab_drag_kill_claws.smd"
	activity "ACT_TAIL_STAB_DRAG_KILL_CLAWS" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 33 33 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 33 33 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 33 33 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 33 33 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 30 LX LY
	walkframe 32 LX LY
	walkframe 33 LX LY
}

$sequence "tail_stab_miss" {
	"drone_anims\tail_stab_miss.smd"
	activity "ACT_TAIL_STAB_MISS" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 32 32 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 32 32 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 32 32 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 32 32 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 31 LX LY
	walkframe 32 LX LY
}

$sequence "tailstab_head_pred_countered" {
	"drone_anims\tailstab_head_pred_countered.smd"
	activity "ACT_TAILSTAB_HEAD_PRED_COUNTERED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 45 45 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 45 45 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 45 45 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 45 45 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 6 LX LY
	walkframe 9 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 17 LX LY
	walkframe 20 LX LY
	walkframe 23 LX LY
	walkframe 26 LX LY
	walkframe 29 LX LY
	walkframe 32 LX LY
	walkframe 35 LX LY
	walkframe 37 LX LY
	walkframe 40 LX LY
	walkframe 43 LX LY
	walkframe 45 LX LY
}

$sequence "tailstab_head_pred_grapple" {
	"drone_anims\tailstab_head_pred_grapple.smd"
	activity "ACT_TAILSTAB_HEAD_PRED_GRAPPLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 32 LX LY
	walkframe 34 LX LY
	walkframe 35 LX LY
}

$sequence "tailstab_head_pred_kill" {
	"drone_anims\tailstab_head_pred_kill.smd"
	activity "ACT_TAILSTAB_HEAD_PRED_KILL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 114 114 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 114 114 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 114 114 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 114 114 target 3 usesequence 
	walkframe 7 LX LY
	walkframe 14 LX LY
	walkframe 22 LX LY
	walkframe 29 LX LY
	walkframe 36 LX LY
	walkframe 43 LX LY
	walkframe 50 LX LY
	walkframe 58 LX LY
	walkframe 65 LX LY
	walkframe 72 LX LY
	walkframe 79 LX LY
	walkframe 86 LX LY
	walkframe 93 LX LY
	walkframe 101 LX LY
	walkframe 108 LX LY
	walkframe 114 LX LY
}

$sequence "turn_90_left" {
	"drone_anims\turn_90_left.smd"
	"drone_anims\turn_90_left_2.smd"
	activity "ACT_TURN_LEFT" 1
	blend "standing" 0 1
	blendwidth 2
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
}

$sequence "turn_90_right" {
	"drone_anims\turn_90_right.smd"
	"drone_anims\turn_90_right_2.smd"
	activity "ACT_TURN_RIGHT" 1
	blend "standing" 0 1
	blendwidth 2
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 20 20 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
}

$sequence "v_alien_headbiteBehind_counter" {
	"drone_anims\v_alien_headbiteBehind_counter.smd"
	activity "ACT_V_ALIEN_HEADBITEBEHIND_COUNTER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 45 45 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 45 45 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 45 45 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 45 45 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 6 LX LY
	walkframe 9 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 17 LX LY LZR
	walkframe 20 LX LY LZR
	walkframe 23 LX LY LZR
	walkframe 26 LX LY LZR
	walkframe 29 LX LY LZR
	walkframe 32 LX LY LZR
	walkframe 35 LX LY LZR
	walkframe 37 LX LY LZR
	walkframe 40 LX LY LZR
	walkframe 43 LX LY LZR
	walkframe 45 LX LY LZR
}

$sequence "v_alien_headbiteBehind_countered" {
	"drone_anims\v_alien_headbiteBehind_countered.smd"
	activity "ACT_V_ALIEN_HEADBITEBEHIND_COUNTERED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 55 55 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 55 55 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 55 55 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 55 55 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 7 LX LY
	walkframe 11 LX LY
	walkframe 14 LX LY
	walkframe 18 LX LY
	walkframe 21 LX LY
	walkframe 25 LX LY
	walkframe 28 LX LY
	walkframe 32 LX LY
	walkframe 35 LX LY
	walkframe 39 LX LY
	walkframe 42 LX LY
	walkframe 46 LX LY
	walkframe 49 LX LY
	walkframe 53 LX LY
	walkframe 55 LX LY
}

$sequence "v_alien_headbiteBehind_death" {
	"drone_anims\v_alien_headbiteBehind_death.smd"
	activity "ACT_V_ALIEN_HEADBITEBEHIND_DEATH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 15 LX LY
	walkframe 19 LX LY
	walkframe 23 LX LY
	walkframe 26 LX LY
	walkframe 30 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 41 LX LY
	walkframe 45 LX LY
	walkframe 49 LX LY
	walkframe 53 LX LY
	walkframe 56 LX LY
	walkframe 59 LX LY
}

$sequence "v_alien_headbiteBehind_grapple" {
	"drone_anims\v_alien_headbiteBehind_grapple.smd"
	activity "ACT_V_ALIEN_HEADBITEBEHIND_GRAPPLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 15 LX LY
	walkframe 19 LX LY
	walkframe 23 LX LY
	walkframe 27 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 42 LX LY
	walkframe 46 LX LY
	walkframe 50 LX LY
	walkframe 53 LX LY
	walkframe 57 LX LY
	walkframe 60 LX LY
}

$sequence "v_alien_headbiteBehind_grapple_victim" {
	"drone_anims\v_alien_headbiteBehind_grapple_victim.smd"
	activity "ACT_V_ALIEN_HEADBITEBEHIND_GRAPPLE_VICTIM" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 15 LX LY
	walkframe 19 LX LY
	walkframe 23 LX LY
	walkframe 27 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 42 LX LY
	walkframe 46 LX LY
	walkframe 50 LX LY
	walkframe 53 LX LY
	walkframe 57 LX LY
	walkframe 60 LX LY
}

$sequence "v_alien_headbiteBehind_kill" {
	"drone_anims\v_alien_headbiteBehind_kill.smd"
	activity "ACT_V_ALIEN_HEADBITEBEHIND_KILL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 59 59 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 15 LX LY
	walkframe 19 LX LY
	walkframe 23 LX LY
	walkframe 26 LX LY
	walkframe 30 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 41 LX LY
	walkframe 45 LX LY
	walkframe 49 LX LY
	walkframe 53 LX LY
	walkframe 56 LX LY
	walkframe 59 LX LY
}

$sequence "v_alien_headbite_counter" {
	"drone_anims\v_alien_headbite_counter.smd"
	activity "ACT_V_ALIEN_HEADBITE_COUNTER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 18 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 31 LX LY
	walkframe 33 LX LY
	walkframe 36 LX LY
	walkframe 38 LX LY
	walkframe 40 LX LY
}

$sequence "v_alien_headbite_countered" {
	"drone_anims\v_alien_headbite_countered.smd"
	activity "ACT_V_ALIEN_HEADBITE_COUNTERED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 18 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 31 LX LY
	walkframe 33 LX LY
	walkframe 36 LX LY
	walkframe 38 LX LY
	walkframe 40 LX LY
}

$sequence "v_alien_headbite_death" {
	"drone_anims\v_alien_headbite_death.smd"
	activity "ACT_V_ALIEN_HEADBITE_DEATH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 89 89 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 89 89 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 89 89 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 89 89 target 3 usesequence 
	walkframe 6 LX LY
	walkframe 11 LX LY
	walkframe 17 LX LY
	walkframe 23 LX LY
	walkframe 28 LX LY
	walkframe 34 LX LY
	walkframe 39 LX LY
	walkframe 45 LX LY
	walkframe 51 LX LY
	walkframe 56 LX LY
	walkframe 62 LX LY
	walkframe 68 LX LY
	walkframe 73 LX LY
	walkframe 79 LX LY
	walkframe 84 LX LY
	walkframe 89 LX LY
}

$sequence "v_alien_headbite_grab" {
	"drone_anims\v_alien_headbite_grab.smd"
	activity "ACT_V_ALIEN_HEADBITE_GRAB" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 30 LX LY
}

$sequence "v_alien_headbite_grapple" {
	"drone_anims\v_alien_headbite_grapple.smd"
	activity "ACT_V_ALIEN_HEADBITE_GRAPPLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 15 LX LY
	walkframe 19 LX LY
	walkframe 23 LX LY
	walkframe 27 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 42 LX LY
	walkframe 46 LX LY
	walkframe 50 LX LY
	walkframe 53 LX LY
	walkframe 57 LX LY
	walkframe 60 LX LY
}

$sequence "v_alien_headbite_grapple_victim" {
	"drone_anims\v_alien_headbite_grapple_victim.smd"
	activity "ACT_V_ALIEN_HEADBITE_GRAPPLE_VICTIM" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 15 LX LY
	walkframe 19 LX LY
	walkframe 23 LX LY
	walkframe 27 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 42 LX LY
	walkframe 46 LX LY
	walkframe 50 LX LY
	walkframe 53 LX LY
	walkframe 57 LX LY
	walkframe 60 LX LY
}

$sequence "v_alien_headbite_kill" {
	"drone_anims\v_alien_headbite_kill.smd"
	activity "ACT_V_ALIEN_HEADBITE_KILL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 89 89 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 89 89 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 89 89 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 89 89 target 3 usesequence 
	walkframe 6 LX LY
	walkframe 11 LX LY
	walkframe 17 LX LY
	walkframe 23 LX LY
	walkframe 28 LX LY
	walkframe 34 LX LY
	walkframe 39 LX LY
	walkframe 45 LX LY
	walkframe 51 LX LY
	walkframe 56 LX LY
	walkframe 62 LX LY
	walkframe 68 LX LY
	walkframe 73 LX LY
	walkframe 79 LX LY
	walkframe 84 LX LY
	walkframe 89 LX LY
}

$sequence "v_alien_stealthkill_counter" {
	"drone_anims\v_alien_stealthkill_counter.smd"
	activity "ACT_V_ALIEN_STEALTHKILL_COUNTER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 44 44 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 44 44 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 44 44 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 44 44 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 14 LX LY
	walkframe 17 LX LY
	walkframe 20 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 28 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 37 LX LY
	walkframe 39 LX LY
	walkframe 42 LX LY
	walkframe 44 LX LY
}

$sequence "v_alien_stealthkill_countered" {
	"drone_anims\v_alien_stealthkill_countered.smd"
	activity "ACT_V_ALIEN_STEALTHKILL_COUNTERED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 49 49 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 49 49 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 49 49 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 49 49 target 3 usesequence 
	walkframe 3 LX LY
	walkframe 6 LX LY
	walkframe 9 LX LY
	walkframe 13 LX LY
	walkframe 16 LX LY
	walkframe 19 LX LY
	walkframe 22 LX LY
	walkframe 25 LX LY
	walkframe 28 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 41 LX LY
	walkframe 44 LX LY
	walkframe 47 LX LY
	walkframe 49 LX LY
}

$sequence "v_alien_stealthkill_death" {
	"drone_anims\v_alien_stealthkill_death.smd"
	activity "ACT_V_ALIEN_STEALTHKILL_DEATH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 36 36 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 36 36 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 36 36 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 36 36 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 28 LX LY
	walkframe 30 LX LY
	walkframe 32 LX LY
	walkframe 35 LX LY
	walkframe 36 LX LY
}

$sequence "v_alien_stealthkill_grapple" {
	"drone_anims\v_alien_stealthkill_grapple.smd"
	activity "ACT_V_ALIEN_STEALTHKILL_GRAPPLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 15 LX LY
	walkframe 19 LX LY
	walkframe 23 LX LY
	walkframe 27 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 42 LX LY
	walkframe 46 LX LY
	walkframe 50 LX LY
	walkframe 53 LX LY
	walkframe 57 LX LY
	walkframe 60 LX LY
}

$sequence "v_alien_stealthkill_grapple_victim" {
	"drone_anims\v_alien_stealthkill_grapple_victim.smd"
	activity "ACT_V_ALIEN_STEALTHKILL_GRAPPLE_VICTIM" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 15 LX LY
	walkframe 19 LX LY
	walkframe 23 LX LY
	walkframe 27 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 42 LX LY
	walkframe 46 LX LY
	walkframe 50 LX LY
	walkframe 53 LX LY
	walkframe 57 LX LY
	walkframe 60 LX LY
}

$sequence "v_alien_stealthkill_kill" {
	"drone_anims\v_alien_stealthkill_kill.smd"
	activity "ACT_V_ALIEN_STEALTHKILL_KILL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 36 36 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 36 36 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 36 36 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 36 36 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 28 LX LY
	walkframe 30 LX LY
	walkframe 32 LX LY
	walkframe 35 LX LY
	walkframe 36 LX LY
}

$sequence "v_alien_stealthkill_take_off_face" {
	"drone_anims\v_alien_stealthkill_take_off_face.smd"
	activity "ACT_V_ALIEN_STEALTHKILL_TAKE_OFF_FACE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 145 145 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 145 145 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 145 145 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 145 145 target 3 usesequence 
	walkframe 9 LX LY
	walkframe 18 LX LY
	walkframe 27 LX LY
	walkframe 37 LX LY
	walkframe 46 LX LY
	walkframe 55 LX LY
	walkframe 64 LX LY
	walkframe 73 LX LY
	walkframe 82 LX LY
	walkframe 91 LX LY
	walkframe 100 LX LY
	walkframe 110 LX LY
	walkframe 119 LX LY
	walkframe 128 LX LY
	walkframe 137 LX LY
	walkframe 145 LX LY
}

$sequence "v_alien_stealthkill_take_off_face_victim" {
	"drone_anims\v_alien_stealthkill_take_off_face_victim.smd"
	activity "ACT_V_ALIEN_STEALTHKILL_TAKE_OFF_FACE_VICTIM" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 145 145 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 145 145 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 145 145 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 145 145 target 3 usesequence 
	walkframe 9 LX LY
	walkframe 18 LX LY
	walkframe 27 LX LY
	walkframe 37 LX LY
	walkframe 46 LX LY
	walkframe 55 LX LY
	walkframe 64 LX LY
	walkframe 73 LX LY
	walkframe 82 LX LY
	walkframe 91 LX LY
	walkframe 100 LX LY
	walkframe 110 LX LY
	walkframe 119 LX LY
	walkframe 128 LX LY
	walkframe 137 LX LY
	walkframe 145 LX LY
}

$sequence "v_alien_tailstab_head_front_counter" {
	"drone_anims\v_alien_tailstab_head_front_counter.smd"
	activity "ACT_V_ALIEN_TAILSTAB_HEAD_FRONT_COUNTER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 15 LX LY
	walkframe 19 LX LY
	walkframe 23 LX LY
	walkframe 27 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 42 LX LY
	walkframe 46 LX LY
	walkframe 50 LX LY
	walkframe 53 LX LY
	walkframe 57 LX LY
	walkframe 60 LX LY
}

$sequence "v_alien_tailstab_head_front_countered" {
	"drone_anims\v_alien_tailstab_head_front_countered.smd"
	activity "ACT_V_ALIEN_TAILSTAB_HEAD_FRONT_COUNTERED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 60 60 target 3 usesequence 
	walkframe 4 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 15 LX LY
	walkframe 19 LX LY
	walkframe 23 LX LY
	walkframe 27 LX LY
	walkframe 31 LX LY
	walkframe 34 LX LY
	walkframe 38 LX LY
	walkframe 42 LX LY
	walkframe 46 LX LY
	walkframe 50 LX LY
	walkframe 53 LX LY
	walkframe 57 LX LY
	walkframe 60 LX LY
}

$sequence "v_alien_tailstab_head_front_death" {
	"drone_anims\v_alien_tailstab_head_front_death.smd"
	activity "ACT_V_ALIEN_TAILSTAB_HEAD_FRONT_DEATH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 114 114 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 114 114 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 114 114 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 114 114 target 3 usesequence 
	walkframe 7 LX LY
	walkframe 14 LX LY
	walkframe 22 LX LY
	walkframe 29 LX LY
	walkframe 36 LX LY
	walkframe 43 LX LY
	walkframe 50 LX LY
	walkframe 58 LX LY
	walkframe 65 LX LY
	walkframe 72 LX LY
	walkframe 79 LX LY
	walkframe 86 LX LY
	walkframe 93 LX LY
	walkframe 101 LX LY
	walkframe 108 LX LY
	walkframe 114 LX LY
}

$sequence "v_alien_tailstab_head_front_grapple" {
	"drone_anims\v_alien_tailstab_head_front_grapple.smd"
	activity "ACT_V_ALIEN_TAILSTAB_HEAD_FRONT_GRAPPLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 32 LX LY
	walkframe 34 LX LY
	walkframe 35 LX LY
}

$sequence "v_alien_tailstab_head_front_grapple_victim" {
	"drone_anims\v_alien_tailstab_head_front_grapple_victim.smd"
	activity "ACT_V_ALIEN_TAILSTAB_HEAD_FRONT_GRAPPLE_VICTIM" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 32 LX LY
	walkframe 34 LX LY
	walkframe 35 LX LY
}

$sequence "v_alien_tailstab_head_front_kill" {
	"drone_anims\v_alien_tailstab_head_front_kill.smd"
	activity "ACT_V_ALIEN_TAILSTAB_HEAD_FRONT_KILL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 114 114 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 114 114 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 114 114 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 114 114 target 3 usesequence 
	walkframe 7 LX LY
	walkframe 14 LX LY
	walkframe 22 LX LY
	walkframe 29 LX LY
	walkframe 36 LX LY
	walkframe 43 LX LY
	walkframe 50 LX LY
	walkframe 58 LX LY
	walkframe 65 LX LY
	walkframe 72 LX LY
	walkframe 79 LX LY
	walkframe 86 LX LY
	walkframe 93 LX LY
	walkframe 101 LX LY
	walkframe 108 LX LY
	walkframe 114 LX LY
}

$sequence "vent_jump" {
	"drone_anims\vent_jump.smd"
	activity "ACT_VENT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
}

$sequence "vent_jump_land" {
	"drone_anims\vent_jump_land.smd"
	activity "ACT_VENT_JUMP_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 35 35 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 5 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 23 LX LY
	walkframe 25 LX LY
	walkframe 27 LX LY
	walkframe 29 LX LY
	walkframe 32 LX LY
	walkframe 34 LX LY
	walkframe 35 LX LY
}

$sequence "vent_wall_end" {
	"drone_anims\vent_wall_end.smd"
	activity "ACT_VENT_WALL_END" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 34 34 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 34 34 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 34 34 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 34 34 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 13 LX LY
	walkframe 15 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 24 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 31 LX LY
	walkframe 33 LX LY
	walkframe 34 LX LY
}

$sequence "vent_wall_start" {
	"drone_anims\vent_wall_start.smd"
	activity "ACT_VENT_WALL_START" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
}

$sequence "wall_crawl_dart_fwd" {
	"drone_anims\wall_crawl_dart_fwd.smd"
	activity "ACT_WALL_CRAWL_DART_FWD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 31 31 target 3 usesequence 
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 6 LX LY
	walkframe 8 LX LY
	walkframe 10 LX LY
	walkframe 12 LX LY
	walkframe 14 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 20 LX LY
	walkframe 22 LX LY
	walkframe 24 LX LY
	walkframe 26 LX LY
	walkframe 28 LX LY
	walkframe 30 LX LY
	walkframe 31 LX LY
}

$sequence "wall_to_wall_l_med" {
	"drone_anims\wall_to_wall_l_med.smd"
	activity "ACT_WALL_TO_WALL_L_MED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 13 13 target 0 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 13 13 target 1 usesequence 
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 13 13 target 2 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 13 13 target 3 usesequence 
	walkframe 1 LX LY
	walkframe 2 LX LY
	walkframe 3 LX LY
	walkframe 4 LX LY
	walkframe 5 LX LY
	walkframe 6 LX LY
	walkframe 7 LX LY
	walkframe 8 LX LY
	walkframe 9 LX LY
	walkframe 10 LX LY
	walkframe 11 LX LY
	walkframe 12 LX LY
	walkframe 13 LX LY
}

$sequence "walk" {
	"walk_s_180"
	"walk_s_315l"
	"walk_s_90l"
	"walk_s_45l"
	"walk_s_0"
	"walk_s_45r"
	"walk_s_90r"
	"walk_s_315r"
	"walk_s_180"
	activity "ACT_WALK_STIMULATED" 1
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2
}

$sequence "sneak" {
	"sneak_180"
	"sneak_315r"
	"sneak_90r"
	"sneak_45r"
	"sneak_0"
	"sneak_45l"
	"sneak_90l"
	"sneak_315l"
	"sneak_180"
	activity "ACT_WALK_RELAXED" 1
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2
}

$collisionjoints "drone_physics.smd"
{
	$mass 150
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
	$rootbone "Bip01 Pelvis"
	$concave
	$maxconvexpieces 1


	$jointconstrain "Bip01 Tail" x limit 0 0 0
	$jointconstrain "Bip01 Tail" y limit 0 0 0
	$jointconstrain "Bip01 Tail" z limit 0 0 0

	$jointconstrain "Bip01 Tail1" x limit -25 25 0
	$jointconstrain "Bip01 Tail1" y limit -25 25 0
	$jointconstrain "Bip01 Tail1" z limit -30 30 0

	$jointconstrain "Bip01 Tail2" x limit -25 25 0
	$jointconstrain "Bip01 Tail2" y limit -20 20 0
	$jointconstrain "Bip01 Tail2" z limit -30 30 0

	$jointconstrain "Bip01 Tail3" x limit -20 20 0
	$jointconstrain "Bip01 Tail3" y limit -25 25 0
	$jointconstrain "Bip01 Tail3" z limit -30 30 0

	$jointconstrain "Bip01 Tail4" x limit 0 0 0
	$jointconstrain "Bip01 Tail4" y limit -25 25 0
	$jointconstrain "Bip01 Tail4" z limit -30 30 0

	$jointconstrain "Bip01 Tail5" x limit -25 25 0
	$jointconstrain "Bip01 Tail5" y limit -25 25 0
	$jointconstrain "Bip01 Tail5" z limit -30 30 0

	$jointconstrain "Bip01 Tail6" x limit -25 25 0
	$jointconstrain "Bip01 Tail6" y limit -25 25 0
	$jointconstrain "Bip01 Tail6" z limit -25 25 0

	$jointconstrain "Bip01 R Thigh" x limit -105 105 0
	$jointconstrain "Bip01 R Thigh" y limit -100 100 0
	$jointconstrain "Bip01 R Thigh" z limit -100 100 0

	$jointconstrain "Bip01 R Calf" x limit -110 60 0
	$jointconstrain "Bip01 R Calf" y limit -15 15 0
	$jointconstrain "Bip01 R Calf" z limit 0 0 0

	$jointconstrain "Bip01 Tail7" x limit -25 25 0
	$jointconstrain "Bip01 Tail7" y limit -25 25 0
	$jointconstrain "Bip01 Tail7" z limit -37 37 0

	$jointconstrain "Bip01 L Thigh" x limit -105 105 0
	$jointconstrain "Bip01 L Thigh" y limit -100 100 0
	$jointconstrain "Bip01 L Thigh" z limit -100 100 0

	$jointconstrain "Bip01 L Calf" x limit -110 60 0
	$jointconstrain "Bip01 L Calf" y limit -15 15 0
	$jointconstrain "Bip01 L Calf" z limit 0 0 0

	$jointconstrain "Bip01 L Foot" x limit -80 80 0
	$jointconstrain "Bip01 L Foot" y limit -50 50 0
	$jointconstrain "Bip01 L Foot" z limit -50 50 0

	$jointconstrain "Bip01 Spine1" x limit -53 20 0
	$jointconstrain "Bip01 Spine1" y limit -30 30 0
	$jointconstrain "Bip01 Spine1" z limit -23 23 0

	$jointconstrain "Bip01 Spine2" x limit -30 15 0
	$jointconstrain "Bip01 Spine2" y limit -35 35 0
	$jointconstrain "Bip01 Spine2" z limit -23 23 0

	$jointconstrain "Bip01 R UpperArm" x limit -130 130 0
	$jointconstrain "Bip01 R UpperArm" y limit -80 80 0
	$jointconstrain "Bip01 R UpperArm" z limit -95 95 0

	$jointconstrain "Bip01 R Forearm" x limit 0 0 0
	$jointconstrain "Bip01 R Forearm" y limit -120 35 0
	$jointconstrain "Bip01 R Forearm" z limit -100 100 0

	$jointconstrain "Bip01 R Hand" x limit -110 110 0
	$jointconstrain "Bip01 R Hand" y limit -50 50 0
	$jointconstrain "Bip01 R Hand" z limit -90 90 0

	$jointconstrain "Bip01 Neck1" x limit -67 67 0
	$jointconstrain "Bip01 Neck1" y limit -55 55 0
	$jointconstrain "Bip01 Neck1" z limit -45 45 0

	$jointconstrain "Bip01 L UpperArm" x limit -130 130 0
	$jointconstrain "Bip01 L UpperArm" y limit -80 80 0
	$jointconstrain "Bip01 L UpperArm" z limit -95 95 0

	$jointconstrain "Bip01 L Forearm" x limit 0 0 0
	$jointconstrain "Bip01 L Forearm" y limit -35 120 0
	$jointconstrain "Bip01 L Forearm" z limit -110 110 0

	$jointconstrain "Bip01 L Hand" x limit -110 110 0
	$jointconstrain "Bip01 L Hand" y limit -50 50 0
	$jointconstrain "Bip01 L Hand" z limit -90 90 0

	$jointconstrain "Bip01 Xtra03" x limit -4 70 0
	$jointconstrain "Bip01 Xtra03" y limit -10 10 0
	$jointconstrain "Bip01 Xtra03" z limit -10 10 0

	$jointconstrain "Jaw" x limit -55 3 0
	$jointconstrain "Jaw" y limit -10 10 0
	$jointconstrain "Jaw" z limit -20 20 0

	$jointconstrain "Bip01 R Foot" x limit -80 80 0
	$jointconstrain "Bip01 R Foot" y limit -50 50 0
	$jointconstrain "Bip01 R Foot" z limit -50 50 0
}
