.class public Lcom/android/incallui/InCallZoomController;
.super Ljava/lang/Object;
.source "InCallZoomController.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# static fields
.field private static sInCallZoomController:Lcom/android/incallui/InCallZoomController;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCameraId:Ljava/lang/String;

.field mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mContext:Landroid/content/Context;

.field private mInCallPresenter:Lcom/android/incallui/InCallPresenter;

.field private mZoomIndex:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/InCallZoomController;->mZoomIndex:I

    .line 113
    return-void
.end method

.method private dismissAlertDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Lcom/android/incallui/InCallZoomController;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/incallui/InCallZoomController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 230
    iput-object v1, p0, Lcom/android/incallui/InCallZoomController;->mAlertDialog:Landroid/app/AlertDialog;

    .line 227
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/InCallZoomController;
    .locals 2

    .prologue
    const-class v1, Lcom/android/incallui/InCallZoomController;

    monitor-enter v1

    .line 104
    :try_start_0
    sget-object v0, Lcom/android/incallui/InCallZoomController;->sInCallZoomController:Lcom/android/incallui/InCallZoomController;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/android/incallui/InCallZoomController;

    invoke-direct {v0}, Lcom/android/incallui/InCallZoomController;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallZoomController;->sInCallZoomController:Lcom/android/incallui/InCallZoomController;

    .line 107
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallZoomController;->sInCallZoomController:Lcom/android/incallui/InCallZoomController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCameraEnabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCameraEnabled: - cameraId -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/incallui/InCallZoomController;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iput-object p1, p0, Lcom/android/incallui/InCallZoomController;->mCameraId:Ljava/lang/String;

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/InCallZoomController;->mZoomIndex:I

    .line 223
    invoke-direct {p0}, Lcom/android/incallui/InCallZoomController;->dismissAlertDialog()V

    .line 218
    :cond_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onIncomingCall - Call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "oldState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "newState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lcom/android/incallui/InCallZoomController;->dismissAlertDialog()V

    .line 240
    return-void
.end method

.method public setUp(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/incallui/InCallZoomController;->mContext:Landroid/content/Context;

    .line 121
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallZoomController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    .line 122
    iget-object v0, p0, Lcom/android/incallui/InCallZoomController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 123
    iget-object v0, p0, Lcom/android/incallui/InCallZoomController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/incallui/InCallZoomController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 119
    return-void
.end method

.method public tearDown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    iput-object v1, p0, Lcom/android/incallui/InCallZoomController;->mAlertDialog:Landroid/app/AlertDialog;

    .line 131
    iput-object v1, p0, Lcom/android/incallui/InCallZoomController;->mContext:Landroid/content/Context;

    .line 132
    iput-object v1, p0, Lcom/android/incallui/InCallZoomController;->mCameraId:Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/InCallZoomController;->mZoomIndex:I

    .line 134
    iget-object v0, p0, Lcom/android/incallui/InCallZoomController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 135
    iput-object v1, p0, Lcom/android/incallui/InCallZoomController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    .line 136
    iput-object v1, p0, Lcom/android/incallui/InCallZoomController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 129
    return-void
.end method
