.class public Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;
.super Landroid/app/Fragment;
.source "InlineCameraFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;,
        Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$H;,
        Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;,
        Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$Callback;,
        Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$CompareSizesByArea;,
        Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$1;,
        Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$2;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_ui_camera_InlineCameraFragment$ViewModeSwitchesValues:[I

.field private static final DEBUG:Z


# instance fields
.field private mBitmapUsedInView:Landroid/graphics/Bitmap;

.field private mCallback:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$Callback;

.field private mCameraAlreadyInitializedOnce:Z

.field private mCameraAutoFocusModeAvailable:Z

.field private mCameraCenterBtn:Landroid/widget/ImageButton;

.field private mCameraHolder:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

.field mCameraId:Ljava/lang/String;

.field private mCameraIsGettingImages:Z

.field private mCameraToggleReady:Z

.field private final mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mDeclinePictureButtonView:Landroid/widget/ImageButton;

.field private mFlipCameraButtonView:Landroid/widget/ImageButton;

.field private mFrontCamInUse:Z

.field private mOpenErrorToast:Landroid/widget/Toast;

.field private mPreviewPictureAcceptImageView:Landroid/widget/ImageView;

.field private mPreviewSize:Landroid/util/Size;

.field private final mProgressSpinnerHandler:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$H;

.field private final mScreenSize:Landroid/graphics/Point;

.field private mShootTask:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;

.field private final mShutterSound:Landroid/media/MediaActionSound;

.field private mStartCameraSpinner:Landroid/widget/ProgressBar;

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mTextureView:Landroid/view/TextureView;

.field private final mTextureViewMatrix:Landroid/graphics/Matrix;

.field private mTextureViewSizeX:I

.field private mTextureViewSizeY:I

.field private mUriDraftPicture:Landroid/net/Uri;

.field private mViewFrameLayout:Landroid/widget/FrameLayout;

.field private mViewMode:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mBitmapUsedInView:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraAlreadyInitializedOnce:Z

    return v0
.end method

.method static synthetic -get10(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$H;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mProgressSpinnerHandler:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$H;

    return-object v0
.end method

.method static synthetic -get11(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mStartCameraSpinner:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic -get12(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Landroid/view/TextureView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic -get13(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureViewSizeX:I

    return v0
.end method

.method static synthetic -get14(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureViewSizeY:I

    return v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraCenterBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Lcom/sonyericsson/conversations/ui/camera/CameraHolder;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraHolder:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraIsGettingImages:Z

    return v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraToggleReady:Z

    return v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method static synthetic -get7(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mDeclinePictureButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get8(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mFlipCameraButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get9(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mPreviewPictureAcceptImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_conversations_ui_camera_InlineCameraFragment$ViewModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-com_sonyericsson_conversations_ui_camera_InlineCameraFragment$ViewModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-com_sonyericsson_conversations_ui_camera_InlineCameraFragment$ViewModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;->values()[Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;->ACCEPT_PICTURE:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;->TAKING_PICTURE:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-com_sonyericsson_conversations_ui_camera_InlineCameraFragment$ViewModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mBitmapUsedInView:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraAlreadyInitializedOnce:Z

    return p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraIsGettingImages:Z

    return p1
.end method

.method static synthetic -set3(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraToggleReady:Z

    return p1
.end method

.method static synthetic -set4(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mUriDraftPicture:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;II)V
    .locals 0
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->configureTransform(II)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->openCamera()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->setupCameraViews(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;Z)V
    .locals 0
    .param p1, "fadingDirectionUp"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->startFlipCameraEffect(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->DEBUG:Z

    .line 93
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 123
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraAutoFocusModeAvailable:Z

    .line 134
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mFrontCamInUse:Z

    .line 140
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mScreenSize:Landroid/graphics/Point;

    .line 142
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureViewMatrix:Landroid/graphics/Matrix;

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraToggleReady:Z

    .line 149
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraAlreadyInitializedOnce:Z

    .line 152
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraIsGettingImages:Z

    .line 155
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mShutterSound:Landroid/media/MediaActionSound;

    .line 159
    new-instance v0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$H;-><init>(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$H;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mProgressSpinnerHandler:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$H;

    .line 166
    new-instance v0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$1;-><init>(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)V

    .line 165
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 198
    new-instance v0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$2;-><init>(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)V

    .line 197
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 93
    return-void
.end method

.method private animateButtons()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 508
    const-wide/16 v0, 0xfa

    .line 509
    .local v0, "ANIMATION_LENGTH":J
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraCenterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getX()F

    move-result v7

    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mDeclinePictureButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getX()F

    move-result v8

    sub-float v3, v7, v8

    .line 510
    .local v3, "buttonXDiff":F
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraCenterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getY()F

    move-result v7

    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mDeclinePictureButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getY()F

    move-result v8

    sub-float v4, v7, v8

    .line 511
    .local v4, "buttonYDiff":F
    invoke-static {}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-getcom_sonyericsson_conversations_ui_camera_InlineCameraFragment$ViewModeSwitchesValues()[I

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mViewMode:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 533
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Animation for MODE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mViewMode:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " non "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 534
    const-string/jumbo v8, "existing"

    .line 533
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 507
    :goto_0
    return-void

    .line 514
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f040003

    .line 513
    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 515
    .local v6, "takeImageAnim":Landroid/view/animation/Animation;
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraCenterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 519
    .end local v6    # "takeImageAnim":Landroid/view/animation/Animation;
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f040002

    .line 518
    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 520
    .local v5, "modeChange":Landroid/view/animation/Animation;
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraCenterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v7, v5}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 522
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    .line 523
    const/4 v8, 0x1

    .line 522
    if-ne v7, v8, :cond_0

    .line 524
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v2, v3, v9, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 528
    .local v2, "anim":Landroid/view/animation/TranslateAnimation;
    :goto_1
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 529
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 530
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mDeclinePictureButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v7, v2}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 526
    .end local v2    # "anim":Landroid/view/animation/TranslateAnimation;
    :cond_0
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v2, v9, v9, v4, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v2    # "anim":Landroid/view/animation/TranslateAnimation;
    goto :goto_1

    .line 511
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private centerButtonClicked()V
    .locals 4

    .prologue
    .line 835
    invoke-static {}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-getcom_sonyericsson_conversations_ui_camera_InlineCameraFragment$ViewModeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mViewMode:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 863
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Center button cannot be clicked in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mViewMode:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 834
    :goto_0
    return-void

    .line 837
    :pswitch_0
    const-string/jumbo v1, "draft.tmp"

    invoke-static {v1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getPhotoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mUriDraftPicture:Landroid/net/Uri;

    .line 838
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mUriDraftPicture:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 839
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mFlipCameraButtonView:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 840
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->takePicture()V

    .line 841
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->pushGaEventCapturePhoto()V

    goto :goto_0

    .line 844
    :cond_0
    const-string/jumbo v1, "Failed to get Uri for take picture"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 848
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mUriDraftPicture:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 849
    invoke-static {}, Lcom/sonyericsson/conversations/util/MediaUtil;->getPhotoUri()Landroid/net/Uri;

    move-result-object v0

    .line 850
    .local v0, "uriToAttach":Landroid/net/Uri;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mUriDraftPicture:Landroid/net/Uri;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->renameUriToUriFilesInSameDirectory(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 852
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCallback:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$Callback;

    invoke-interface {v1, v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$Callback;->attachImage(Landroid/net/Uri;)V

    .line 858
    .end local v0    # "uriToAttach":Landroid/net/Uri;
    :cond_1
    :goto_1
    sget-object v1, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;->TAKING_PICTURE:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->setupCameraViews(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;)V

    .line 859
    const-string/jumbo v1, "message_list"

    .line 860
    const-string/jumbo v2, "preview_picture"

    const-string/jumbo v3, "accept"

    .line 859
    invoke-static {v1, v2, v3}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 855
    .restart local v0    # "uriToAttach":Landroid/net/Uri;
    :cond_2
    const-string/jumbo v1, "Failed to attach image"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 835
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private changeCameraFacing()V
    .locals 1

    .prologue
    .line 830
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mFrontCamInUse:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mFrontCamInUse:Z

    .line 831
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->stopAndStartCamera()V

    .line 828
    return-void

    .line 830
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static chooseOptimalSize([Landroid/util/Size;II)Landroid/util/Size;
    .locals 7
    .param p0, "choices"    # [Landroid/util/Size;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 784
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 785
    .local v0, "bigEnough":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    array-length v4, p0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v1, p0, v2

    .line 786
    .local v1, "option":Landroid/util/Size;
    sget-boolean v5, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 787
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "chooseOptimalSize found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 788
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    .line 787
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 790
    :cond_0
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    mul-int/2addr v6, p2

    div-int/2addr v6, p1

    if-ne v5, v6, :cond_2

    .line 791
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-lt v5, p1, :cond_2

    .line 792
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-lt v5, p2, :cond_2

    .line 793
    sget-boolean v5, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 794
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "chooseOptimalSize added: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 795
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    .line 794
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 795
    const-string/jumbo v6, " / "

    .line 794
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 795
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    .line 794
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 797
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 801
    .end local v1    # "option":Landroid/util/Size;
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_7

    .line 803
    array-length v4, p0

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_7

    aget-object v1, p0, v2

    .line 804
    .restart local v1    # "option":Landroid/util/Size;
    sget-boolean v5, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 805
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "chooseOptimalSize second run found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 806
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    .line 805
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 806
    const-string/jumbo v6, " / "

    .line 805
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 806
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    .line 805
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 808
    :cond_4
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    mul-int/2addr v6, p2

    div-int/2addr v6, p1

    if-ne v5, v6, :cond_6

    .line 809
    sget-boolean v5, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 810
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "chooseOptimalSize Aspect correct added: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 811
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    .line 810
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 811
    const-string/jumbo v6, " / "

    .line 810
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 811
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    .line 810
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 813
    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 819
    .end local v1    # "option":Landroid/util/Size;
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 820
    new-instance v2, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$CompareSizesByArea;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$CompareSizesByArea;-><init>(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$CompareSizesByArea;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    return-object v2

    .line 823
    :cond_8
    aget-object v2, p0, v3

    return-object v2
.end method

.method private configureTransform(II)V
    .locals 12
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 726
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 727
    .local v0, "activity":Landroid/app/Activity;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureView:Landroid/view/TextureView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mPreviewSize:Landroid/util/Size;

    if-nez v5, :cond_1

    .line 728
    :cond_0
    return-void

    .line 727
    :cond_1
    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 731
    .local v4, "rotation":I
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureViewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 733
    if-eq v4, v11, :cond_2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 735
    :cond_2
    div-int/lit8 v1, p1, 0x2

    .line 736
    .local v1, "centerX":I
    div-int/lit8 v2, p2, 0x2

    .line 737
    .local v2, "centerY":I
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureViewMatrix:Landroid/graphics/Matrix;

    .line 738
    int-to-float v6, p2

    int-to-float v7, p1

    div-float/2addr v6, v7

    int-to-float v7, p1

    int-to-float v8, p2

    div-float/2addr v7, v8

    .line 739
    int-to-float v8, v1

    int-to-float v9, v2

    .line 737
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 740
    if-ne v4, v11, :cond_3

    .line 742
    const/16 v3, -0x5a

    .line 747
    .local v3, "postRotateValue":I
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureViewMatrix:Landroid/graphics/Matrix;

    int-to-float v6, v3

    int-to-float v7, v1

    int-to-float v8, v2

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 749
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureViewMatrix:Landroid/graphics/Matrix;

    .line 750
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mScreenSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mViewFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    .line 749
    invoke-virtual {v5, v10, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 757
    .end local v1    # "centerX":I
    .end local v2    # "centerY":I
    .end local v3    # "postRotateValue":I
    :goto_1
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureView:Landroid/view/TextureView;

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureViewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 725
    return-void

    .line 745
    .restart local v1    # "centerX":I
    .restart local v2    # "centerY":I
    :cond_3
    const/16 v3, 0x5a

    .restart local v3    # "postRotateValue":I
    goto :goto_0

    .line 753
    .end local v1    # "centerX":I
    .end local v2    # "centerY":I
    .end local v3    # "postRotateValue":I
    :cond_4
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureViewMatrix:Landroid/graphics/Matrix;

    .line 754
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mScreenSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mViewFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    .line 753
    invoke-virtual {v5, v10, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_1
.end method

.method private static contains([II)Z
    .locals 4
    .param p0, "modes"    # [I
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 706
    if-nez p0, :cond_0

    .line 707
    return v2

    .line 709
    :cond_0
    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget v0, p0, v1

    .line 710
    .local v0, "i":I
    if-ne v0, p1, :cond_1

    .line 711
    const/4 v1, 0x1

    return v1

    .line 709
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 714
    .end local v0    # "i":I
    :cond_2
    return v2
.end method

.method private loadAvailableCameraModes(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 2
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 692
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 693
    const/4 v1, 0x4

    .line 692
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraAutoFocusModeAvailable:Z

    .line 690
    :cond_0
    return-void
.end method

.method private openCamera()V
    .locals 9

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "camera"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    .line 483
    .local v2, "manager":Landroid/hardware/camera2/CameraManager;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 484
    .local v8, "activity":Landroid/app/Activity;
    if-eqz v8, :cond_0

    const-string/jumbo v0, "android.permission.CAMERA"

    invoke-virtual {v8, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    :cond_0
    return-void

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraHolder:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureView:Landroid/view/TextureView;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraId:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 490
    iget-boolean v5, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraAutoFocusModeAvailable:Z

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mPreviewSize:Landroid/util/Size;

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mOpenErrorToast:Landroid/widget/Toast;

    .line 489
    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->open(Landroid/view/TextureView;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;ZLandroid/util/Size;Landroid/widget/Toast;)V

    .line 479
    return-void
.end method

.method private pushGaEventCapturePhoto()V
    .locals 4

    .prologue
    .line 903
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mFrontCamInUse:Z

    if-eqz v2, :cond_0

    .line 904
    const-string/jumbo v0, "picture_taken_front"

    .line 906
    .local v0, "actionCameraUsed":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 907
    const/4 v3, 0x1

    .line 906
    if-ne v2, v3, :cond_1

    .line 908
    const-string/jumbo v1, "portrait"

    .line 910
    .local v1, "labelOrientation":Ljava/lang/String;
    :goto_1
    const-string/jumbo v2, "message_list"

    invoke-static {v2, v0, v1}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    return-void

    .line 905
    .end local v0    # "actionCameraUsed":Ljava/lang/String;
    .end local v1    # "labelOrientation":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "picture_taken_back"

    .restart local v0    # "actionCameraUsed":Ljava/lang/String;
    goto :goto_0

    .line 908
    :cond_1
    const-string/jumbo v1, "landscape"

    .restart local v1    # "labelOrientation":Ljava/lang/String;
    goto :goto_1
.end method

.method private renameUriToUriFilesInSameDirectory(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 4
    .param p1, "fromUri"    # Landroid/net/Uri;
    .param p2, "toUri"    # Landroid/net/Uri;

    .prologue
    .line 977
    const/4 v1, 0x0

    .line 978
    .local v1, "retVal":Z
    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 979
    .local v2, "to":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 980
    .local v0, "from":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 981
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 983
    .end local v1    # "retVal":Z
    :cond_0
    return v1
.end method

.method private setCenterButtonMode()V
    .locals 8

    .prologue
    .line 539
    const/4 v4, 0x0

    .line 540
    .local v4, "iconResId":I
    const/4 v5, 0x0

    .line 541
    .local v5, "iconTintId":I
    const/4 v0, 0x0

    .line 542
    .local v0, "btnBackgroundColor":I
    const/4 v1, 0x0

    .line 543
    .local v1, "contentDescr":I
    invoke-static {}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-getcom_sonyericsson_conversations_ui_camera_InlineCameraFragment$ViewModeSwitchesValues()[I

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mViewMode:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 558
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Center button cannot be setup for mode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mViewMode:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 557
    invoke-static {v6}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 561
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 562
    .local v2, "ctx":Landroid/content/Context;
    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 564
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_0

    .line 565
    return-void

    .line 545
    .end local v2    # "ctx":Landroid/content/Context;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :pswitch_0
    const v4, 0x7f0200cf

    .line 546
    const v5, 0x7f0e0078

    .line 547
    const v1, 0x7f0b029e

    .line 548
    const v0, 0x7f0e0074

    .line 549
    goto :goto_0

    .line 551
    :pswitch_1
    const v4, 0x7f0200bc

    .line 552
    const v5, 0x7f0e0074

    .line 553
    const v1, 0x7f0b02a0

    .line 554
    const v0, 0x7f0e0075

    .line 555
    goto :goto_0

    .line 568
    .restart local v2    # "ctx":Landroid/content/Context;
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v2, v5}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 569
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraCenterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v6, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 570
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraCenterBtn:Landroid/widget/ImageButton;

    .line 571
    invoke-virtual {v2, v0}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 570
    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 572
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraCenterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 538
    return-void

    .line 543
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setUpCameraOutputs()Z
    .locals 15

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 606
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 607
    const/4 v11, 0x0

    return v11

    .line 609
    :cond_0
    const-string/jumbo v11, "camera"

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/CameraManager;

    .line 611
    .local v8, "manager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    invoke-virtual {v8}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v12

    const/4 v11, 0x0

    array-length v13, v12

    :goto_0
    if-ge v11, v13, :cond_b

    aget-object v2, v12, v11

    .line 612
    .local v2, "cameraId":Ljava/lang/String;
    invoke-virtual {v8, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    .line 613
    .local v3, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v14}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 614
    .local v5, "facing":Ljava/lang/Integer;
    iget-boolean v14, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mFrontCamInUse:Z

    if-eqz v14, :cond_2

    .line 615
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eqz v14, :cond_3

    .line 611
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 619
    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eqz v14, :cond_1

    .line 625
    :cond_3
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mScreenSize:Landroid/graphics/Point;

    iget v10, v11, Landroid/graphics/Point;->x:I

    .line 626
    .local v10, "width":I
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mScreenSize:Landroid/graphics/Point;

    iget v6, v11, Landroid/graphics/Point;->y:I

    .line 628
    .local v6, "height":I
    sget-boolean v11, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->DEBUG:Z

    if-eqz v11, :cond_4

    .line 629
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setUpCameraOutputs width/height : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 633
    :cond_4
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 632
    invoke-virtual {v3, v11}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 636
    .local v9, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const/16 v11, 0x100

    invoke-virtual {v9, v11}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v7

    .line 638
    .local v7, "imageSizes":[Landroid/util/Size;
    if-eqz v7, :cond_5

    array-length v11, v7

    if-nez v11, :cond_6

    .line 639
    :cond_5
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraHolder:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-virtual {v11}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->handleCameraError()V

    .line 640
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mOpenErrorToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 641
    const/4 v11, 0x0

    return v11

    .line 644
    :cond_6
    const-class v11, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v9, v11}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v7

    .line 645
    if-eqz v7, :cond_7

    array-length v11, v7

    if-nez v11, :cond_8

    .line 646
    :cond_7
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraHolder:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-virtual {v11}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->handleCameraError()V

    .line 647
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mOpenErrorToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 648
    const/4 v11, 0x0

    return v11

    .line 651
    :cond_8
    if-le v10, v6, :cond_a

    .line 652
    invoke-static {v7, v10, v6}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->chooseOptimalSize([Landroid/util/Size;II)Landroid/util/Size;

    move-result-object v11

    iput-object v11, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mPreviewSize:Landroid/util/Size;

    .line 658
    :goto_1
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v11

    iget-object v12, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v12

    if-le v11, v12, :cond_c

    .line 659
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v1, v11, v12

    .line 664
    .local v1, "cameraAspectRatio":F
    :goto_2
    if-ge v10, v6, :cond_d

    .line 665
    int-to-float v11, v10

    mul-float/2addr v11, v1

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v6, v11

    .line 670
    :goto_3
    iput v10, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureViewSizeX:I

    .line 671
    iput v6, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureViewSizeY:I

    .line 673
    sget-boolean v11, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->DEBUG:Z

    if-eqz v11, :cond_9

    .line 674
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mTextureViewSizeX used"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureViewSizeX:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 675
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mTextureViewSizeY used"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureViewSizeY:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 678
    :cond_9
    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->loadAvailableCameraModes(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 679
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraId:Ljava/lang/String;

    .line 680
    const/4 v11, 0x1

    return v11

    .line 654
    .end local v1    # "cameraAspectRatio":F
    :cond_a
    invoke-static {v7, v6, v10}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->chooseOptimalSize([Landroid/util/Size;II)Landroid/util/Size;

    move-result-object v11

    iput-object v11, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mPreviewSize:Landroid/util/Size;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 682
    .end local v2    # "cameraId":Ljava/lang/String;
    .end local v3    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v5    # "facing":Ljava/lang/Integer;
    .end local v6    # "height":I
    .end local v7    # "imageSizes":[Landroid/util/Size;
    .end local v9    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v10    # "width":I
    :catch_0
    move-exception v4

    .line 683
    .local v4, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to get camera id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 684
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraHolder:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-virtual {v11}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->handleCameraError()V

    .line 685
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mOpenErrorToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 687
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_b
    const/4 v11, 0x0

    return v11

    .line 661
    .restart local v2    # "cameraId":Ljava/lang/String;
    .restart local v3    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v5    # "facing":Ljava/lang/Integer;
    .restart local v6    # "height":I
    .restart local v7    # "imageSizes":[Landroid/util/Size;
    .restart local v9    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .restart local v10    # "width":I
    :cond_c
    :try_start_1
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    int-to-float v12, v12

    div-float v1, v11, v12

    .restart local v1    # "cameraAspectRatio":F
    goto/16 :goto_2

    .line 667
    :cond_d
    int-to-float v11, v6

    mul-float/2addr v11, v1

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v10, v11

    goto/16 :goto_3
.end method

.method private setupButtonLayout(I)V
    .locals 11
    .param p1, "orientation"    # I

    .prologue
    const v10, 0x7f0c00b3

    const/16 v9, 0x15

    const/16 v8, 0xc

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 994
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mFlipCameraButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 993
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 997
    .local v2, "flipCameraParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraCenterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 996
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 999
    .local v0, "acceptCameraParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mDeclinePictureButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 998
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1001
    .local v1, "declineCameraParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 1004
    const v4, 0x800055

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1007
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1008
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1009
    const v5, 0x7f0c0131

    .line 1008
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1010
    .local v3, "offset":I
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1011
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1012
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 1015
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1016
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1017
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1018
    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1020
    invoke-virtual {v0, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1021
    const/16 v4, 0xe

    invoke-virtual {v0, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1024
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1025
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1027
    invoke-virtual {v1, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1028
    const/16 v4, 0x10

    const v5, 0x7f0d0042

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1031
    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 1032
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1031
    add-int v3, v4, v5

    .line 1034
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1035
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 1036
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 1073
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mFlipCameraButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1074
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraCenterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1075
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mDeclinePictureButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 991
    return-void

    .line 1040
    .end local v3    # "offset":I
    :cond_0
    const v4, 0x800035

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1043
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1044
    const v5, 0x7f0c012f

    .line 1043
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1045
    .restart local v3    # "offset":I
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1046
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 1047
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1048
    const v5, 0x7f0c0130

    .line 1047
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1049
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1052
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1053
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1055
    invoke-virtual {v1, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1056
    const/4 v4, 0x3

    const v5, 0x7f0d0042

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1059
    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 1060
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1059
    add-int v3, v4, v5

    .line 1061
    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1062
    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1063
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 1064
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 1067
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1068
    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1070
    invoke-virtual {v0, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1071
    const/16 v4, 0xf

    invoke-virtual {v0, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method private setupCameraViews(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;)V
    .locals 4
    .param p1, "mode"    # Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 579
    invoke-static {}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-getcom_sonyericsson_conversations_ui_camera_InlineCameraFragment$ViewModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 596
    const-string/jumbo v0, "Camera view mode not found for layout"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 599
    :goto_0
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mViewMode:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    .line 600
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->setCenterButtonMode()V

    .line 601
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->animateButtons()V

    .line 578
    return-void

    .line 581
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mFlipCameraButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mDeclinePictureButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mPreviewPictureAcceptImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraCenterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 588
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mFlipCameraButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mPreviewPictureAcceptImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mDeclinePictureButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 592
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mDeclinePictureButtonView:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 593
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraCenterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 579
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startFlipCameraEffect(Z)V
    .locals 4
    .param p1, "fadingDirectionUp"    # Z

    .prologue
    const/4 v3, 0x2

    .line 942
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 943
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureView:Landroid/view/TextureView;

    if-nez v2, :cond_1

    .line 944
    :cond_0
    return-void

    .line 948
    :cond_1
    if-eqz p1, :cond_2

    .line 949
    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 953
    .local v1, "anim":Landroid/animation/ValueAnimator;
    :goto_0
    new-instance v2, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$5;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$5;-><init>(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 962
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 963
    const v3, 0x7f0a0025

    .line 962
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 964
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 941
    return-void

    .line 951
    .end local v1    # "anim":Landroid/animation/ValueAnimator;
    :cond_2
    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .restart local v1    # "anim":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 949
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 951
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private stopAndStartCamera()V
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraHolder:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->close()V

    .line 1080
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->setupScreenAndTexture()V

    .line 1081
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->openCamera()V

    .line 1078
    return-void
.end method

.method private takePicture()V
    .locals 13

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureView:Landroid/view/TextureView;

    if-nez v0, :cond_0

    .line 1086
    const-string/jumbo v0, "Could not take picture, texture view is null"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 1087
    return-void

    .line 1091
    :cond_0
    const/16 v0, 0x9

    new-array v12, v0, [F

    .line 1092
    .local v12, "values":[F
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureViewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v12}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1093
    const/4 v0, 0x5

    aget v0, v12, v0

    neg-float v0, v0

    float-to-int v7, v0

    .line 1096
    .local v7, "centerY":I
    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 1097
    .local v11, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0135

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v11, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1098
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v11}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setAlpha(F)V

    .line 1100
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraHolder:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->stopRepeating()V

    .line 1101
    new-instance v0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mViewFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    .line 1102
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mViewFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v5

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getHeight()I

    move-result v6

    .line 1103
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v8

    .line 1104
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mUriDraftPicture:Landroid/net/Uri;

    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mShutterSound:Landroid/media/MediaActionSound;

    move-object v1, p0

    .line 1101
    invoke-direct/range {v0 .. v10}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;-><init>(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;Landroid/graphics/Bitmap;IIIIIILandroid/net/Uri;Landroid/media/MediaActionSound;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mShootTask:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;

    .line 1105
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mShootTask:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1084
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 869
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 868
    :goto_0
    :pswitch_0
    return-void

    .line 871
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->centerButtonClicked()V

    goto :goto_0

    .line 875
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mFlipCameraButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 876
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraCenterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 877
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->changeCameraFacing()V

    .line 880
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getMainLooperHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$4;-><init>(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)V

    .line 885
    const-wide/16 v2, 0x3c

    .line 880
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 888
    :pswitch_3
    sget-object v0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;->TAKING_PICTURE:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->setupCameraViews(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;)V

    .line 889
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mUriDraftPicture:Landroid/net/Uri;

    invoke-static {v0}, Lcom/sonyericsson/conversations/util/MediaUtil;->deleteFileUri(Landroid/net/Uri;)V

    .line 890
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mBitmapUsedInView:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mBitmapUsedInView:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 894
    :cond_0
    :goto_1
    const-string/jumbo v0, "message_list"

    .line 895
    const-string/jumbo v1, "preview_picture"

    const-string/jumbo v2, "discard"

    .line 894
    invoke-static {v0, v1, v2}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mBitmapUsedInView:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 892
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mBitmapUsedInView:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 869
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0040
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 915
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 916
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->setupScreenAndTexture()V

    .line 917
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->setupButtonLayout(I)V

    .line 914
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 409
    const v1, 0x7f030014

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 410
    .local v0, "mDialogContent":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 411
    :cond_0
    return-object v3

    .line 414
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 415
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 416
    const/4 v3, 0x1

    .line 414
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->createTopToast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mOpenErrorToast:Landroid/widget/Toast;

    .line 418
    new-instance v1, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$3;-><init>(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)V

    .line 417
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 436
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mShootTask:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mShootTask:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ShootTask;->cancel(Z)Z

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mShutterSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 504
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 501
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraHolder:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->close()V

    .line 496
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mProgressSpinnerHandler:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$H;->removeMessages(I)V

    .line 497
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 494
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 465
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 466
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mShutterSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 467
    new-instance v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraHolder:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    .line 468
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->setupScreenAndTexture()V

    .line 470
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->openCamera()V

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraAlreadyInitializedOnce:Z

    .line 464
    :goto_0
    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureView:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 441
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 442
    const v0, 0x7f0d0040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mFlipCameraButtonView:Landroid/widget/ImageButton;

    .line 443
    const v0, 0x7f0d0042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraCenterBtn:Landroid/widget/ImageButton;

    .line 444
    const v0, 0x7f0d0043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mDeclinePictureButtonView:Landroid/widget/ImageButton;

    .line 446
    const v0, 0x7f0d0041

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 445
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mPreviewPictureAcceptImageView:Landroid/widget/ImageView;

    .line 448
    const v0, 0x7f0d003e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 447
    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mViewFrameLayout:Landroid/widget/FrameLayout;

    .line 450
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCameraCenterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mFlipCameraButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mDeclinePictureButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    const v0, 0x7f0d003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureView:Landroid/view/TextureView;

    .line 454
    const v0, 0x7f0d0044

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mStartCameraSpinner:Landroid/widget/ProgressBar;

    .line 456
    sget-object v0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;->TAKING_PICTURE:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->setupCameraViews(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;)V

    .line 457
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->setupButtonLayout(I)V

    .line 459
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mProgressSpinnerHandler:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$H;

    .line 460
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    .line 459
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$H;->sendEmptyMessageDelayed(IJ)Z

    .line 440
    return-void
.end method

.method public setCallback(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$Callback;

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mCallback:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$Callback;

    .line 1111
    return-void
.end method

.method setupScreenAndTexture()V
    .locals 6

    .prologue
    .line 921
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 922
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 923
    return-void

    .line 925
    :cond_0
    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 926
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 928
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->setUpCameraOutputs()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 929
    iget v2, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureViewSizeX:I

    iget v3, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureViewSizeY:I

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->configureTransform(II)V

    .line 931
    sget-boolean v2, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 932
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Set TextureView : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureViewSizeX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureViewSizeY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 936
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureView:Landroid/view/TextureView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 937
    iget v4, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureViewSizeX:I

    iget v5, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->mTextureViewSizeY:I

    .line 936
    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 920
    :cond_2
    return-void
.end method
