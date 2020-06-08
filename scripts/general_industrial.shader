textures/general_industrial/wh_conc2b
{
	qer_keyword damaged
	qer_keyword wall
	qer_keyword concrete
	qer_keyword m5
	qer_keyword m6
	surfaceParm rock
	{
		map textures/general_industrial/wh_conc2b.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/wh_conc2c
{
	qer_keyword damaged
	qer_keyword wall
	qer_keyword concrete
	qer_keyword m5
	qer_keyword m6
	surfaceParm rock
	{
		map textures/general_industrial/wh_conc2c.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
} 

textures/general_industrial/heavy_bunkerdoors
{
	qer_keyword damaged
	qer_keyword wall
	qer_keyword concrete
	qer_keyword m5
	qer_keyword m6
	surfaceParm rock
	{
		map textures/general_industrial/heavy_bunkerdoors.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/verticalbrace
{
	qer_editorimage textures/general_industrial/crossbrace_vert1.tga
	qer_keyword rusted
	qer_keyword metal
	qer_keyword masked
	surfaceParm metal
	//surfaceparm wood //[200] chrissstrahl - this is misplaced
	surfaceParm fence //[200] chrissstrahl - added to fix texture overlap issues on aa maps
	surfaceParm alphashadow
	surfaceParm playerclip
	surfaceParm monsterclip
	surfaceParm nonsolid
	cull none
	nopicmip
	{
		map textures/general_industrial/crossbrace_vert1.tga
		alphaFunc GE128
		depthWrite
		nextbundle
		map $lightmap
	}
} 

textures/general_industrial/ironbar
{
	qer_editorimage textures/general_industrial/ironbar.tga
	qer_keyword rusted
	qer_keyword metal
	qer_keyword masked
	surfaceParm metal
	surfaceparm wood
	surfaceParm alphashadow
	surfaceParm playerclip
	surfaceParm monsterclip
	surfaceParm nonsolid
	cull none
	nopicmip
	{
		map textures/general_industrial/ironbar.tga
		alphaFunc GE128
		depthWrite
	nextbundle
		map $lightmap
	}
} 

textures/general_industrial/cable_wire
{
	qer_keyword special
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/cable_wire.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/deckgrate_set1trimd
{
	qer_editorimage textures/general_industrial/deckgrate_set1trimd.tga
	qer_keyword rusted
	qer_keyword metal
	qer_keyword masked
	surfaceParm metal
	surfaceparm wood
	surfaceParm alphashadow
	surfaceParm playerclip
	surfaceParm monsterclip
	surfaceParm nonsolid
	cull none
	nopicmip
	{
		map textures/general_industrial/deckgrate_set1trimd.tga
		alphaFunc GE128
		depthWrite
	nextbundle
		map $lightmap
	}
}

textures/general_industrial/railcar_wheels
{
	qer_keyword rusted
	qer_keyword metal
	qer_keyword masked
	surfaceParm metal
	surfaceparm wood
	surfaceParm alphashadow
	surfaceParm playerclip
	surfaceParm monsterclip
	surfaceParm nonsolid
	cull none
	nopicmip
	qer_editorimage textures/general_industrial/railcar_wheels.tga
	{
		map textures/general_industrial/railcar_wheels.tga
		alphaFunc GE128
		depthWrite
	nextbundle
		map $lightmap
	}
}

textures/general_industrial/strangebrace1straight
{
	qer_editorimage textures/general_industrial/strngbrace_set1f.tga
	qer_keyword masked
	qer_keyword rusted
	qer_keyword metal
	surfaceParm metal
	//surfaceparm wood //[200] chrissstrahl - this is misplaced
	surfaceParm fence //[200] chrissstrahl - added to fix texture overlap issues on aa maps
	surfaceParm alphashadow
	surfaceParm playerclip
	surfaceParm monsterclip
	surfaceParm nonsolid
	cull none
	nopicmip
	{
		map textures/general_industrial/strngbrace_set1f.tga
		alphaFunc GE128
		depthWrite
		nextbundle
		map $lightmap
	}
}

textures/general_industrial/strngbrace_set1f
{
	qer_editorimage textures/general_industrial/strngbrace_set1f.tga
	qer_keyword masked
	qer_keyword rusted
	qer_keyword metal
	surfaceParm metal
	surfaceparm wood
	surfaceParm alphashadow
	surfaceParm playerclip
	surfaceParm monsterclip
	surfaceParm nonsolid
	cull none
	nopicmip
	{
		map textures/general_industrial/strngbrace_set1f.tga
		alphaFunc GE128
		depthWrite
	nextbundle
		map $lightmap
	}
}

textures/general_industrial/crossbrace1
{
	qer_editorimage textures/general_industrial/crossbracing1_set1.tga
	qer_keyword metal
	qer_keyword rusted
	qer_keyword masked
	surfaceParm metal
	surfaceparm wood
	surfaceParm alphashadow
	surfaceParm playerclip
	surfaceParm monsterclip
	surfaceParm nonsolid
	nopicmip
//	cull front
	{
		map textures/general_industrial/crossbracing1_set1.tga
		alphaFunc GE128
		depthWrite
	nextbundle
		map $lightmap
	}
}

textures/general_industrial/crossbrace1a
{
	qer_editorimage textures/general_industrial/crossbracing1_set1a.tga
	qer_keyword rusted
	qer_keyword metal
	qer_keyword masked
	surfaceParm metal
	surfaceparm wood
	surfaceParm alphashadow
	surfaceParm playerclip
	surfaceParm monsterclip
	surfaceParm nonsolid
	nopicmip
//	cull front
	{
		map textures/general_industrial/crossbracing1_set1a.tga
		alphaFunc GE128
		depthWrite
	nextbundle
		map $lightmap
	}
}

textures/general_industrial/crossbrace1b
{
	qer_editorimage textures/general_industrial/crossbracing1_set1b.tga
	qer_keyword rusted
	qer_keyword metal
	qer_keyword masked
	surfaceParm metal
	surfaceparm wood
	surfaceParm alphashadow
	surfaceParm playerclip
	surfaceParm monsterclip
	surfaceParm nonsolid
	nopicmip
//	cull front
	{
		map textures/general_industrial/crossbracing1_set1b.tga
		alphaFunc GE128
		depthWrite
	nextbundle
		map $lightmap
	}
}

textures/general_industrial/strangebrace1
{
	qer_editorimage textures/general_industrial/strngbrace_set1.tga
	qer_keyword rusted
	qer_keyword metal
	qer_keyword masked
	surfaceParm metal
	//surfaceparm wood //[200] chrissstrahl - this is misplaced
	surfaceParm fence //[200] chrissstrahl - added to fix texture overlap issues on aa maps
	surfaceParm alphashadow
	surfaceParm playerclip
	surfaceParm monsterclip
	surfaceParm nonsolid
	cull none
	nopicmip
	{
		map textures/general_industrial/strngbrace_set1.tga
		alphaFunc GE128
		depthWrite
	nextbundle
		map $lightmap
	}
}

textures/general_industrial/strangebrace1a
{
	qer_editorimage textures/general_industrial/strngbrace_set1a.tga
	qer_keyword rusted
	qer_keyword metal
	qer_keyword masked
	surfaceParm metal
	surfaceparm wood
	surfaceParm alphashadow
	surfaceParm playerclip
	surfaceParm monsterclip
	surfaceParm nonsolid
	cull none
	nopicmip
	{
		map textures/general_industrial/strngbrace_set1a.tga
		alphaFunc GE128
		depthWrite
	nextbundle
		map $lightmap
	}
}

textures/general_industrial/strangebrace1b
{
	qer_editorimage textures/general_industrial/strngbrace_set1b.tga
	qer_keyword rusted
	qer_keyword metal
	qer_keyword masked
	surfaceParm metal
	//surfaceparm wood //[200] chrissstrahl - this is misplaced
	surfaceParm fence //[200] chrissstrahl - added to fix texture overlap issues on aa maps
	surfaceParm alphashadow
	surfaceParm playerclip
	surfaceParm monsterclip
	surfaceParm nonsolid
	cull none
	nopicmip
	{
		map textures/general_industrial/strngbrace_set1b.tga
		alphaFunc GE128
		depthWrite
	nextbundle
		map $lightmap
	}
}

textures/general_industrial/ibeam_flat2
{
	qer_keyword trim
	qer_keyword rusted
	qer_keyword metal
	surfaceParm metal
	surfaceParm fence //[200] chrissstrahl - added to fix texture overlap issues on aa maps
	{
		map textures/general_industrial/ibeam_flat2.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
} 

textures/general_industrial/ibeam_flat2_normal
{
	qer_editorimage textures/general_industrial/ibeam_flat2.tga
	qer_keyword trim
	qer_keyword rusted
	qer_keyword metal
	surfaceParm metal
	{
		map textures/general_industrial/ibeam_flat2.tga
		rgbGen identity
		depthWrite
	nextbundle
		map $lightmap
	}
} 

textures/general_industrial/utilbox2_side_pulse
{
	qer_editorimage textures/general_industrial/utilbox2_side.tga
	qer_keyword trim
	qer_keyword metal
	surfaceParm metal
	{
		map textures/general_industrial/utilbox2_side.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
	{ // pulsating layer
		map textures/models/items/pulse.tga
		blendFunc GL_SRC_ALPHA GL_ONE // this is an additive blend that uses alpha
		rgbGen wave sin 0.25 0.25 0 0.75
		alphaGen distFade 1024 512 // this makes the pulsating fade when you go away from it
	}
} 

textures/general_industrial/utilbox2_frnt_pulse
{
	qer_editorimage textures/general_industrial/utilbox2_frnt.tga
	qer_keyword trim
	qer_keyword metal
	surfaceParm metal
	{
		map textures/general_industrial/utilbox2_frnt.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
	{ // pulsating layer
		map textures/models/items/pulse.tga
		blendFunc GL_SRC_ALPHA GL_ONE // this is an additive blend that uses alpha
		rgbGen wave sin 0.25 0.25 0 0.75
		alphaGen distFade 1024 512 // this makes the pulsating fade when you go away from it
	}
} 


textures/general_industrial/utilbox2_side
{
	qer_keyword trim
	qer_keyword metal
	surfaceParm metal
	{
		map textures/general_industrial/utilbox2_side.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
} 

textures/general_industrial/utilbox2_frnt
{
	qer_keyword trim
	qer_keyword metal
	surfaceParm metal
	{
		map textures/general_industrial/utilbox2_frnt.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
} 

textures/general_industrial/utilbox2_top
{
	qer_keyword trim
	qer_keyword metal
	surfaceParm metal
	{
		map textures/general_industrial/utilbox2_top.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
} 

textures/general_industrial/utilbox2_frntdamg
{
	qer_keyword trim
	qer_keyword metal
	surfaceParm metal
	{
		map textures/general_industrial/utilbox2_frntdamg.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/ibeam_vert
{
	qer_keyword trim
	qer_keyword rusted
	qer_keyword metal
	surfaceParm metal
	surfaceParm fence //[200] chrissstrahl - added to fix texture overlap issues on aa maps
	cull none
	{
		map textures/general_industrial/ibeam_vert.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/ibeam_vert_normal
{
	qer_editorimage textures/general_industrial/ibeam_vert.tga
	qer_keyword trim
	qer_keyword rusted
	qer_keyword metal
	surfaceParm metal
	{
		map textures/general_industrial/ibeam_vert.tga
		rgbGen identity
		depthWrite
	nextbundle
		map $lightmap
	}
}

textures/general_industrial/jh_pipeend1
{
	qer_keyword pipe
	qer_keyword trim
	qer_keyword rusted
	qer_keyword metal
	qer_keyword special
	surfaceParm metal
	{
		map textures/general_industrial/jh_pipeend1.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/jh_rustpipe1
{
	qer_keyword pipe
	qer_keyword flat
	qer_keyword rusted
	qer_keyword metal
	surfaceParm metal
	{
		map textures/general_industrial/jh_rustpipe1.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/jh_holeflr1
{
	surfaceparm metal //[200] chrissstrahl - changed to metal, because there is no woddy here
	surfaceParm fence //[200] chrissstrahl - added to fix texture overlap issues on aa maps
	cull none
	nopicmip
	qer_editorimage textures/general_industrial/jh_holeflr1.tga
	{
		map textures/general_industrial/jh_holeflr1.tga
		alphaFunc GE128
		depthWrite
	nextbundle
		map $lightmap
	}
}
textures/general_industrial/jh_holeflr1_sh
{
	surfaceParm metal
	cull none
	nopicmip
	qer_editorimage textures/general_industrial/jh_holeflr1.tga
	{
		map textures/general_industrial/jh_holeflr1.tga
		depthWrite
	nextbundle
		map $lightmap
	}
}
textures/general_industrial/jh_rivplate1a
{
	surfaceparm wood
	cull none
	nopicmip
	{
		map textures/general_industrial/jh_rivplate1a.tga
		alphaFunc GE128
		depthWrite
	nextbundle
		map $lightmap
	}
}

textures/general_industrial/jh_pipe1wet
{
	surfaceparm metal

	{
		map textures/general_industrial/pipeenv.tga
		tcGen environment
	}
	{
		map textures/general_industrial/jh_pipe1wet.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
}

textures/general_industrial/rrtieenv
{
	qer_keyword trim
	qer_keyword metal
	surfaceParm metal
	{
		map textures/special/silverenv.tga
		tcGen environment
	}
	{
		map textures/general_industrial/rrtieenv.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
}

textures/general_industrial/jh_barrel1
{
	qer_keyword pipe
	qer_keyword special
	qer_keyword metal
	qer_keyword rusted
	surfaceParm metal
	{
		map textures/general_industrial/jh_barrel1.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/jh_barrel1a
{
	qer_keyword special
	qer_keyword rusted
	qer_keyword pipe
	qer_keyword metal
	surfaceParm metal
	{
		map textures/general_industrial/jh_barrel1a.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/jh_barreltop1
{
	qer_keyword special
	qer_keyword rusted
	qer_keyword pipe
	qer_keyword metal
	surfaceParm metal
	{
		map textures/general_industrial/jh_barreltop1.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/jh_barrelbottom1
{
	qer_keyword special
	qer_keyword rusted
	qer_keyword pipe
	qer_keyword metal
	surfaceParm metal
	{
		map textures/general_industrial/jh_barrelbottom1.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/jh_barrelbottom2
{
	qer_keyword special
	qer_keyword rusted
	qer_keyword pipe
	qer_keyword metal
	surfaceParm metal
	{
		map textures/general_industrial/jh_barrelbottom2.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/jh_barrelbottom3
{
	qer_keyword special
	qer_keyword rusted
	qer_keyword pipe
	qer_keyword metal
	surfaceParm metal
	{
		map textures/general_industrial/jh_barrelbottom3.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/jh_barrel3
{
	qer_keyword special
	qer_keyword rusted
	qer_keyword pipe
	qer_keyword metal
	surfaceParm metal
	{
		map textures/general_industrial/jh_barrel3.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/jh_barrel2
{
	qer_keyword special
	qer_keyword rusted
	qer_keyword pipe
	qer_keyword metal
	surfaceParm metal
	{
		map textures/general_industrial/jh_barrel2.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/jh_rusty1
{
	qer_keyword panel
	qer_keyword signs
	qer_keyword rusted
	qer_keyword metal
	surfaceParm metal
	{
		map textures/general_industrial/jh_rusty1.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/whs_heatingunit_frnt
{
	qer_keyword panel
	qer_keyword metal
	surfaceParm metal
	{
		map textures/general_industrial/whs_heatingunit_frnt.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/whs_heatingunit_side
{
	qer_keyword panel
	qer_keyword metal
	surfaceParm metal
	{
		map textures/general_industrial/whs_heatingunit_side.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/deckgrate_set1
{
	qer_editorimage textures/general_industrial/deckgrate_set1.tga
	qer_keyword wall
	qer_keyword floor
	qer_keyword masked
	qer_keyword rusted
	qer_keyword metal
	//surfaceparm wood //[200] chrissstrahl - this is misplaced
	surfaceParm fence //[200] chrissstrahl - added to fix texture overlap issues on aa maps
	surfaceparm metal
	surfaceParm nomarks
	surfaceParm grill
	surfaceParm nonsolid
	surfaceparm playerclip
	surfaceparm monsterclip
//	surfaceparm alphashadow
	cull none
	nopicmip
	nomipmaps
	{
		map textures/general_industrial/deckgrate_set1.tga
		alphaFunc GE128
		depthWrite
	nextbundle
		map $lightmap
	}
}
textures/general_industrial/deckgrate_set1a
{
	qer_editorimage textures/general_industrial/deckgrate_set1a.tga
	qer_keyword wall
	qer_keyword floor
	qer_keyword masked
	qer_keyword rusted
	qer_keyword metal
//	surfaceparm wood //[200] chrissstrahl - removed to fix texture overlap issues
	surfaceparm metal
	surfaceParm nomarks
	surfaceParm grill
//	surfaceparm alphashadow
	cull none
	nopicmip
	{
		map textures/general_industrial/deckgrate_set1a.tga
		alphaFunc GE128
		depthWrite
	nextbundle
		map $lightmap
	}
}
textures/general_industrial/deckgrate_set1b
{
	qer_editorimage textures/general_industrial/deckgrate_set1b.tga
	qer_keyword wall
	qer_keyword floor
	qer_keyword masked
	qer_keyword rusted
	qer_keyword metal
//	surfaceparm wood
//	surfaceParm nomarks
	surfaceparm metal
//	surfaceparm alphashadow
	cull none
	nopicmip
	{
		map textures/general_industrial/deckgrate_set1b.tga
		alphaFunc GE128
		depthWrite
	nextbundle
		map $lightmap
	}
}

textures/general_industrial/jh_ruststain1
{
	qer_keyword rusted
	qer_keyword concrete
	qer_keyword special
	surfaceparm rock
	surfaceparm wood
	cull none
	qer_editorimage textures/general_industrial/jh_ruststain1.tga
	{
		map textures/general_industrial/jh_ruststain1.tga
		alphaFunc GE128
		depthWrite
	nextbundle
		map $lightmap
	}
}

textures/general_industrial/ge_wires_para
{
	qer_keyword trim
	qer_keyword pipe
	qer_keyword metal
	surfaceParm metal
	//surfaceparm wood
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm noimpact
	cull none
	nomipmaps
	nopicmip
	{
		map textures/general_industrial/ge_wires_para.tga
		alphaFunc GE128
		depthWrite
		nextbundle
		map $lightmap
	}
}

textures/general_industrial/wires3_barn
{
	qer_keyword metal
	qer_keyword pipe
	qer_keyword masked
    qer_editorimage textures/general_industrial/wires3_barn.tga
	surfaceParm metal
	//surfaceparm wood
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm nomarks
	surfaceparm noimpact
	cull none
	nomipmaps
	nopicmip
	{
		map textures/general_industrial/wires3_barn.tga
		alphaFunc GE128
		depthWrite
		nextbundle
		map $lightmap
	}
}

textures/general_industrial/step_edge
{
	qer_keyword metal
	qer_keyword trim
	surfaceParm metal
	cull none
	{
		map textures/general_industrial/step_edge.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
} 

textures/general_industrial/crossplate
{
	qer_keyword m1
	qer_keyword trim
	qer_keyword rusted
	qer_keyword metal
	surfaceParm metal
	{
		map textures/general_industrial/crossplate.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/crossbracing1_set1spl
{
	qer_keyword rusted
	qer_keyword metal
	qer_keyword special
	surfaceparm wood
	surfaceParm metal
	surfaceParm alphashadow
	qer_editorimage textures/general_industrial/crossbracing1_set1spl.tga
	cull none
	{
		map textures/general_industrial/crossbracing1_set1spl.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/basecrete_seem_paint
{
	qer_keyword indoor
	qer_keyword concrete
	surfaceparm rock
	{
		map textures/general_industrial/basecrete_seem_paint.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/basecrete_seem_pitted
{
	qer_keyword indoor
	qer_keyword concrete
	surfaceparm rock
	{
		map textures/general_industrial/basecrete_seem_pitted.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/basecrete_seem_pit2
{
	qer_keyword indoor
	qer_keyword concrete
	surfaceparm rock
	{
		map textures/general_industrial/basecrete_seem_pit2.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/shmconc_bases
{
	qer_keyword damaged
	qer_keyword wall
	qer_keyword concrete
	qer_keyword m5
	qer_keyword m6
	surfaceParm rock
	{
		map textures/general_industrial/shmconc_bases.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/shmconc_grn1spipe
{
	qer_keyword damaged
	qer_keyword wall
	qer_keyword concrete
	qer_keyword m5
	qer_keyword m6
	surfaceParm rock
	{
		map textures/general_industrial/shmconc_grn1spipe.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/shmconc_grn1strnst
{
	qer_keyword damaged
	qer_keyword wall
	qer_keyword concrete
	qer_keyword m5
	qer_keyword m6
	surfaceParm rock
	{
		map textures/general_industrial/shmconc_grn1strnst.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/shmconc_grn1s_0
{
	qer_editorimage textures/general_industrial/shmconc_grn1s.tga
	qer_keyword damaged
	qer_keyword wall
	qer_keyword concrete
	qer_keyword m5
	qer_keyword m6
	surfaceParm rock
	{
		map textures/general_industrial/shmconc_grn1s.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/industrialgrate1_sml
{
	qer_keyword wall
	qer_keyword metal
	qer_keyword rusted
	qer_keyword m5
	qer_keyword m6
    qer_editorimage textures/general_industrial/industrialgrate1_sml.tga
	surfaceparm wood
	cull none
	{
		map textures/general_industrial/industrialgrate1_sml.tga
		alphaFunc GE128
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/industrialgrate1
{
	qer_keyword wall
	qer_keyword metal
	qer_keyword rusted
	qer_keyword m5
	qer_keyword m6
    	qer_editorimage textures/general_industrial/industrialgrate1.tga
	surfaceParm metal
	cull none
	{
		map textures/general_industrial/industrialgrate1.tga
		blendFunc blend
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/shmpipe_base
{
	qer_keyword m5
	qer_keyword m6
	qer_keyword metal
	qer_keyword rusted
	qer_keyword pipe
	surfaceparm metal
	{
		map textures/general_industrial/shmpipe_base.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/shmpipe_lite
{
	qer_keyword m6
	qer_keyword m5
	qer_keyword rusted
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/shmpipe_lite.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/shmpipe_grey
{
	qer_keyword m6
	qer_keyword m5
	qer_keyword rusted
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/shmpipe_grey.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/shmpipe_grn
{
	qer_keyword pipe
	qer_keyword m6
	qer_keyword m5
	qer_keyword rusted
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/shmpipe_grn.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/shmpipe_blk
{
	qer_keyword m6
	qer_keyword m5
	qer_keyword rusted
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/shmpipe_blk.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/ventgrill
{
	qer_editorimage textures/general_industrial/vent_grill1.tga
	qer_keyword wall
	qer_keyword metal
	qer_keyword rusted
	qer_keyword m5
	qer_keyword m6
	qer_keyword masked
	surfaceParm wood
	cull none
	{
		map textures/general_industrial/vent_grill1.tga
		alphafunc GE128
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
}

textures/general_industrial/bunkervent_1
{
	qer_keyword masked
	qer_keyword metal
	surfaceparm grill
	surfaceparm trans
	PolygonOffset
	{
		map textures/general_industrial/bunkervent_1.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/bnkrpipe1_iron
{
	qer_keyword m5
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/bnkrpipe1_iron.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/bnkrpipe1_ironrd
{
	qer_keyword m5
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/bnkrpipe1_ironrd.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/bnkrpipe1_blue
{
	qer_keyword m5
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/bnkrpipe1_blue.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/bnkrpipe1_red
{
	qer_keyword m5
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/bnkrpipe1_red.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/bnkrpipe1_yellow
{
	qer_keyword m5
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/bnkrpipe1_yellow.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/utilitybox_side
{
	qer_editorimage textures/general_industrial/utilboxside.tga
	qer_keyword m5
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/utilboxside.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/utilitybox_front
{
	qer_editorimage textures/general_industrial/utilboxfront.tga
	qer_keyword m5
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/utilboxfront.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/utilbox_side
{
	qer_editorimage textures/general_industrial/utilboxside.tga
	qer_keyword m5
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/utilboxside.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/utilbox_front
{
	qer_editorimage textures/general_industrial/utilboxfront.tga
	qer_keyword m5
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/utilboxfront.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/bridgebeam
{
	qer_editorimage textures/general_industrial/rembridgebeam1.tga
	qer_keyword m5
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/rembridgebeam1.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/bridgebeam_core
{
	qer_editorimage textures/general_industrial/rembridge_beamcore.tga
	qer_keyword m5
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/rembridge_beamcore.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/rembridge_ibeamA
{
	qer_keyword m5
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/rembridge_ibeamA.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/rembridge_ibeamB
{
	qer_keyword m5
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/rembridge_ibeamB.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/rembridge_cross
{
	qer_keyword metal
	qer_keyword rusted
	qer_keyword masked
	surfaceParm metal
	surfaceparm wood
	surfaceParm alphashadow
	surfaceParm playerclip
	surfaceParm monsterclip
	surfaceParm nonsolid
	nopicmip
	qer_editorimage textures/general_industrial/rembridge_cross.tga
//	cull front
	{
		map textures/general_industrial/rembridge_cross.tga
		alphaFunc GE128
		depthWrite
	nextbundle
		map $lightmap
	}
}

textures/general_industrial/bridgeplank
{
	qer_keyword m5
	qer_keyword floor
	qer_keyword wood
	surfaceparm wood
	{
		map textures/general_industrial/bridgeplank.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/boiler2
{
	qer_keyword metal
	qer_keyword rusted
	qer_keyword masked
	surfaceParm metal
	surfaceparm wood
	surfaceParm alphashadow
	surfaceParm playerclip
	surfaceParm monsterclip
	surfaceParm nonsolid
	cull none
	qer_editorimage textures/general_industrial/boiler2.tga
	{
		map textures/general_industrial/boiler2.tga
		alphaFunc GE128
		depthWrite
		nextbundle
		map $lightmap
	}
}

textures/general_industrial/boilertop
{
	qer_keyword metal
	qer_keyword rusted
	surfaceParm metal
	surfaceParm playerclip
	surfaceParm monsterclip
	surfaceParm nonsolid
	cull back
	{
		map textures/general_industrial/boilertop.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}

}
//**************************************
//**************************************
//**************************************
//**************************************
//**************************************
textures/general_industrial/jh_pipe2
{
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/jh_pipe2.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/jh_pipe1
{
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/jh_pipe1.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/jh_pipe2wet
{
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/jh_pipe2wet.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/jh_pipeunion1
{

	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/jh_pipeunion1.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/jh_pipeunion1a
{

	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/jh_pipeunion1a.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}


textures/general_industrial/jh_pipeunion1b
{

	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/jh_pipeunion1b.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/jh_pipeunion2a
{

	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/jh_pipeunion2a.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/jh_pipeunion2b
{

	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/jh_pipeunion2b.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/jh_piperust_rt
{
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/jh_piperust_rt.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/jh_structriv1b
{
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/jh_structriv1b.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/jh_structriv1a
{
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/jh_structriv1a.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}


textures/general_industrial/jh_barreltop2
{
	qer_keyword pipe
	qer_keyword special
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/jh_barreltop2.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}


textures/general_industrial/jh_barreltop3
{
	qer_keyword special
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/jh_barreltop3.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/general_industrial/ventshaft_rustedge
{
	qer_keyword pipe
	qer_keyword flat
	qer_keyword rusted
	qer_keyword metal
	surfaceParm metal
	{
		map textures/general_industrial/ventshaft_rustedge.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
} 

textures/general_industrial/ventshaft_conexn
{
	qer_keyword pipe
	qer_keyword flat
	qer_keyword rusted
	qer_keyword metal
	surfaceParm metal
	{
		map textures/general_industrial/ventshaft_conexn.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
} 

textures/general_industrial/ventshaft_rusterans
{
	qer_keyword pipe
	qer_keyword flat
	qer_keyword rusted
	qer_keyword metal
	surfaceParm metal
	{
		map textures/general_industrial/ventshaft_rusterans.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
} 

textures/general_industrial/ventshaft_flat
{
	qer_keyword pipe
	qer_keyword flat
	qer_keyword rusted
	qer_keyword metal
	surfaceParm metal
	{
		map textures/general_industrial/ventshaft_flat.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
} 

textures/general_industrial/transform_accessry
{
	qer_editorimage textures/general_industrial/transform_accessry.tga
	qer_keyword metal
	qer_keyword rusted
	qer_keyword masked
	surfaceParm metal
	surfaceparm wood
	surfaceParm alphashadow
	surfaceParm playerclip
	surfaceParm monsterclip
	surfaceParm nonsolid
	nopicmip
//	cull front
	{
		map textures/general_industrial/crossbracing1_set1.tga
		blendfunc blend
		depthWrite
	nextbundle
		map $lightmap
	}
} 

textures/general_industrial/transform_accessry_winter
{
	qer_editorimage textures/general_industrial/transform_accessry_winter.tga
	qer_keyword metal
	qer_keyword rusted
	qer_keyword masked
	surfaceParm metal
	surfaceparm wood
	surfaceParm alphashadow
	surfaceParm playerclip
	surfaceParm monsterclip
	surfaceParm nonsolid
	nopicmip
//	cull front
	{
		map textures/general_industrial/crossbracing1_set1.tga
		blendfunc blend
		depthWrite
	nextbundle
		map $lightmap
	}
} 

textures/general_industrial/transform_sides
{
	qer_keyword special
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/transform_sides.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
} 

textures/general_industrial/transform_sides_winter
{
	qer_keyword special
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/transform_sides_winter.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
} 

textures/general_industrial/floordrain_bnkr
{
	qer_editorimage textures/general_industrial/floordrain_bnkr.tga
	qer_keyword rusted
	qer_keyword metal
	qer_keyword masked
	surfaceParm metal
	surfaceparm wood
	surfaceParm alphashadow
	cull none
	{
		map textures/general_industrial/floordrain_bnkr.tga
		alphaFunc GE128
		depthWrite
	nextbundle
		map $lightmap
	}
} 

textures/general_industrial/oiltank_sideplate
{
	qer_keyword special
	qer_keyword rusted
	qer_keyword pipe
	qer_keyword metal
	surfaceParm metal
	{
		map textures/general_industrial/oiltank_sideplate.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
} 

textures/general_industrial/wiresnstuff
{
	qer_keyword rusted
	qer_keyword metal
	qer_keyword masked
	surfaceParm metal
	surfaceparm wood
	surfaceParm alphashadow
	surfaceParm playerclip
	surfaceParm monsterclip
	surfaceParm nonsolid
	cull none
	nopicmip
	qer_editorimage textures/general_industrial/wiresnstuff.tga
	{
		map textures/general_industrial/wiresnstuff.tga
		alphaFunc GE128
		depthWrite
	nextbundle
		map $lightmap
	}
} 

textures/general_industrial/plaing_garage
{
	qer_keyword trim
	qer_keyword rusted
	qer_keyword metal
	surfaceParm metal
	cull none
	{
		map textures/general_industrial/plaing_garage.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
} 

textures/general_industrial/metaldoor_gen1red
{
	qer_keyword door
	qer_keyword metal
	surfaceParm metal
	cull none
	{
		map textures/general_industrial/metaldoor_gen1red.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
} 

textures/general_industrial/metaldoor_gen1plain
{
	qer_keyword door
	qer_keyword metal
	surfaceParm metal
	cull none
	{
		map textures/general_industrial/metaldoor_gen1plain.tga
		rgbGen identity
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
		depthFunc equal
	}
} 

textures/general_industrial/jh_pipe1_pulse
{
	qer_editorimage textures/general_industrial/jh_pipe1.tga
	qer_keyword pipe
	qer_keyword metal
	surfaceparm metal
	{
		map textures/general_industrial/jh_pipe1.tga
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
	{ // pulsating layer
		map textures/models/items/pulse.tga
		blendFunc GL_SRC_ALPHA GL_ONE // this is an additive blend that uses alpha
		rgbGen wave sin 0.25 0.25 0 0.75
		//rgbGen wave sin 0.15 0.075 0 0.75
		alphaGen distFade 1024 512 // this makes the pulsating fade when you go away from it
	}
} 

