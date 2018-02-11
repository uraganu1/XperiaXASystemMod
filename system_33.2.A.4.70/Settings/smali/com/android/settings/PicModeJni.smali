.class public Lcom/android/settings/PicModeJni;
.super Ljava/lang/Object;
.source "PicModeJni.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PicModeJni$Hist;,
        Lcom/android/settings/PicModeJni$Range;
    }
.end annotation


# static fields
.field static sLibStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/PicModeJni;->sLibStatus:Z

    .line 89
    :try_start_0
    const-string/jumbo v1, "JNI_PQ"

    const-string/jumbo v2, "loadLibrary"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string/jumbo v1, "jni_pq"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 91
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 92
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v1, "JNI_PQ"

    const-string/jumbo v2, "UnsatisfiedLinkError"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/PicModeJni;->sLibStatus:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableColorEffect(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 163
    invoke-static {p0}, Lcom/android/settings/PicModeJni;->nativeEnableColorEffect(I)Z

    move-result v0

    return v0
.end method

.method public static enableDynamicContrast(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 157
    invoke-static {p0}, Lcom/android/settings/PicModeJni;->nativeEnableDynamicContrast(I)Z

    move-result v0

    return v0
.end method

.method private static native nativeEnableBlueLight(Z)Z
.end method

.method private static native nativeEnableColor(I)Z
.end method

.method private static native nativeEnableColorEffect(I)Z
.end method

.method private static native nativeEnableDynamicContrast(I)Z
.end method

.method private static native nativeEnableGamma(I)Z
.end method

.method private static native nativeEnableOD(I)Z
.end method

.method private static native nativeEnablePQ(I)Z
.end method

.method private static native nativeEnableSharpness(I)Z
.end method

.method private static native nativeGetBlueLightStrength()I
.end method

.method private static native nativeGetCapability()I
.end method

.method private static native nativeGetColorEffectIndex()I
.end method

.method private static native nativeGetColorEffectIndexRange(Lcom/android/settings/PicModeJni$Range;)V
.end method

.method private static native nativeGetContrastIndex()I
.end method

.method private static native nativeGetContrastIndexRange(Lcom/android/settings/PicModeJni$Range;)V
.end method

.method private static native nativeGetDynamicContrastHistogram([BIILcom/android/settings/PicModeJni$Hist;)V
.end method

.method private static native nativeGetDynamicContrastIndex()I
.end method

.method private static native nativeGetDynamicContrastIndexRange(Lcom/android/settings/PicModeJni$Range;)V
.end method

.method private static native nativeGetGammaIndexRange(Lcom/android/settings/PicModeJni$Range;)V
.end method

.method private static native nativeGetPicBrightnessIndex()I
.end method

.method private static native nativeGetPicBrightnessIndexRange(Lcom/android/settings/PicModeJni$Range;)V
.end method

.method private static native nativeGetPictureMode()I
.end method

.method private static native nativeGetSaturationIndex()I
.end method

.method private static native nativeGetSaturationIndexRange(Lcom/android/settings/PicModeJni$Range;)V
.end method

.method private static native nativeGetSharpnessIndex()I
.end method

.method private static native nativeGetSharpnessIndexRange(Lcom/android/settings/PicModeJni$Range;)V
.end method

.method private static native nativeIsBlueLightEnabled()Z
.end method

.method private static native nativeSetBlueLightStrength(I)Z
.end method

.method private static native nativeSetCameraPreviewMode()V
.end method

.method private static native nativeSetColorEffectIndex(I)V
.end method

.method private static native nativeSetColorRegion(IIIII)Z
.end method

.method private static native nativeSetContrastIndex(I)V
.end method

.method private static native nativeSetDynamicContrastIndex(I)V
.end method

.method private static native nativeSetGalleryNormalMode()V
.end method

.method private static native nativeSetGammaIndex(I)V
.end method

.method private static native nativeSetPicBrightnessIndex(I)V
.end method

.method private static native nativeSetPictureMode(I)Z
.end method

.method private static native nativeSetSaturationIndex(I)V
.end method

.method private static native nativeSetSharpnessIndex(I)V
.end method

.method private static native nativeSetVideoPlaybackMode()V
.end method

.method public static setPictureMode(I)Z
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 186
    invoke-static {p0}, Lcom/android/settings/PicModeJni;->nativeSetPictureMode(I)Z

    move-result v0

    return v0
.end method
