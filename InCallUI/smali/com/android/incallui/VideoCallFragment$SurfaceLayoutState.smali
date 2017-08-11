.class final enum Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;
.super Ljava/lang/Enum;
.source "VideoCallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/VideoCallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SurfaceLayoutState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

.field public static final enum FULLSCREEN_CAMERA:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

.field public static final enum FULLSCREEN_VIDEO:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

.field public static final enum FULLSCREEN_VIDEO_THUMBNAIL_CAMERA:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

.field public static final enum NONE:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    new-instance v0, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    const-string/jumbo v1, "FULLSCREEN_VIDEO_THUMBNAIL_CAMERA"

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;-><init>(Ljava/lang/String;I)V

    .line 170
    sput-object v0, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->FULLSCREEN_VIDEO_THUMBNAIL_CAMERA:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    .line 171
    new-instance v0, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    const-string/jumbo v1, "FULLSCREEN_CAMERA"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;-><init>(Ljava/lang/String;I)V

    .line 172
    sput-object v0, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->FULLSCREEN_CAMERA:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    .line 173
    new-instance v0, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    const-string/jumbo v1, "FULLSCREEN_VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;-><init>(Ljava/lang/String;I)V

    .line 174
    sput-object v0, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->FULLSCREEN_VIDEO:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    .line 175
    new-instance v0, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;-><init>(Ljava/lang/String;I)V

    .line 176
    sput-object v0, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->NONE:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    .line 168
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    sget-object v1, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->FULLSCREEN_VIDEO_THUMBNAIL_CAMERA:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->FULLSCREEN_CAMERA:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->FULLSCREEN_VIDEO:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->NONE:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->$VALUES:[Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 168
    const-class v0, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->$VALUES:[Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    return-object v0
.end method
