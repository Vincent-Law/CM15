// Xenomorph Drone Player Model
$modelname "player/xeno_drone/xeno_drone.mdl"


// === BODYGROUPS (keep all of these) ===
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

// [Keep all other bodygroups as in original]

$surfaceprop "alienflesh"
$contents "solid"
$illumposition 0 55.873 46.772

$cdmaterials "models\cpthazama\avp\xeno\warrior\"
$cdmaterials "models\cpthazama\avp\xeno\drone\"

// === ATTACHMENTS ===
$attachment "eyes" "Bip01 Head" 0 0 0 rotate -75 -90 180
$attachment "forward" "Bip01 Head" 0 5 0 rotate 0 0 0  // Added for player orientation
$attachment "anim_attachment_RH" "Bip01 R Hand" 0 0 0 rotate 0 0 0
$attachment "anim_attachment_LH" "Bip01 L Hand" 0 0 0 rotate 0 0 0

$bbox -139.227 -37.601 -0.577 27.482 37.601 94.121

// === HITBOXES (keep all) ===
$hboxset "default"
// [Keep all $hbox lines from original]

// === BONES (keep all) ===
// [Keep all $definebone lines from original]

// === PHYSICS MODEL ===
$collisionjoints "drone_physics.smd"
{
	$mass 150
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
	$rootbone "Bip01 Pelvis"
	$concave
	$maxconvexpieces 1
	// [Keep all joint constraints from your document]
}

// === POSE PARAMETERS ===
$poseparameter "move_yaw" -180 180 loop 360
$poseparameter "move_x" -1 1 loop 0
$poseparameter "move_y" -1 1 loop 0

// === IK CHAINS ===
$ikchain "lhand" "Bip01 L Hand" knee 0.727 0 0.686
$ikchain "lfoot" "Bip01 L Foot" knee 0.809 0 -0.588
$ikchain "rhand" "Bip01 R Hand" knee 0.731 0 -0.683
$ikchain "rfoot" "Bip01 R Foot" knee 0.802 0.597 0

// === PLAYER SEQUENCES ===

// Basic idle
$sequence "idle" {
    "drone_anims\standing_idle.smd"
    fps 30
    loop
    ACT_IDLE 1
    ACT_IDLE_ANGRY 1
    ACT_IDLE_SMG1 1
    ACT_IDLE_PISTOL 1
}
//												start walk
// Define the animations WITHOUT IK rules for player models
$animation "walk_s_0" "drone_anims\walk_s_0.smd" {
	fps 30
	loop
	walkframe 24 LX
}

$animation "walk_s_45l" "drone_anims\walk_s_45l.smd" {
	fps 30
	loop
	walkframe 24 LX LY
}

$animation "walk_s_45r" "drone_anims\walk_s_45r.smd" {
	fps 30
	loop
	walkframe 24 LX LY
}

$animation "walk_s_90l" "drone_anims\walk_s_90l.smd" {
	fps 30
	loop
	walkframe 20 LY
}

$animation "walk_s_90r" "drone_anims\walk_s_90r.smd" {
	fps 30
	loop
	walkframe 20 LY
}

$animation "walk_s_315l" "drone_anims\walk_s_315l.smd" {
	fps 30
	loop
	walkframe 24 LX LY
}

$animation "walk_s_315r" "drone_anims\walk_s_315r.smd" {
	fps 30
	loop
	walkframe 24 LX LY
}

$animation "walk_s_180" "drone_anims\walk_s_180.smd" {
	fps 30
	loop
	walkframe 24 LX
}

// Now the walk SEQUENCE using these animations
$sequence "walk" {
    "drone_anims\walk_s_0.smd"
    fps 30
    loop
    LX LY
    ACT_WALK 1
    ACT_WALK_AIM 1
    ACT_WALK_CROUCH 1
    ACT_WALK_CROUCH_AIM 1
}
//													end of walk

$sequence "ragdoll" {
    "drone_anims\standing_idle.smd"
    fps 30
    ACT_DIERAGDOLL 1
}


$sequence "run" {
    "drone_anims\standing_sprint.smd"
    fps 30
    loop
    LX LY
    ACT_RUN 1
    ACT_RUN_AIM 1
    ACT_RUN_CROUCH 1
    ACT_RUN_CROUCH_AIM 1
}

$sequence "crouchidle" {
    "drone_anims\idle.smd"
    fps 30
    loop
    ACT_CROUCHIDLE 1
    ACT_COVER_LOW 1
}

$sequence "crouch_walk" {
    "drone_anims\sneak_0.smd"
    fps 30
    loop
    LX LY
    ACT_WALK_CROUCH 1
    ACT_WALK_CROUCH_AIM 1
}


// Jump
$sequence "jump" {
    "drone_anims\ai_standing_jump_fwd.smd"
    fps 30
    ACT_JUMP 1
}

// Swimming (placeholders for now)
$sequence "swim_idle" {
	"drone_anims\standing_idle.smd"
	fps 30
	loop
}

$sequence "swim" {
	"drone_anims\ai_standing_walk.smd"
	fps 30
	loop
	LX LY
}

// $sequence "death" {
// 	"drone_anims\death_01_instant.smd"
// 	fps 30
// }

$includemodel "humans/male_shared.mdl"