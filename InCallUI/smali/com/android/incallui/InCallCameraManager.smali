.class public Lcom/android/incallui/InCallCameraManager;
.super Ljava/lang/Object;
.source "InCallCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallCameraManager$Listener;
    }
.end annotation


# instance fields
.field private final mCameraSelectionListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallCameraManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFrontFacingCameraId:Ljava/lang/String;

.field private mIsInitialized:Z

.field private mRearFacingCameraId:Ljava/lang/String;

.field private mUseFrontFacingCamera:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 41
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mCameraSelectionListeners:Ljava/util/Set;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallCameraManager;->mIsInitialized:Z

    .line 76
    iput-boolean v3, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    .line 77
    iput-object p1, p0, Lcom/android/incallui/InCallCameraManager;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method private maybeInitializeCameraList(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 122
    iget-boolean v8, p0, Lcom/android/incallui/InCallCameraManager;->mIsInitialized:Z

    if-nez v8, :cond_0

    if-nez p1, :cond_1

    .line 123
    :cond_0
    return-void

    .line 126
    :cond_1
    const-string/jumbo v8, "initializeCameraList"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    const/4 v2, 0x0

    .line 131
    .local v2, "cameraManager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    const-string/jumbo v8, "camera"

    .line 130
    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    check-cast v2, Landroid/hardware/camera2/CameraManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .local v2, "cameraManager":Landroid/hardware/camera2/CameraManager;
    if-nez v2, :cond_2

    .line 138
    return-void

    .line 132
    .end local v2    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    :catch_0
    move-exception v4

    .line 133
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "Could not get camera service."

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    return-void

    .line 141
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    :cond_2
    new-array v1, v9, [Ljava/lang/String;

    .line 143
    .local v1, "cameraIds":[Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 150
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v1

    if-ge v7, v8, :cond_5

    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, "c":Landroid/hardware/camera2/CameraCharacteristics;
    :try_start_2
    aget-object v8, v1, v7

    invoke-virtual {v2, v8}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 159
    .end local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    :goto_1
    if-eqz v0, :cond_3

    .line 160
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 161
    .local v6, "facingCharacteristic":I
    if-nez v6, :cond_4

    .line 162
    aget-object v8, v1, v7

    iput-object v8, p0, Lcom/android/incallui/InCallCameraManager;->mFrontFacingCameraId:Ljava/lang/String;

    .line 150
    .end local v6    # "facingCharacteristic":I
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 144
    .end local v7    # "i":I
    :catch_1
    move-exception v3

    .line 145
    .local v3, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Could not access camera: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    return-void

    .line 163
    .end local v3    # "e":Landroid/hardware/camera2/CameraAccessException;
    .restart local v6    # "facingCharacteristic":I
    .restart local v7    # "i":I
    :cond_4
    if-ne v6, v10, :cond_3

    .line 164
    aget-object v8, v1, v7

    iput-object v8, p0, Lcom/android/incallui/InCallCameraManager;->mRearFacingCameraId:Ljava/lang/String;

    goto :goto_2

    .line 169
    .end local v6    # "facingCharacteristic":I
    :cond_5
    iput-boolean v10, p0, Lcom/android/incallui/InCallCameraManager;->mIsInitialized:Z

    .line 170
    const-string/jumbo v8, "initializeCameraList : done"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    return-void

    .line 154
    .restart local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    :catch_2
    move-exception v5

    .local v5, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 156
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    .restart local v3    # "e":Landroid/hardware/camera2/CameraAccessException;
    goto :goto_1
.end method


# virtual methods
.method public addCameraSelectionListener(Lcom/android/incallui/InCallCameraManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallCameraManager$Listener;

    .prologue
    .line 174
    if-eqz p1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mCameraSelectionListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_0
    return-void
.end method

.method public getActiveCameraId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallCameraManager;->maybeInitializeCameraList(Landroid/content/Context;)V

    .line 109
    iget-boolean v0, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mFrontFacingCameraId:Ljava/lang/String;

    return-object v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mRearFacingCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public isUsingFrontFacingCamera()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    return v0
.end method

.method public removeCameraSelectionListener(Lcom/android/incallui/InCallCameraManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallCameraManager$Listener;

    .prologue
    .line 180
    if-eqz p1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mCameraSelectionListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    return-void
.end method

.method public setUseFrontFacingCamera(Z)V
    .locals 3
    .param p1, "useFrontFacingCamera"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    .line 87
    iget-object v2, p0, Lcom/android/incallui/InCallCameraManager;->mCameraSelectionListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallCameraManager$Listener;

    .line 88
    .local v0, "listener":Lcom/android/incallui/InCallCameraManager$Listener;
    iget-boolean v2, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    invoke-interface {v0, v2}, Lcom/android/incallui/InCallCameraManager$Listener;->onActiveCameraSelectionChanged(Z)V

    goto :goto_0

    .line 85
    .end local v0    # "listener":Lcom/android/incallui/InCallCameraManager$Listener;
    :cond_0
    return-void
.end method
