#define LOG_TAG "color_fmt"
#include <linux/kernel.h>
#include <asm-generic/bug.h>
#include "ddp_info.h"
#include "ddp_log.h"

char *unified_color_fmt_name(enum UNIFIED_COLOR_FMT fmt)
{
	switch (fmt) {
	case UFMT_Y8:
		return "Y8";
	case UFMT_RGBA4444:
		return "RGBA4444";
	case UFMT_RGBA5551:
		return "RGBA5551";
	case UFMT_RGB565:
		return "RGB565";
	case UFMT_BGR565:
		return "BGR565";
	case UFMT_RGB888:
		return "RGB888";
	case UFMT_BGR888:
		return "BGR888";
	case UFMT_RGBA8888:
		return "RGBA8888";
	case UFMT_BGRA8888:
		return "BGRA8888";
	case UFMT_ARGB8888:
		return "ARGB8888";
	case UFMT_ABGR8888:
		return "ABGR8888";
	case UFMT_RGBX8888:
		return "RGBX8888";
	case UFMT_BGRX8888:
		return "BGRX8888";
	case UFMT_XRGB8888:
		return "XRGB8888";
	case UFMT_XBGR8888:
		return "XBGR8888";
	case UFMT_AYUV:
		return "AYUV";
	case UFMT_YUV:
		return "YUV";
	case UFMT_UYVY:
		return "UYVY";
	case UFMT_VYUY:
		return "VYUY";
	case UFMT_YUYV:
		return "YUYV";
	case UFMT_YVYU:
		return "YVYU";
	case UFMT_UYVY_BLK:
		return "UYVY_BLK";
	case UFMT_VYUY_BLK:
		return "VYUY_BLK";
	case UFMT_YUY2_BLK:
		return "YUY2_BLK";
	case UFMT_YVYU_BLK:
		return "YVYU_BLK";
	case UFMT_YV12:
		return "YV12";
	case UFMT_I420:
		return "I420";
	case UFMT_YV16:
		return "YV16";
	case UFMT_I422:
		return "I422";
	case UFMT_YV24:
		return "YV24";
	case UFMT_I444:
		return "I444";
	case UFMT_NV12:
		return "NV12";
	case UFMT_NV21:
		return "NV21";
	case UFMT_NV12_BLK:
		return "NV12_BLK";
	case UFMT_NV21_BLK:
		return "NV21_BLK";
	case UFMT_NV12_BLK_FLD:
		return "NV12_BLK_FLD";
	case UFMT_NV21_BLK_FLD:
		return "NV21_BLK_FLD";
	case UFMT_NV16:
		return "NV16";
	case UFMT_NV61:
		return "NV61";
	case UFMT_NV24:
		return "NV24";
	case UFMT_NV42:
		return "NV42";
	default:
		return "fmt_unknown";
	}
}


static enum UNIFIED_COLOR_FMT display_engine_supported_color[] = {
	/* ovl/rdma supported */
	UFMT_RGB565, UFMT_BGR565,
	UFMT_RGB888, UFMT_BGR888,
	UFMT_RGBA8888, UFMT_BGRA8888,
	UFMT_ARGB8888, UFMT_ABGR8888,
	UFMT_XRGB8888, UFMT_RGBX8888,
	UFMT_UYVY, UFMT_VYUY,
	UFMT_YUYV, UFMT_YVYU,
	/* wdma supported */
	UFMT_YV12, UFMT_I420,
	UFMT_NV12, UFMT_NV21,
};

int is_unified_color_fmt_supported(enum UNIFIED_COLOR_FMT ufmt)
{
	int i;
	for (i = 0; i < ARRAY_SIZE(display_engine_supported_color); i++) {
		if (ufmt == display_engine_supported_color[i])
			return 1;
	}
	return 0;
}

enum UNIFIED_COLOR_FMT display_fmt_reg_to_unified_fmt(int fmt_reg_val, int swap)
{
	int i;
	enum UNIFIED_COLOR_FMT ufmt;
	for (i = 0; i < ARRAY_SIZE(display_engine_supported_color); i++) {
		ufmt = display_engine_supported_color[i];
		if (UFMT_GET_FORMAT(ufmt) == fmt_reg_val && UFMT_GET_SWAP(ufmt) == swap)
			return ufmt;
	}
	DDPERR("unknown_fmt fmt=%d, swap=%d\n", fmt_reg_val, swap);
	return UFMT_UNKNOWN;
}

enum UNIFIED_COLOR_FMT disp_fmt_to_unified_fmt(DISP_FORMAT src_fmt)
{
	switch (src_fmt) {
	case DISP_FORMAT_RGB565:
		return UFMT_RGB565;
	case DISP_FORMAT_RGB888:
		return UFMT_RGB888;
	case DISP_FORMAT_BGR888:
		return UFMT_BGR888;
	case DISP_FORMAT_ARGB8888:
		return UFMT_ARGB8888;
	case DISP_FORMAT_ABGR8888:
		return UFMT_ABGR8888;
	case DISP_FORMAT_RGBA8888:
		return UFMT_RGBA8888;
	case DISP_FORMAT_BGRA8888:
		return UFMT_BGRA8888;
	case DISP_FORMAT_YUV422:
		return UFMT_YUYV;
	case DISP_FORMAT_XRGB8888:
		return UFMT_XRGB8888;
	case DISP_FORMAT_XBGR8888:
		return UFMT_XBGR8888;
	case DISP_FORMAT_RGBX8888:
		return UFMT_RGBX8888;
	case DISP_FORMAT_BGRX8888:
		return UFMT_BGRX8888;
	case DISP_FORMAT_UYVY:
		return UFMT_UYVY;
	case DISP_FORMAT_YUV420_P:
		return UFMT_I420;
	case DISP_FORMAT_YV12:
		return UFMT_YV12;
	default:
		DDPERR("Invalid color format: 0x%x\n", src_fmt);
		BUG();
		return UFMT_UNKNOWN;
	}
}

int ufmt_disable_X_channel(enum UNIFIED_COLOR_FMT src_fmt, enum UNIFIED_COLOR_FMT *dst_fmt)
{
	int ret = 1;
	switch (src_fmt) {
	case UFMT_XRGB8888:
		*dst_fmt = UFMT_ARGB8888;
		break;
	case UFMT_XBGR8888:
		*dst_fmt = UFMT_ABGR8888;
		break;
	case UFMT_RGBX8888:
		*dst_fmt = UFMT_RGBA8888;
		break;
	case UFMT_BGRX8888:
		*dst_fmt = UFMT_BGRA8888;
		break;
	default:
		*dst_fmt = src_fmt;
		ret = 0;
		break;
	}
	return ret;
}

unsigned int ufmt_get_rgb(unsigned int fmt)
{
	return UFMT_GET_RGB(fmt);
}
unsigned int ufmt_get_bpp(unsigned int fmt)
{
	return UFMT_GET_bpp(fmt);
}
unsigned int ufmt_get_block(unsigned int fmt)
{
	return UFMT_GET_BLOCK(fmt);
}
unsigned int ufmt_get_vdo(unsigned int fmt)
{
	return UFMT_GET_VDO(fmt);
}
unsigned int ufmt_get_format(unsigned int fmt)
{
	return UFMT_GET_FORMAT(fmt);
}
unsigned int ufmt_get_swap(unsigned int fmt)
{
	return UFMT_GET_SWAP(fmt);
}
unsigned int ufmt_get_id(unsigned int fmt)
{
	return UFMT_GET_ID(fmt);
}
unsigned int ufmt_get_Bpp(unsigned int fmt)
{
	return UFMT_GET_Bpp(fmt);
}

