.class public Lcom/android/incallui/VideoCallFragment;
.super Lcom/android/incallui/BaseFragment;
.source "VideoCallFragment.java"

# interfaces
.implements Lcom/android/incallui/VideoCallPresenter$VideoCallUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;,
        Lcom/android/incallui/VideoCallFragment$VideoCallState;,
        Lcom/android/incallui/VideoCallFragment$SurfaceLayout;,
        Lcom/android/incallui/VideoCallFragment$VideoCallSurface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/VideoCallPresenter;",
        "Lcom/android/incallui/VideoCallPresenter$VideoCallUi;",
        ">;",
        "Lcom/android/incallui/VideoCallPresenter$VideoCallUi;"
    }
.end annotation


# static fields
.field private static synthetic -com_android_incallui_VideoCallFragment$SurfaceLayoutStateSwitchesValues:[I

.field private static synthetic -com_android_incallui_VideoCallFragment$VideoCallStateSwitchesValues:[I

.field private static final TAG:Ljava/lang/String;

.field private static sDisplaySize:Landroid/graphics/Point;

.field private static sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

.field private static sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

.field private static sVideoSurfacesInUse:Z


# instance fields
.field private mAnimationDuration:I

.field private mCallPhotoBg:Landroid/graphics/drawable/Drawable;

.field private mCallPhotoDrawable:Landroid/graphics/drawable/Drawable;

.field private mCameraError:Z

.field private mCameraOff:Landroid/view/View;

.field private mDisplayPhoto:Landroid/widget/ImageView;

.field private mDisplayVideo:Landroid/view/TextureView;

.field private mFullScreenArrowButtonContainer:Landroid/view/View;

.field private final mFullScreenLayout:Lcom/android/incallui/VideoCallFragment$SurfaceLayout;

.field private mIsLandscape:Z

.field private mIsLayoutComplete:Z

.field private mIsZoomed:Z

.field private mPreviewPhoto:Landroid/widget/ImageView;

.field private mPreviewVideo:Landroid/view/TextureView;

.field private mPreviewVideoContainer:Landroid/widget/RelativeLayout;

.field private mSurfaceState:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

.field private mSurfaceUpdateNeeded:Z

.field private mSwitchFailureDialog:Landroid/app/AlertDialog;

.field private mThumbnailHeight:F

.field private final mThumbnailLayout:Lcom/android/incallui/VideoCallFragment$SurfaceLayout;

.field private mThumbnailMargin:F

.field private mThumbnailWidth:F

.field private mVideoCallLayout:Landroid/view/ViewGroup;

.field private mVideoCallState:Lcom/android/incallui/VideoCallFragment$VideoCallState;

.field private mVideoFramesReady:Z

.field private mVideoViews:Landroid/widget/RelativeLayout;

.field private mVideoViewsStub:Landroid/view/ViewStub;

.field private mZoomHandler:Lcom/android/incallui/SomcVideoShareZoom;


# direct methods
.method static synthetic -get0(Lcom/android/incallui/VideoCallFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/VideoCallFragment;->mAnimationDuration:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/incallui/VideoCallFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/VideoCallFragment;->mIsZoomed:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/incallui/VideoCallFragment;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideoContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/incallui/VideoCallFragment;)Lcom/android/incallui/VideoCallFragment$SurfaceLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mThumbnailLayout:Lcom/android/incallui/VideoCallFragment$SurfaceLayout;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/incallui/VideoCallFragment;)F
    .locals 1

    iget v0, p0, Lcom/android/incallui/VideoCallFragment;->mThumbnailMargin:F

    return v0
.end method

.method static synthetic -get5(Lcom/android/incallui/VideoCallFragment;)Lcom/android/incallui/VideoCallFragment$VideoCallState;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoCallState:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/incallui/VideoCallFragment;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/incallui/VideoCallFragment;)Lcom/android/incallui/SomcVideoShareZoom;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mZoomHandler:Lcom/android/incallui/SomcVideoShareZoom;

    return-object v0
.end method

.method private static synthetic -getcom_android_incallui_VideoCallFragment$SurfaceLayoutStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/incallui/VideoCallFragment;->-com_android_incallui_VideoCallFragment$SurfaceLayoutStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/VideoCallFragment;->-com_android_incallui_VideoCallFragment$SurfaceLayoutStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->values()[Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->FULLSCREEN_CAMERA:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->FULLSCREEN_VIDEO:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->FULLSCREEN_VIDEO_THUMBNAIL_CAMERA:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->NONE:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/incallui/VideoCallFragment;->-com_android_incallui_VideoCallFragment$SurfaceLayoutStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom_android_incallui_VideoCallFragment$VideoCallStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/incallui/VideoCallFragment;->-com_android_incallui_VideoCallFragment$VideoCallStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/VideoCallFragment;->-com_android_incallui_VideoCallFragment$VideoCallStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/VideoCallFragment$VideoCallState;->values()[Lcom/android/incallui/VideoCallFragment$VideoCallState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->DIALING:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->INCALL_RX:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->INCALL_TX:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->INCALL_VT:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->INCOMING_RX_REQUEST:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->INCOMING_VT:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->INCOMING_VT_REQUEST:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->NONE:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->REQUEST_TX:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->REQUEST_VT:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->SECOND_INCOMING_VT:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    sput-object v0, Lcom/android/incallui/VideoCallFragment;->-com_android_incallui_VideoCallFragment$VideoCallStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1

    :catch_a
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/incallui/VideoCallFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/VideoCallFragment;->mIsLayoutComplete:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/incallui/VideoCallFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/VideoCallFragment;->mIsZoomed:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/incallui/VideoCallFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment;->onLayoutDone()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const-class v0, Lcom/android/incallui/VideoCallFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/VideoCallFragment;->TAG:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/VideoCallFragment;->sVideoSurfacesInUse:Z

    .line 85
    sput-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    .line 86
    sput-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    .line 87
    sput-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySize:Landroid/graphics/Point;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 119
    iput-boolean v1, p0, Lcom/android/incallui/VideoCallFragment;->mIsLayoutComplete:Z

    .line 138
    new-instance v0, Lcom/android/incallui/VideoCallFragment$SurfaceLayout;

    invoke-direct {v0, v2}, Lcom/android/incallui/VideoCallFragment$SurfaceLayout;-><init>(Lcom/android/incallui/VideoCallFragment$SurfaceLayout;)V

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mFullScreenLayout:Lcom/android/incallui/VideoCallFragment$SurfaceLayout;

    .line 140
    new-instance v0, Lcom/android/incallui/VideoCallFragment$SurfaceLayout;

    invoke-direct {v0, v2}, Lcom/android/incallui/VideoCallFragment$SurfaceLayout;-><init>(Lcom/android/incallui/VideoCallFragment$SurfaceLayout;)V

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mThumbnailLayout:Lcom/android/incallui/VideoCallFragment$SurfaceLayout;

    .line 150
    sget-object v0, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->FULLSCREEN_VIDEO_THUMBNAIL_CAMERA:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mSurfaceState:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    .line 156
    sget-object v0, Lcom/android/incallui/VideoCallFragment$VideoCallState;->NONE:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoCallState:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    .line 166
    iput-boolean v1, p0, Lcom/android/incallui/VideoCallFragment;->mIsZoomed:Z

    .line 57
    return-void
.end method

.method private getSurfaceBoundaries()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1119
    const-string/jumbo v3, "getSurfaceBoundaries"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1120
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1121
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1122
    .local v2, "winSize":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1123
    new-instance v1, Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Point;->x:I

    invoke-direct {v1, v4, v4, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1124
    .local v1, "rect":Landroid/graphics/Rect;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSurfaceBoundaries: Surface boundaries rect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1125
    return-object v1
.end method

.method private inflateVideoCallViews()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const v9, 0x7f0f0100

    const v4, 0x7f0f00fe

    .line 937
    const-string/jumbo v0, "inflateVideoCallViews"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViewsStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 943
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    .line 944
    const v1, 0x7f0f00ff

    .line 943
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideoContainer:Landroid/widget/RelativeLayout;

    .line 945
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    const v1, 0x7f0f0102

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mCameraOff:Landroid/view/View;

    .line 946
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    const v1, 0x7f0f0101

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewPhoto:Landroid/widget/ImageView;

    .line 948
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/TextureView;

    .line 950
    .local v6, "displaySurface":Landroid/view/TextureView;
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mDisplayVideo:Landroid/view/TextureView;

    .line 951
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    const v1, 0x7f0f00fd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mDisplayPhoto:Landroid/widget/ImageView;

    .line 952
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideo:Landroid/view/TextureView;

    .line 954
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    .line 955
    const v1, 0x7f0f0103

    .line 954
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mFullScreenArrowButtonContainer:Landroid/view/View;

    .line 957
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    const v1, 0x7f0f00ec

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcVideoShareZoom;

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mZoomHandler:Lcom/android/incallui/SomcVideoShareZoom;

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "inflateVideoCallViews: sVideoSurfacesInUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/incallui/VideoCallFragment;->sVideoSurfacesInUse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 961
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySize:Landroid/graphics/Point;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getScreenSize()Landroid/graphics/Point;

    move-result-object v8

    .line 962
    .local v8, "screenSize":Landroid/graphics/Point;
    :goto_0
    invoke-direct {p0, v6, v8}, Lcom/android/incallui/VideoCallFragment;->setSurfaceSizeAndTranslation(Landroid/view/TextureView;Landroid/graphics/Point;)V

    .line 964
    sget-boolean v0, Lcom/android/incallui/VideoCallFragment;->sVideoSurfacesInUse:Z

    if-nez v0, :cond_3

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " inflateVideoCallViews screenSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 969
    new-instance v0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter;

    .line 970
    iget-object v3, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/TextureView;

    iget v4, v8, Landroid/graphics/Point;->x:I

    .line 971
    iget v5, v8, Landroid/graphics/Point;->y:I

    .line 969
    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;-><init>(Lcom/android/incallui/VideoCallPresenter;ILandroid/view/TextureView;II)V

    sput-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    .line 972
    new-instance v3, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    .line 973
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    .line 972
    const/4 v4, 0x2

    invoke-direct {v3, v0, v4, v1}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;-><init>(Lcom/android/incallui/VideoCallPresenter;ILandroid/view/TextureView;)V

    sput-object v3, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    .line 974
    sput-boolean v2, Lcom/android/incallui/VideoCallFragment;->sVideoSurfacesInUse:Z

    .line 985
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    .line 986
    .local v7, "observer":Landroid/view/ViewTreeObserver;
    new-instance v0, Lcom/android/incallui/VideoCallFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/VideoCallFragment$1;-><init>(Lcom/android/incallui/VideoCallFragment;)V

    invoke-virtual {v7, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1000
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/android/incallui/VideoCallFragment$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/VideoCallFragment$2;-><init>(Lcom/android/incallui/VideoCallFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1009
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideo:Landroid/view/TextureView;

    new-instance v1, Lcom/android/incallui/VideoCallFragment$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/VideoCallFragment$3;-><init>(Lcom/android/incallui/VideoCallFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 936
    .end local v6    # "displaySurface":Landroid/view/TextureView;
    .end local v7    # "observer":Landroid/view/ViewTreeObserver;
    .end local v8    # "screenSize":Landroid/graphics/Point;
    :cond_1
    return-void

    .line 961
    .restart local v6    # "displaySurface":Landroid/view/TextureView;
    :cond_2
    sget-object v8, Lcom/android/incallui/VideoCallFragment;->sDisplaySize:Landroid/graphics/Point;

    .restart local v8    # "screenSize":Landroid/graphics/Point;
    goto :goto_0

    .line 978
    :cond_3
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->recreateView(Landroid/view/TextureView;)V

    .line 980
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->recreateView(Landroid/view/TextureView;)V

    goto :goto_1
.end method

.method private inflateVideoUi(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 628
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 629
    .local v0, "visibility":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 631
    if-eqz p1, :cond_2

    .line 632
    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment;->inflateVideoCallViews()V

    .line 633
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 638
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 639
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 627
    :cond_0
    return-void

    .line 628
    .end local v0    # "visibility":I
    :cond_1
    const/16 v0, 0x8

    .restart local v0    # "visibility":I
    goto :goto_0

    .line 635
    :cond_2
    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->NONE:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    invoke-virtual {p0, v1}, Lcom/android/incallui/VideoCallFragment;->setVideoCallState(Lcom/android/incallui/VideoCallFragment$VideoCallState;)V

    goto :goto_1
.end method

.method private initSurfaceLayout(Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "surfaceRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1091
    const-string/jumbo v4, "initSurfaceLayout"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1092
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1093
    iget-object v4, p0, Lcom/android/incallui/VideoCallFragment;->mFullScreenLayout:Lcom/android/incallui/VideoCallFragment$SurfaceLayout;

    new-instance v5, Landroid/graphics/Point;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, v4, Lcom/android/incallui/VideoCallFragment$SurfaceLayout;->point:Landroid/graphics/Point;

    .line 1094
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800d1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    .line 1095
    .local v0, "appHeight":I
    iget-object v4, p0, Lcom/android/incallui/VideoCallFragment;->mFullScreenLayout:Lcom/android/incallui/VideoCallFragment$SurfaceLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1096
    mul-int/lit8 v6, v0, 0x4

    div-int/lit8 v6, v6, 0x3

    .line 1095
    invoke-direct {v5, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v5, v4, Lcom/android/incallui/VideoCallFragment$SurfaceLayout;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1097
    iget-object v4, p0, Lcom/android/incallui/VideoCallFragment;->mFullScreenLayout:Lcom/android/incallui/VideoCallFragment$SurfaceLayout;

    iget-object v4, v4, Lcom/android/incallui/VideoCallFragment$SurfaceLayout;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1105
    .end local v0    # "appHeight":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080148

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    .line 1110
    .local v1, "thumbPadding":I
    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/incallui/VideoCallFragment;->mThumbnailMargin:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/incallui/VideoCallFragment;->mThumbnailWidth:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 1111
    mul-int/lit8 v5, v1, 0x2

    .line 1110
    sub-int v2, v4, v5

    .line 1112
    .local v2, "thumbX":I
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080149

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 1113
    .local v3, "thumbY":I
    iget-object v4, p0, Lcom/android/incallui/VideoCallFragment;->mThumbnailLayout:Lcom/android/incallui/VideoCallFragment$SurfaceLayout;

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, v4, Lcom/android/incallui/VideoCallFragment$SurfaceLayout;->point:Landroid/graphics/Point;

    .line 1114
    iget-object v4, p0, Lcom/android/incallui/VideoCallFragment;->mThumbnailLayout:Lcom/android/incallui/VideoCallFragment$SurfaceLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/android/incallui/VideoCallFragment;->mThumbnailWidth:F

    float-to-int v6, v6

    .line 1115
    iget v7, p0, Lcom/android/incallui/VideoCallFragment;->mThumbnailHeight:F

    float-to-int v7, v7

    .line 1114
    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v5, v4, Lcom/android/incallui/VideoCallFragment$SurfaceLayout;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1090
    return-void

    .line 1099
    .end local v1    # "thumbPadding":I
    .end local v2    # "thumbX":I
    .end local v3    # "thumbY":I
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/VideoCallFragment;->mFullScreenLayout:Lcom/android/incallui/VideoCallFragment$SurfaceLayout;

    new-instance v5, Landroid/graphics/Point;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, v4, Lcom/android/incallui/VideoCallFragment$SurfaceLayout;->point:Landroid/graphics/Point;

    .line 1100
    iget-object v4, p0, Lcom/android/incallui/VideoCallFragment;->mFullScreenLayout:Lcom/android/incallui/VideoCallFragment$SurfaceLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1101
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    mul-int/lit8 v7, v7, 0x4

    div-int/lit8 v7, v7, 0x3

    .line 1100
    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v5, v4, Lcom/android/incallui/VideoCallFragment$SurfaceLayout;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1102
    iget-object v4, p0, Lcom/android/incallui/VideoCallFragment;->mFullScreenLayout:Lcom/android/incallui/VideoCallFragment$SurfaceLayout;

    iget-object v4, v4, Lcom/android/incallui/VideoCallFragment$SurfaceLayout;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method private isSurfacePresent(Landroid/view/View;)Z
    .locals 4
    .param p1, "surfaceView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1379
    if-nez p1, :cond_0

    .line 1380
    return v1

    .line 1383
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1384
    .local v0, "layout":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSurfacePresent layout.height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " layout.width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1385
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1384
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1386
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-lez v2, :cond_1

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private onLayoutDone()V
    .locals 1

    .prologue
    .line 1129
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallFragment;->mSurfaceUpdateNeeded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1129
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1130
    const-string/jumbo v0, "onLayoutDone: refresh surface needed"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1131
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViewsStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 1132
    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment;->updateSurfaceLayout()V

    .line 1134
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoCallLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1135
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoCallLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/VideoCallFragment;->mSurfaceUpdateNeeded:Z

    goto :goto_0
.end method

.method private onPresenterChanged(Lcom/android/incallui/VideoCallPresenter;)V
    .locals 2
    .param p1, "presenter"    # Lcom/android/incallui/VideoCallPresenter;

    .prologue
    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPresenterChanged: Presenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_0

    .line 720
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0, p1}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->resetPresenter(Lcom/android/incallui/VideoCallPresenter;)V

    .line 722
    :cond_0
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_1

    .line 723
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0, p1}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->resetPresenter(Lcom/android/incallui/VideoCallPresenter;)V

    .line 717
    :cond_1
    return-void
.end method

.method private setDisplayPhoto(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDisplayPhoto "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1424
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mCallPhotoDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 1425
    iput-object p1, p0, Lcom/android/incallui/VideoCallFragment;->mCallPhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 1426
    iput-object p2, p0, Lcom/android/incallui/VideoCallFragment;->mCallPhotoBg:Landroid/graphics/drawable/Drawable;

    .line 1428
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1429
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/VideoCallFragment;->setImageAndBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1421
    :cond_0
    return-void
.end method

.method private setImageAndBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1390
    const-string/jumbo v3, "setImageAndBackground"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1391
    const/4 v1, 0x0

    .line 1393
    .local v1, "cState":Landroid/graphics/drawable/Drawable$ConstantState;
    iget-object v3, p0, Lcom/android/incallui/VideoCallFragment;->mDisplayPhoto:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    .line 1394
    return-void

    .line 1397
    :cond_0
    if-eqz p1, :cond_1

    .line 1398
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 1399
    .local v1, "cState":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_1

    .line 1400
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1401
    .local v2, "clone":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v3, "setImageAndBackground ... setImageDrawable"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1402
    iget-object v3, p0, Lcom/android/incallui/VideoCallFragment;->mDisplayPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1406
    .end local v1    # "cState":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v2    # "clone":Landroid/graphics/drawable/Drawable;
    :cond_1
    if-eqz p2, :cond_2

    .line 1407
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 1408
    .restart local v1    # "cState":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_2

    .line 1409
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1410
    .local v0, "bgClone":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/incallui/VideoCallFragment;->mDisplayPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1413
    .end local v0    # "bgClone":Landroid/graphics/drawable/Drawable;
    .end local v1    # "cState":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/VideoCallFragment;->mDisplayPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->invalidate()V

    .line 1389
    return-void
.end method

.method private setSurfaceLayoutState(Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;)V
    .locals 0
    .param p1, "state"    # Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/android/incallui/VideoCallFragment;->mSurfaceState:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    .line 1184
    return-void
.end method

.method private setSurfaceSizeAndTranslation(Landroid/view/TextureView;Landroid/graphics/Point;)V
    .locals 8
    .param p1, "textureView"    # Landroid/view/TextureView;
    .param p2, "size"    # Landroid/graphics/Point;

    .prologue
    const/16 v7, 0xf

    const/4 v6, 0x6

    const/4 v5, -0x1

    .line 1049
    invoke-virtual {p1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1053
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/incallui/VideoCallFragment;->mDisplayVideo:Landroid/view/TextureView;

    if-ne p1, v4, :cond_3

    .line 1054
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1055
    .local v0, "activeCall":Lcom/android/incallui/Call;
    const/4 v3, -0x1

    .line 1056
    .local v3, "width":I
    const/4 v1, -0x1

    .line 1057
    .local v1, "height":I
    if-eqz v0, :cond_0

    .line 1058
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPeerVideoState()Lcom/android/incallui/Call$PeerVideoState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/Call$PeerVideoState;->getPeerDimensionWidth()I

    move-result v3

    .line 1059
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPeerVideoState()Lcom/android/incallui/Call$PeerVideoState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/Call$PeerVideoState;->getPeerDimensionHeight()I

    move-result v1

    .line 1062
    :cond_0
    if-eq v3, v5, :cond_1

    .line 1063
    if-eq v1, v5, :cond_1

    .line 1064
    iget v4, p2, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v3

    iget v5, p2, Landroid/graphics/Point;->x:I

    mul-int/2addr v5, v1

    if-le v4, v5, :cond_4

    .line 1065
    iget v4, p2, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v1

    div-int/2addr v4, v3

    iput v4, p2, Landroid/graphics/Point;->y:I

    .line 1071
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/android/incallui/VideoCallFragment;->mIsLandscape:Z

    if-nez v4, :cond_2

    .line 1072
    iget v4, p2, Landroid/graphics/Point;->x:I

    iget v5, p2, Landroid/graphics/Point;->y:I

    if-lt v4, v5, :cond_5

    .line 1073
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1074
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1080
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/VideoCallFragment;->mDisplayPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1083
    .end local v0    # "activeCall":Lcom/android/incallui/Call;
    .end local v1    # "height":I
    .end local v3    # "width":I
    :cond_3
    iget v4, p2, Landroid/graphics/Point;->x:I

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1084
    iget v4, p2, Landroid/graphics/Point;->y:I

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1085
    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1086
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSurfaceSizeAndTranslation: Size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "IsLayoutComplete="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1087
    iget-boolean v5, p0, Lcom/android/incallui/VideoCallFragment;->mIsLayoutComplete:Z

    .line 1086
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1087
    const-string/jumbo v5, "IsLandscape="

    .line 1086
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1087
    iget-boolean v5, p0, Lcom/android/incallui/VideoCallFragment;->mIsLandscape:Z

    .line 1086
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1046
    return-void

    .line 1066
    .restart local v0    # "activeCall":Lcom/android/incallui/Call;
    .restart local v1    # "height":I
    .restart local v3    # "width":I
    :cond_4
    iget v4, p2, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v3

    iget v5, p2, Landroid/graphics/Point;->x:I

    mul-int/2addr v5, v1

    if-ge v4, v5, :cond_1

    .line 1067
    iget v4, p2, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v3

    div-int/2addr v4, v1

    iput v4, p2, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 1076
    :cond_5
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1077
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1
.end method

.method private setSurfaceToFullScreenContainer(Landroid/view/TextureView;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "surfaceView"    # Landroid/view/TextureView;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v2, 0x0

    .line 1329
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1330
    :cond_0
    const-string/jumbo v1, "setSurfaceToFullScreenContainer: surfaceView, imageView is null."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1331
    return-void

    .line 1334
    :cond_1
    invoke-virtual {p1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1335
    .local v0, "parentContainer":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    if-eq v0, v1, :cond_3

    .line 1336
    if-eqz v0, :cond_2

    .line 1337
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1339
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 1341
    :cond_3
    invoke-virtual {p2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "parentContainer":Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .line 1342
    .restart local v0    # "parentContainer":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    if-eq v0, v1, :cond_5

    .line 1343
    if-eqz v0, :cond_4

    .line 1344
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1346
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p2, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 1328
    :cond_5
    return-void
.end method

.method private setSurfaceToThumbnailContainer(Landroid/view/TextureView;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "surfaceView"    # Landroid/view/TextureView;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v2, 0x0

    .line 1357
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1358
    :cond_0
    const-string/jumbo v1, "setSurfaceToThumbnailContainer: surfaceView, imageView is null."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1359
    return-void

    .line 1362
    :cond_1
    invoke-virtual {p1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1363
    .local v0, "parentContainer":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideoContainer:Landroid/widget/RelativeLayout;

    if-eq v0, v1, :cond_3

    .line 1364
    if-eqz v0, :cond_2

    .line 1365
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1367
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideoContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 1369
    :cond_3
    invoke-virtual {p2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "parentContainer":Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .line 1370
    .restart local v0    # "parentContainer":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideoContainer:Landroid/widget/RelativeLayout;

    if-eq v0, v1, :cond_5

    .line 1371
    if-eqz v0, :cond_4

    .line 1372
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1374
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideoContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p2, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 1356
    :cond_5
    return-void
.end method

.method private showDialog(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mSwitchFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1545
    if-eqz p1, :cond_1

    .line 1546
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mSwitchFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1543
    :cond_0
    :goto_0
    return-void

    .line 1548
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mSwitchFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    goto :goto_0
.end method

.method private updateFullScreenVisibility(Landroid/view/TextureView;Landroid/widget/ImageView;IZ)V
    .locals 3
    .param p1, "surfaceView"    # Landroid/view/TextureView;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "visibility"    # I
    .param p4, "onTop"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFullScreenVisibility "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1267
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallFragment;->isSurfacePresent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1268
    invoke-virtual {p1, p3}, Landroid/view/TextureView;->setVisibility(I)V

    .line 1269
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1274
    :goto_0
    if-eqz p4, :cond_0

    .line 1275
    invoke-virtual {p2}, Landroid/widget/ImageView;->bringToFront()V

    .line 1276
    invoke-virtual {p1}, Landroid/view/TextureView;->bringToFront()V

    .line 1279
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoFramesReady:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mDisplayPhoto:Landroid/widget/ImageView;

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallFragment;->isSurfacePresent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1282
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1283
    invoke-virtual {p2}, Landroid/widget/ImageView;->bringToFront()V

    .line 1285
    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallFragment;->mCameraError:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewPhoto:Landroid/widget/ImageView;

    if-ne p2, v0, :cond_2

    .line 1286
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1287
    invoke-virtual {p2}, Landroid/widget/ImageView;->bringToFront()V

    .line 1264
    :cond_2
    return-void

    .line 1271
    :cond_3
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSurfaceLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1189
    invoke-static {}, Lcom/android/incallui/VideoCallFragment;->-getcom_android_incallui_VideoCallFragment$SurfaceLayoutStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mSurfaceState:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1214
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->hideVideoUi()V

    .line 1217
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideoContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideoContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 1188
    :cond_0
    return-void

    .line 1191
    :pswitch_0
    const-string/jumbo v0, "NEWMODE Camera in thumbnail and incoming video in fullscreen"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1192
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mDisplayVideo:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mDisplayPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VideoCallFragment;->setSurfaceToFullScreenContainer(Landroid/view/TextureView;Landroid/widget/ImageView;)V

    .line 1193
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideo:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VideoCallFragment;->setSurfaceToThumbnailContainer(Landroid/view/TextureView;Landroid/widget/ImageView;)V

    .line 1194
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mDisplayVideo:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mDisplayPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/android/incallui/VideoCallFragment;->updateFullScreenVisibility(Landroid/view/TextureView;Landroid/widget/ImageView;IZ)V

    .line 1195
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideo:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/incallui/VideoCallFragment;->updateThumbnailVisibility(Landroid/view/TextureView;Landroid/widget/ImageView;IZ)V

    goto :goto_0

    .line 1198
    :pswitch_1
    const-string/jumbo v0, "NEWMODE Only show camera in fullscreen"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1199
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideo:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VideoCallFragment;->setSurfaceToFullScreenContainer(Landroid/view/TextureView;Landroid/widget/ImageView;)V

    .line 1200
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideo:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/incallui/VideoCallFragment;->updateFullScreenVisibility(Landroid/view/TextureView;Landroid/widget/ImageView;IZ)V

    .line 1201
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mDisplayPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v0, v5, v2}, Lcom/android/incallui/VideoCallFragment;->updateThumbnailVisibility(Landroid/view/TextureView;Landroid/widget/ImageView;IZ)V

    .line 1203
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mDisplayVideo:Landroid/view/TextureView;

    invoke-virtual {v0, v4}, Landroid/view/TextureView;->setVisibility(I)V

    goto :goto_0

    .line 1206
    :pswitch_2
    const-string/jumbo v0, "NEWMODE Only show incoming video in fullscreen"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1207
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mDisplayVideo:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mDisplayPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VideoCallFragment;->setSurfaceToFullScreenContainer(Landroid/view/TextureView;Landroid/widget/ImageView;)V

    .line 1208
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mDisplayVideo:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mDisplayPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/incallui/VideoCallFragment;->updateFullScreenVisibility(Landroid/view/TextureView;Landroid/widget/ImageView;IZ)V

    .line 1209
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideo:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v5, v2}, Lcom/android/incallui/VideoCallFragment;->updateThumbnailVisibility(Landroid/view/TextureView;Landroid/widget/ImageView;IZ)V

    .line 1211
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mCameraOff:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updateSurfaceLayoutState()V
    .locals 2

    .prologue
    .line 1150
    invoke-static {}, Lcom/android/incallui/VideoCallFragment;->-getcom_android_incallui_VideoCallFragment$VideoCallStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mVideoCallState:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FATAL setSurfaceLayout Unhandled new state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1176
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mVideoCallState:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallState;->name()Ljava/lang/String;

    move-result-object v1

    .line 1175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1179
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/VideoCallFragment;->mSurfaceUpdateNeeded:Z

    .line 1180
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoCallLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1181
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoCallLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1149
    return-void

    .line 1160
    :pswitch_0
    sget-object v0, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->FULLSCREEN_VIDEO_THUMBNAIL_CAMERA:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoCallFragment;->setSurfaceLayoutState(Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;)V

    goto :goto_0

    .line 1164
    :pswitch_1
    sget-object v0, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->FULLSCREEN_CAMERA:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoCallFragment;->setSurfaceLayoutState(Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;)V

    goto :goto_0

    .line 1168
    :pswitch_2
    sget-object v0, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->FULLSCREEN_VIDEO:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoCallFragment;->setSurfaceLayoutState(Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;)V

    goto :goto_0

    .line 1171
    :pswitch_3
    sget-object v0, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->NONE:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoCallFragment;->setSurfaceLayoutState(Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;)V

    .line 1172
    const-string/jumbo v0, "setSurfaceLayout state: NONE do nothing"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateThumbnailVisibility(Landroid/view/TextureView;Landroid/widget/ImageView;IZ)V
    .locals 3
    .param p1, "surfaceView"    # Landroid/view/TextureView;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "visibility"    # I
    .param p4, "onTop"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateThumbnailVisibility "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1295
    if-nez p3, :cond_2

    .line 1296
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideoContainer:Landroid/widget/RelativeLayout;

    .line 1297
    const v1, 0x7f02012c

    .line 1296
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1302
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallFragment;->isSurfacePresent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1303
    invoke-virtual {p1, p3}, Landroid/view/TextureView;->setVisibility(I)V

    .line 1304
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1309
    :goto_1
    if-eqz p4, :cond_0

    .line 1310
    invoke-virtual {p2}, Landroid/widget/ImageView;->bringToFront()V

    .line 1311
    if-eqz p1, :cond_0

    .line 1312
    invoke-virtual {p1}, Landroid/view/TextureView;->bringToFront()V

    .line 1316
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallFragment;->mCameraError:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewPhoto:Landroid/widget/ImageView;

    if-ne p2, v0, :cond_1

    .line 1317
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1318
    invoke-virtual {p2}, Landroid/widget/ImageView;->bringToFront()V

    .line 1292
    :cond_1
    return-void

    .line 1299
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideoContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1306
    :cond_3
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public cleanupSurfaces()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 676
    const-string/jumbo v0, "cleanupSurfaces"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 677
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_0

    .line 678
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->setDoneWithSurface()V

    .line 679
    sput-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    .line 681
    :cond_0
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_1

    .line 682
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->setDoneWithSurface()V

    .line 683
    sput-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    .line 685
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/VideoCallFragment;->sVideoSurfacesInUse:Z

    .line 675
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1444
    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViewsStub:Landroid/view/ViewStub;

    .line 1445
    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    .line 1446
    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mCallPhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 1447
    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mCallPhotoBg:Landroid/graphics/drawable/Drawable;

    .line 1448
    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mDisplayPhoto:Landroid/widget/ImageView;

    .line 1449
    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mDisplayVideo:Landroid/view/TextureView;

    .line 1450
    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideo:Landroid/view/TextureView;

    .line 1451
    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideoContainer:Landroid/widget/RelativeLayout;

    .line 1452
    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoCallLayout:Landroid/view/ViewGroup;

    .line 1453
    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mFullScreenArrowButtonContainer:Landroid/view/View;

    .line 1443
    return-void
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->createPresenter()Lcom/android/incallui/VideoCallPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/android/incallui/VideoCallPresenter;
    .locals 2

    .prologue
    .line 608
    const-string/jumbo v1, "createPresenter"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 609
    new-instance v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-direct {v0}, Lcom/android/incallui/VideoCallPresenter;-><init>()V

    .line 610
    .local v0, "presenter":Lcom/android/incallui/VideoCallPresenter;
    invoke-direct {p0, v0}, Lcom/android/incallui/VideoCallFragment;->onPresenterChanged(Lcom/android/incallui/VideoCallPresenter;)V

    .line 611
    return-object v0
.end method

.method public dismissPendingDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1525
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mSwitchFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1526
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mSwitchFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1527
    iput-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mSwitchFailureDialog:Landroid/app/AlertDialog;

    .line 1524
    :cond_0
    return-void
.end method

.method public getDisplayVideoSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 753
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreviewPhotoView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPreviewSize()Landroid/graphics/Point;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 926
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-nez v0, :cond_0

    .line 927
    return-object v1

    .line 929
    :cond_0
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getSurfaceDimensions()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewVideoSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 762
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0
.end method

.method public getScreenSize()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 912
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 913
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 914
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 916
    return-object v1
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getUi()Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    move-result-object v0

    return-object v0
.end method

.method public getUi()Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    .locals 0

    .prologue
    .line 619
    return-object p0
.end method

.method public hideVideoUi()V
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoCallFragment;->inflateVideoUi(Z)V

    .line 665
    return-void
.end method

.method public isDisplayVideoSurfaceCreated()Z
    .locals 3

    .prologue
    .line 732
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 733
    .local v0, "ret":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " isDisplayVideoSurfaceCreated returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 734
    return v0

    .line 732
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public isPreviewVideoSurfaceCreated()Z
    .locals 3

    .prologue
    .line 742
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 743
    .local v0, "ret":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " isPreviewVideoSurfaceCreated returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 744
    return v0

    .line 742
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 534
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 536
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/VideoCallFragment;->mIsLandscape:Z

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActivityCreated: IsLandscape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/VideoCallFragment;->mIsLandscape:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->init(Landroid/content/Context;)V

    .line 533
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 522
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 524
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoCallFragment;->mAnimationDuration:I

    .line 521
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 545
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 547
    const v2, 0x7f040053

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 548
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080143

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 549
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080144

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 548
    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    sput-object v2, Lcom/android/incallui/VideoCallFragment;->sDisplaySize:Landroid/graphics/Point;

    .line 550
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080141

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/incallui/VideoCallFragment;->mThumbnailWidth:F

    .line 551
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080142

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/incallui/VideoCallFragment;->mThumbnailHeight:F

    .line 552
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080147

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/incallui/VideoCallFragment;->mThumbnailMargin:F

    .line 553
    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment;->getSurfaceBoundaries()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/VideoCallFragment;->initSurfaceLayout(Landroid/graphics/Rect;)V

    .line 555
    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment;->mCallPhotoDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 556
    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment;->mCallPhotoDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/incallui/VideoCallFragment;->mCallPhotoBg:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/VideoCallFragment;->setImageAndBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    move-object v2, v1

    .line 559
    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/VideoCallFragment;->mVideoCallLayout:Landroid/view/ViewGroup;

    .line 560
    sget-object v2, Lcom/android/incallui/VideoCallFragment$VideoCallState;->NONE:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    invoke-virtual {p0, v2}, Lcom/android/incallui/VideoCallFragment;->setVideoCallState(Lcom/android/incallui/VideoCallFragment$VideoCallState;)V

    .line 562
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 563
    .local v0, "activeCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 564
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPeerVideoState()Lcom/android/incallui/Call$PeerVideoState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/Call$PeerVideoState;->isPeerVideoAvailable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/incallui/VideoCallFragment;->mVideoFramesReady:Z

    .line 567
    :cond_1
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 598
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    .line 599
    const-string/jumbo v0, "onDestroyView:"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 592
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onPause()V

    .line 593
    const-string/jumbo v0, "onPause:"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1436
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1435
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 586
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onStop()V

    .line 587
    const-string/jumbo v0, "onStop:"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 578
    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onViewCreated: VideoSurfacesInUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/incallui/VideoCallFragment;->sVideoSurfacesInUse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    const v0, 0x7f0f00fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViewsStub:Landroid/view/ViewStub;

    .line 577
    return-void
.end method

.method public setCameraError(Z)V
    .locals 2
    .param p1, "error"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1246
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallFragment;->mCameraError:Z

    if-eq v0, p1, :cond_0

    .line 1247
    iput-boolean p1, p0, Lcom/android/incallui/VideoCallFragment;->mCameraError:Z

    .line 1248
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallFragment;->mCameraError:Z

    if-eqz v0, :cond_1

    .line 1249
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1251
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 1245
    :cond_0
    :goto_0
    return-void

    .line 1254
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideo:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 1255
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideo:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 1256
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1257
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideo:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->bringToFront()V

    goto :goto_0
.end method

.method public setDisplayPhoto(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1418
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/VideoCallFragment;->setDisplayPhoto(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1417
    return-void
.end method

.method public setDisplayVideoSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplayVideoSize: width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 891
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v1, :cond_1

    .line 892
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    .line 893
    .local v0, "displayVideo":Landroid/view/TextureView;
    if-nez v0, :cond_0

    .line 894
    const-string/jumbo v1, "Display Video texture view is null. Bail out"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 895
    return-void

    .line 897
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    sput-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySize:Landroid/graphics/Point;

    .line 898
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySize:Landroid/graphics/Point;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VideoCallFragment;->setSurfaceSizeAndTranslation(Landroid/view/TextureView;Landroid/graphics/Point;)V

    .line 889
    .end local v0    # "displayVideo":Landroid/view/TextureView;
    :goto_0
    return-void

    .line 900
    :cond_1
    const-string/jumbo v1, "Display Video Surface is null. Bail out"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFullScreenMode(Z)V
    .locals 3
    .param p1, "isFullscreenMode"    # Z

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideoContainer:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_1

    .line 1460
    :cond_0
    return-void

    .line 1459
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mFullScreenArrowButtonContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1464
    if-eqz p1, :cond_2

    .line 1465
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mFullScreenArrowButtonContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1472
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1473
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/incallui/VideoCallFragment$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/incallui/VideoCallFragment$4;-><init>(Lcom/android/incallui/VideoCallFragment;Landroid/view/ViewTreeObserver;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1457
    return-void

    .line 1467
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mFullScreenArrowButtonContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPreviewRotation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewRotation: orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 837
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v1, :cond_0

    .line 838
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    .line 840
    .local v0, "preview":Landroid/view/TextureView;
    if-nez v0, :cond_0

    .line 841
    return-void

    .line 835
    .end local v0    # "preview":Landroid/view/TextureView;
    :cond_0
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 774
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPreviewSize: width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    sget-object v5, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v5, :cond_4

    .line 776
    sget-object v5, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v5}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getTextureView()Landroid/view/TextureView;

    move-result-object v2

    .line 778
    .local v2, "preview":Landroid/view/TextureView;
    if-nez v2, :cond_0

    .line 779
    return-void

    .line 783
    :cond_0
    iget-object v5, p0, Lcom/android/incallui/VideoCallFragment;->mFullScreenLayout:Lcom/android/incallui/VideoCallFragment$SurfaceLayout;

    iget-object v5, v5, Lcom/android/incallui/VideoCallFragment$SurfaceLayout;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v5, :cond_2

    .line 784
    iget-object v5, p0, Lcom/android/incallui/VideoCallFragment;->mSurfaceState:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    sget-object v6, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->FULLSCREEN_CAMERA:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    if-ne v5, v6, :cond_2

    .line 785
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 786
    iget-object v5, p0, Lcom/android/incallui/VideoCallFragment;->mFullScreenLayout:Lcom/android/incallui/VideoCallFragment$SurfaceLayout;

    iget-object v5, v5, Lcom/android/incallui/VideoCallFragment$SurfaceLayout;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 785
    invoke-direct {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 787
    .local v0, "fullscreenParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 788
    iget-object v5, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewPhoto:Landroid/widget/ImageView;

    if-eqz v5, :cond_1

    .line 789
    iget-object v5, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewPhoto:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, v5}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 794
    return-void

    .line 799
    .end local v0    # "fullscreenParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-virtual {v2}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 800
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 801
    iput p2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 802
    invoke-virtual {v2, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 804
    iget-object v5, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewPhoto:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    .line 806
    iget-object v5, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewPhoto:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 807
    .local v3, "previewPhotoParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v5, p0, Lcom/android/incallui/VideoCallFragment;->mThumbnailWidth:F

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 808
    iget v5, p0, Lcom/android/incallui/VideoCallFragment;->mThumbnailHeight:F

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 809
    iget-object v5, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewPhoto:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 815
    .end local v3    # "previewPhotoParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 816
    .local v4, "transform":Landroid/graphics/Matrix;
    div-int/lit8 v5, p1, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 817
    invoke-virtual {v2, v4}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 773
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "preview":Landroid/view/TextureView;
    .end local v4    # "transform":Landroid/graphics/Matrix;
    :cond_4
    return-void
.end method

.method public setPreviewSurfaceSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 851
    sget-object v2, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 852
    .local v1, "isPreviewSurfaceAvailable":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreviewSurfaceSize: width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 853
    const-string/jumbo v3, " isPreviewSurfaceAvailable="

    .line 852
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 854
    if-eqz v1, :cond_1

    .line 856
    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment;->mFullScreenLayout:Lcom/android/incallui/VideoCallFragment$SurfaceLayout;

    iget-object v2, v2, Lcom/android/incallui/VideoCallFragment$SurfaceLayout;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 857
    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment;->mSurfaceState:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    sget-object v3, Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;->FULLSCREEN_CAMERA:Lcom/android/incallui/VideoCallFragment$SurfaceLayoutState;

    if-ne v2, v3, :cond_0

    .line 858
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 859
    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment;->mFullScreenLayout:Lcom/android/incallui/VideoCallFragment$SurfaceLayout;

    iget-object v2, v2, Lcom/android/incallui/VideoCallFragment$SurfaceLayout;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 858
    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 860
    .local v0, "fullscreenParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 861
    iget p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 864
    .end local v0    # "fullscreenParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    sget-object v2, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v2, p1, p2}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->setSurfaceDimensions(II)V

    .line 850
    :cond_1
    return-void

    .line 851
    .end local v1    # "isPreviewSurfaceAvailable":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isPreviewSurfaceAvailable":Z
    goto :goto_0
.end method

.method public setVideoCallState(Lcom/android/incallui/VideoCallFragment$VideoCallState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/incallui/VideoCallFragment$VideoCallState;

    .prologue
    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVideoCallState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/VideoCallFragment$VideoCallState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1142
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoCallState:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    if-eq v0, p1, :cond_0

    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mVideoCallState:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/VideoCallFragment$VideoCallState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1144
    iput-object p1, p0, Lcom/android/incallui/VideoCallFragment;->mVideoCallState:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    .line 1145
    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment;->updateSurfaceLayoutState()V

    .line 1140
    :cond_0
    return-void
.end method

.method public setVideoFramesReady(Z)V
    .locals 2
    .param p1, "ready"    # Z

    .prologue
    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVideoFramesReady: ready = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVideoFramesReady: mVideoFramesReady = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/VideoCallFragment;->mVideoFramesReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1231
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoFramesReady:Z

    if-eq v0, p1, :cond_0

    .line 1232
    iput-boolean p1, p0, Lcom/android/incallui/VideoCallFragment;->mVideoFramesReady:Z

    .line 1233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/VideoCallFragment;->mSurfaceUpdateNeeded:Z

    .line 1234
    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment;->onLayoutDone()V

    .line 1228
    :cond_0
    return-void
.end method

.method public setZoomParamReady(FLcom/android/incallui/SomcVideoShareZoom$OnZoomChangedListener;)V
    .locals 1
    .param p1, "maxZoom"    # F
    .param p2, "zoomListener"    # Lcom/android/incallui/SomcVideoShareZoom$OnZoomChangedListener;

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mZoomHandler:Lcom/android/incallui/SomcVideoShareZoom;

    if-eqz v0, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mZoomHandler:Lcom/android/incallui/SomcVideoShareZoom;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/SomcVideoShareZoom;->setZoomParamReady(FLcom/android/incallui/SomcVideoShareZoom$OnZoomChangedListener;)V

    .line 1532
    :cond_0
    return-void
.end method

.method public showSwitchFailureDialog(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 1497
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->dismissPendingDialogs()V

    .line 1498
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1499
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1500
    new-instance v1, Lcom/android/incallui/VideoCallFragment$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/VideoCallFragment$5;-><init>(Lcom/android/incallui/VideoCallFragment;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1506
    new-instance v1, Lcom/android/incallui/VideoCallFragment$6;

    invoke-direct {v1, p0}, Lcom/android/incallui/VideoCallFragment$6;-><init>(Lcom/android/incallui/VideoCallFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1512
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mSwitchFailureDialog:Landroid/app/AlertDialog;

    .line 1514
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isCoverClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1515
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/incallui/VideoCallFragment;->showDialog(Z)V

    .line 1496
    :goto_0
    return-void

    .line 1517
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/incallui/VideoCallFragment;->showDialog(Z)V

    goto :goto_0
.end method

.method public showVideoViews(ZZ)V
    .locals 5
    .param p1, "previewPaused"    # Z
    .param p2, "showIncoming"    # Z

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 648
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/incallui/VideoCallFragment;->inflateVideoUi(Z)V

    .line 650
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/widget/RelativeLayout;

    const v4, 0x7f0f00fe

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 651
    .local v0, "incomingVideoView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 652
    if-eqz p2, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 654
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mCameraOff:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 655
    iget-object v4, p0, Lcom/android/incallui/VideoCallFragment;->mCameraOff:Landroid/view/View;

    if-nez p1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 657
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 658
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewPhoto:Landroid/widget/ImageView;

    if-nez p1, :cond_5

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 647
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 652
    goto :goto_0

    :cond_4
    move v1, v3

    .line 655
    goto :goto_1

    :cond_5
    move v2, v3

    .line 658
    goto :goto_2
.end method
