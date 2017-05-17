.class Lcom/sonyericsson/conversations/ui/camera/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;,
        Lcom/sonyericsson/conversations/ui/camera/CameraHolder$1;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_ui_camera_CameraHolder$CameraStateSwitchesValues:[I


# instance fields
.field private mCameraAutoFocusModeAvailable:Z

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraId:Ljava/lang/String;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mOpenErrorToast:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mPreviewSize:Landroid/util/Size;

.field private mState:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

.field private final mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mStateLock:Ljava/lang/Object;

.field private mTextureView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/TextureView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mCameraAutoFocusModeAvailable:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Landroid/hardware/camera2/CameraDevice;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic -get10(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mTextureView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Landroid/hardware/camera2/CameraManager;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mOpenErrorToast:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mPreviewSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic -get7(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mState:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    return-object v0
.end method

.method static synthetic -get8(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-object v0
.end method

.method static synthetic -get9(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_conversations_ui_camera_CameraHolder$CameraStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-com_sonyericsson_conversations_ui_camera_CameraHolder$CameraStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-com_sonyericsson_conversations_ui_camera_CameraHolder$CameraStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->values()[Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->CloseAfterOpened:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->Closed:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->Closing:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->Open:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->OpenAfterClosed:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->Opening:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-com_sonyericsson_conversations_ui_camera_CameraHolder$CameraStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object p1
.end method

.method static synthetic -set3(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;)Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mState:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->internalClose()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->postErrorToast()V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-object v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->Closed:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mState:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mStateLock:Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mTextureView:Ljava/lang/ref/WeakReference;

    .line 78
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mOpenErrorToast:Ljava/lang/ref/WeakReference;

    .line 315
    new-instance v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$1;-><init>(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 47
    return-void
.end method

.method private closeCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 190
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 192
    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_1

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 197
    .local v0, "cameraDevice":Landroid/hardware/camera2/CameraDevice;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$3;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$3;-><init>(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;Landroid/hardware/camera2/CameraDevice;)V

    .line 202
    const-string/jumbo v3, "CloseCamera"

    .line 197
    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 203
    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 189
    .end local v0    # "cameraDevice":Landroid/hardware/camera2/CameraDevice;
    :cond_1
    return-void
.end method

.method private internalClose()V
    .locals 3

    .prologue
    .line 142
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-getcom_sonyericsson_conversations_ui_camera_CameraHolder$CameraStateSwitchesValues()[I

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mState:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 163
    const-string/jumbo v0, "Unhandled state!"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 164
    return-void

    .line 145
    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->Closing:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mState:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    .line 146
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->closeCamera()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    .line 141
    return-void

    .line 150
    :pswitch_1
    :try_start_2
    sget-object v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->CloseAfterOpened:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mState:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_2
    monitor-exit v1

    .line 156
    return-void

    .line 159
    :pswitch_3
    :try_start_3
    sget-object v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->Closing:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mState:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    .line 160
    return-void

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private openCamera()V
    .locals 3

    .prologue
    .line 170
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$2;-><init>(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)V

    .line 183
    const-string/jumbo v2, "OpenCamera"

    .line 170
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 169
    return-void
.end method

.method private postErrorToast()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 220
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mOpenErrorToast:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    .line 221
    .local v0, "toast":Landroid/widget/Toast;
    if-eqz v0, :cond_0

    .line 222
    const/16 v1, 0x51

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 223
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 219
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->internalClose()V

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mTextureView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mOpenErrorToast:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 135
    return-void
.end method

.method createCameraPreviewSession()V
    .locals 9

    .prologue
    .line 232
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mTextureView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/TextureView;

    .line 233
    .local v4, "textureView":Landroid/view/TextureView;
    if-nez v4, :cond_0

    .line 234
    return-void

    .line 236
    :cond_0
    invoke-virtual {v4}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    .line 237
    .local v3, "texture":Landroid/graphics/SurfaceTexture;
    if-nez v3, :cond_1

    .line 238
    return-void

    .line 242
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 245
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 249
    .local v2, "surface":Landroid/view/Surface;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 251
    .local v1, "previewRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 254
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/view/Surface;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 255
    new-instance v7, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$4;

    invoke-direct {v7, p0, v1}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$4;-><init>(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 302
    const/4 v8, 0x0

    .line 254
    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v1    # "previewRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v2    # "surface":Landroid/view/Surface;
    .end local v3    # "texture":Landroid/graphics/SurfaceTexture;
    .end local v4    # "textureView":Landroid/view/TextureView;
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->handleCameraError()V

    .line 306
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->postErrorToast()V

    goto :goto_0
.end method

.method public handleCameraError()V
    .locals 3

    .prologue
    .line 212
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mState:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    sget-object v2, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->Open:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mState:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    sget-object v2, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->Opening:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    if-ne v0, v2, :cond_1

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 211
    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public open(Landroid/view/TextureView;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;ZLandroid/util/Size;Landroid/widget/Toast;)V
    .locals 3
    .param p1, "textureView"    # Landroid/view/TextureView;
    .param p2, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
    .param p3, "cameraId"    # Ljava/lang/String;
    .param p4, "captureCallback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p5, "cameraAutoFocusModeAvailable"    # Z
    .param p6, "previewSize"    # Landroid/util/Size;
    .param p7, "errorToast"    # Landroid/widget/Toast;

    .prologue
    .line 97
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mOpenErrorToast:Ljava/lang/ref/WeakReference;

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mTextureView:Ljava/lang/ref/WeakReference;

    .line 99
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mCameraId:Ljava/lang/String;

    .line 100
    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 101
    iput-boolean p5, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mCameraAutoFocusModeAvailable:Z

    .line 102
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 103
    iput-object p6, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mPreviewSize:Landroid/util/Size;

    .line 105
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-getcom_sonyericsson_conversations_ui_camera_CameraHolder$CameraStateSwitchesValues()[I

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mState:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 126
    const-string/jumbo v0, "Unhandled state!"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 127
    return-void

    :pswitch_0
    monitor-exit v1

    .line 110
    return-void

    .line 113
    :pswitch_1
    :try_start_1
    sget-object v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->Opening:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mState:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 114
    return-void

    .line 117
    :pswitch_2
    :try_start_2
    sget-object v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->Opening:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mState:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    .line 118
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->openCamera()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v1

    .line 96
    return-void

    .line 122
    :pswitch_3
    :try_start_3
    sget-object v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->OpenAfterClosed:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mState:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setRepeatingRequest(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V
    .locals 4
    .param p1, "captureCallback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .prologue
    .line 364
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v1, :cond_0

    .line 365
    return-void

    .line 368
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 369
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getMainLooperHandler()Landroid/os/Handler;

    move-result-object v3

    .line 368
    invoke-virtual {v1, v2, p1, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "cae":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CameraAccessException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->handleCameraError()V

    .line 373
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->postErrorToast()V

    goto :goto_0
.end method

.method public stopRepeating()V
    .locals 2

    .prologue
    .line 381
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v1, :cond_0

    .line 382
    return-void

    .line 385
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string/jumbo v1, "Could not stop camera image"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
