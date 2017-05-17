.class public Lcom/sonyericsson/camera/CameraIntent;
.super Ljava/lang/Object;
.source "CameraIntent.java"


# static fields
.field public static final EXTRA_CAPTURING_MODE:Ljava/lang/String; = "com.sonyericsson.camera.intent.extra.CAPTURING_MODE"

.field public static final EXTRA_FACING:Ljava/lang/String; = "facing"

.field public static final MIME_TYPE:Ljava/lang/String; = "image/mpo"

.field public static final MODE_3D_PANORAMA:Ljava/lang/String; = "3D_panorama"

.field public static final MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final MODE_MANUAL:Ljava/lang/String; = "manual"

.field public static final MODE_MULTI_ANGLE:Ljava/lang/String; = "multi_angle"

.field public static final MODE_SCENE:Ljava/lang/String; = "scene_recognition"

.field public static final MODE_SMILE:Ljava/lang/String; = "smile_detection"

.field public static final MODE_SWEEP_PANORAMA:Ljava/lang/String; = "sweep_panorama"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
