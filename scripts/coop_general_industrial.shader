//[202] chrissstrahl - BT Coop Specific file
//used in conjunction with modified BT bsp files for
//HaZardModding Coop Mod to fix shader issues that come from AA and BT handling it different

//textures/general_industrial/deckgrate_set1
//textures/general_industrial/verticalbrace
//textures/general_industrial/strangebrace1straight
//textures/general_industrial/strangebrace1
//textures/general_industrial/strangebrace1b
//textures/general_industrial/ibeam_flat2
//textures/general_industrial/ibeam_vert
//textures/general_industrial/jh_holeflr1
//textures/general_industrial/deckgrate_set1a

//textures/general_industrial/deckgrate_set1
textures/general_industrial/deckgrate_sbt1
{
	qer_editorimage textures/general_industrial/deckgrate_set1.tga
	qer_keyword wall
	qer_keyword floor
	qer_keyword masked
	qer_keyword rusted
	qer_keyword metal
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
//textures/general_industrial/verticalbrace
textures/general_industrial/verticalbrabt
{
	qer_editorimage textures/general_industrial/crossbrace_vert1.tga
	qer_keyword rusted
	qer_keyword metal
	qer_keyword masked
	surfaceParm metal
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
//textures/general_industrial/strangebrace1straight
textures/general_industrial/strangebrace1straigbt
{
	qer_editorimage textures/general_industrial/strngbrace_set1f.tga
	qer_keyword masked
	qer_keyword rusted
	qer_keyword metal
	surfaceParm metal
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
//textures/general_industrial/strangebrace1
textures/general_industrial/strangebrabt1
{
	qer_editorimage textures/general_industrial/strngbrace_set1.tga
	qer_keyword rusted
	qer_keyword metal
	qer_keyword masked
	surfaceParm metal
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
//textures/general_industrial/strangebrace1b
textures/general_industrial/strangebrabt1b
{
	qer_editorimage textures/general_industrial/strngbrace_set1b.tga
	qer_keyword rusted
	qer_keyword metal
	qer_keyword masked
	surfaceParm metal
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
//textures/general_industrial/ibeam_flat2
textures/general_industrial/ibeam_flbt2
{
	qer_keyword trim
	qer_keyword rusted
	qer_keyword metal
	surfaceParm metal
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
//textures/general_industrial/ibeam_vert
textures/general_industrial/ibeam_vebt
{
	qer_keyword trim
	qer_keyword rusted
	qer_keyword metal
	surfaceParm metal
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

//textures/general_industrial/jh_holeflr1
textures/general_industrial/jh_holefbt1
{
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
//textures/general_industrial/deckgrate_set1a
textures/general_industrial/deckgrate_sbt1a
{
	qer_editorimage textures/general_industrial/deckgrate_set1a.tga
	qer_keyword wall
	qer_keyword floor
	qer_keyword masked
	qer_keyword rusted
	qer_keyword metal
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


