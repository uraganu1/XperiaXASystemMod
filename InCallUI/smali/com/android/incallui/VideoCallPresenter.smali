.class public Lcom/android/incallui/VideoCallPresenter;
.super Lcom/android/incallui/Presenter;
.source "VideoCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;
.implements Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
.implements Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
.implements Lcom/android/incallui/InCallPresenter$InCallEventListener;
.implements Lcom/android/incallui/InCallUiStateNotifierListener;
.implements Lcom/android/incallui/SomcVideoShareZoom$OnZoomChangedListener;
.implements Lcom/android/incallui/SomcThermalCheck$ThermalCheckListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/VideoCallPresenter$VideoCallUi;,
        Lcom/android/incallui/VideoCallPresenter$ContactLookupCallback;,
        Lcom/android/incallui/VideoCallPresenter$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/VideoCallPresenter$VideoCallUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallPresenter$InCallOrientationListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
        "Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;",
        "Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;",
        "Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;",
        "Lcom/android/incallui/InCallPresenter$InCallEventListener;",
        "Lcom/android/incallui/InCallUiStateNotifierListener;",
        "Lcom/android/incallui/SomcVideoShareZoom$OnZoomChangedListener;",
        "Lcom/android/incallui/SomcThermalCheck$ThermalCheckListener;"
    }
.end annotation


# static fields
.field private static mIsVideoMode:Z

.field private static sPrevVideoAudioMode:I


# instance fields
.field private mAutoFullScreenPending:Z

.field private mAutoFullscreenRunnable:Ljava/lang/Runnable;

.field private mAutoFullscreenTimeoutMillis:I

.field private mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentCallState:I

.field private mCurrentVideoState:I

.field private mDeviceOrientation:I

.field private mHandler:Landroid/os/Handler;

.field private mIsAutoFullscreenEnabled:Z

.field private mIsInBackground:Z

.field private mMinimumVideoDimension:F

.field private mPreviewSurfaceState:I

.field private mPrimaryCall:Lcom/android/incallui/Call;

.field private mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mProfileInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mVideoCall:Landroid/telecom/InCallService$VideoCall;


# direct methods
.method static synthetic -get0(Lcom/android/incallui/VideoCallPresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullScreenPending:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/contacts/common/ContactPhotoManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/incallui/VideoCallPresenter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mProfileInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/incallui/VideoCallPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullScreenPending:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/incallui/VideoCallPresenter;Lcom/android/contacts/common/ContactPhotoManager;)Lcom/android/contacts/common/ContactPhotoManager;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/incallui/VideoCallPresenter;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mProfileInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/incallui/VideoCallPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "isPrimary"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/VideoCallPresenter;->onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/incallui/VideoCallPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/VideoCallPresenter;->onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 181
    sput v0, Lcom/android/incallui/VideoCallPresenter;->sPrevVideoAudioMode:I

    .line 183
    sput-boolean v0, Lcom/android/incallui/VideoCallPresenter;->mIsVideoMode:Z

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 95
    new-instance v0, Lcom/android/incallui/VideoCallPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/VideoCallPresenter$1;-><init>(Lcom/android/incallui/VideoCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullscreenRunnable:Ljava/lang/Runnable;

    .line 166
    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    .line 171
    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_0:I

    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    .line 176
    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    .line 188
    iput-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 193
    iput-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mProfileInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 204
    iput-boolean v1, p0, Lcom/android/incallui/VideoCallPresenter;->mIsAutoFullscreenEnabled:Z

    .line 210
    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullscreenTimeoutMillis:I

    .line 220
    iput-boolean v1, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullScreenPending:Z

    .line 80
    return-void
.end method

.method private changePreviewDimensions(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1074
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 1075
    .local v1, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v1, :cond_0

    .line 1076
    return-void

    .line 1080
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setPreviewSurfaceSize(II)V

    .line 1083
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1084
    .local v0, "aspectRatio":F
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 1085
    if-le p1, p2, :cond_2

    .line 1086
    int-to-float v2, p1

    int-to-float v3, p2

    div-float v0, v2, v3

    .line 1094
    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    invoke-direct {p0, v2, v0}, Lcom/android/incallui/VideoCallPresenter;->setPreviewSize(IF)V

    .line 1073
    return-void

    .line 1088
    :cond_2
    int-to-float v2, p2

    int-to-float v3, p1

    div-float v0, v2, v3

    goto :goto_0
.end method

.method private changeToVoiceCallIfNeeded(Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v4, 0x0

    .line 1799
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1800
    invoke-static {}, Lcom/android/incallui/SomcThermalCheck;->getInstance()Lcom/android/incallui/SomcThermalCheck;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SomcThermalCheck;->isThermalCritical()Z

    move-result v2

    .line 1799
    if-eqz v2, :cond_0

    .line 1804
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    .line 1805
    .local v0, "videoCall":Landroid/telecom/InCallService$VideoCall;
    new-instance v1, Landroid/telecom/VideoProfile;

    .line 1806
    const/4 v2, 0x4

    .line 1805
    invoke-direct {v1, v4, v2}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1807
    .local v1, "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 1810
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f0b02db

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1798
    .end local v0    # "videoCall":Landroid/telecom/InCallService$VideoCall;
    .end local v1    # "videoProfile":Landroid/telecom/VideoProfile;
    :cond_0
    return-void
.end method

.method private changeVideoCall(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 718
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    .line 719
    .local v1, "videoCall":Landroid/telecom/InCallService$VideoCall;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "changeVideoCall to videoCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mVideoCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 721
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eqz v2, :cond_0

    .line 727
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 729
    .local v0, "hasChanged":Z
    :goto_0
    iput-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    .line 730
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eqz v2, :cond_1

    if-nez p1, :cond_3

    .line 731
    :cond_1
    const-string/jumbo v2, "Video call or primary call is null. Return"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 732
    return-void

    .line 727
    .end local v0    # "hasChanged":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "hasChanged":Z
    goto :goto_0

    .line 735
    :cond_3
    invoke-static {p1}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 736
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->enterVideoMode(Lcom/android/incallui/Call;)V

    .line 717
    :cond_4
    return-void
.end method

.method private checkForCallStateChange(Lcom/android/incallui/Call;)V
    .locals 7
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 579
    if-nez p1, :cond_0

    .line 580
    return-void

    .line 583
    :cond_0
    invoke-static {p1}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    .line 584
    .local v2, "isVideoCall":Z
    iget v5, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    if-eq v5, v6, :cond_1

    const/4 v1, 0x1

    .line 586
    .local v1, "hasCallStateChanged":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkForCallStateChange: isVideoCall= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 587
    const-string/jumbo v6, " hasCallStateChanged="

    .line 586
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 588
    const-string/jumbo v6, " isVideoMode="

    .line 586
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 588
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v6

    .line 586
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    if-nez v1, :cond_2

    .line 591
    return-void

    .line 584
    .end local v1    # "hasCallStateChanged":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "hasCallStateChanged":Z
    goto :goto_0

    .line 594
    :cond_2
    if-eqz v2, :cond_4

    .line 595
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v0

    .line 598
    .local v0, "cameraManager":Lcom/android/incallui/InCallCameraManager;
    invoke-virtual {v0}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v4

    .line 599
    .local v4, "prevCameraId":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->updateCameraSelection(Lcom/android/incallui/Call;)V

    .line 600
    invoke-virtual {v0}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v3

    .line 602
    .local v3, "newCameraId":Ljava/lang/String;
    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {p1}, Lcom/android/incallui/CallUtils;->isActiveVideoCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 603
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    .line 606
    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/incallui/VideoCallPresenter;->updateVideoCallState(Lcom/android/incallui/Call;I)V

    .line 610
    .end local v0    # "cameraManager":Lcom/android/incallui/InCallCameraManager;
    .end local v3    # "newCameraId":Ljava/lang/String;
    .end local v4    # "prevCameraId":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/incallui/VideoCallPresenter;->showVideoUi(II)V

    .line 578
    return-void
.end method

.method private checkForOrientationAllowedChange(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 695
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    .line 696
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isLandscapeAllowed()Z

    move-result v1

    .line 695
    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setInCallAllowsOrientationChange(Z)V

    .line 694
    return-void
.end method

.method private checkForVideoCallChange(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 703
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    .line 704
    .local v0, "videoCall":Landroid/telecom/InCallService$VideoCall;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkForVideoCallChange: videoCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mVideoCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 705
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    .line 704
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 706
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 707
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->changeVideoCall(Lcom/android/incallui/Call;)V

    .line 702
    :cond_0
    return-void
.end method

.method private checkForVideoStateChange(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 555
    invoke-static {p1}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 556
    .local v1, "isVideoCall":Z
    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 558
    .local v0, "hasVideoStateChanged":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkForVideoStateChange: isVideoCall= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 559
    const-string/jumbo v3, " hasVideoStateChanged="

    .line 558
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 559
    const-string/jumbo v3, " isVideoMode="

    .line 558
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 560
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v3

    .line 558
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 560
    const-string/jumbo v3, " previousVideoState: "

    .line 558
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 561
    iget v3, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    invoke-static {v3}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v3

    .line 558
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 561
    const-string/jumbo v3, " newVideoState: "

    .line 558
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 562
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v3

    invoke-static {v3}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v3

    .line 558
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    if-nez v0, :cond_1

    .line 565
    return-void

    .line 556
    .end local v0    # "hasVideoStateChanged":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "hasVideoStateChanged":Z
    goto :goto_0

    .line 568
    :cond_1
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->updateCameraSelection(Lcom/android/incallui/Call;)V

    .line 570
    if-eqz v1, :cond_3

    .line 571
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->enterVideoMode(Lcom/android/incallui/Call;)V

    .line 572
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/VideoCallPresenter;->updateVideoCallState(Lcom/android/incallui/Call;I)V

    .line 554
    :cond_2
    :goto_1
    return-void

    .line 573
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 574
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->exitVideoMode()V

    goto :goto_1
.end method

.method private cleanupSurfaces()V
    .locals 2

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 615
    .local v0, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v0, :cond_0

    .line 616
    const-string/jumbo v1, "cleanupSurfaces"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    return-void

    .line 619
    :cond_0
    invoke-interface {v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->cleanupSurfaces()V

    .line 613
    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    .line 1765
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 1766
    .local v0, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v0, :cond_0

    .line 1767
    const-string/jumbo v1, "clear() called but ui is null!"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1768
    return-void

    .line 1770
    :cond_0
    invoke-interface {v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->clear()V

    .line 1764
    return-void
.end method

.method private enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V
    .locals 6
    .param p1, "videoCall"    # Landroid/telecom/InCallService$VideoCall;
    .param p2, "isCameraRequired"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 835
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enableCamera: VideoCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " enabling="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 836
    if-nez p1, :cond_0

    .line 837
    const-string/jumbo v2, "enableCamera: VideoCall is null."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 838
    return-void

    .line 841
    :cond_0
    if-eqz p2, :cond_3

    .line 844
    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    if-nez v2, :cond_2

    .line 846
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 847
    .local v1, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-eqz v1, :cond_1

    .line 848
    invoke-interface {v1, v4}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setCameraError(Z)V

    .line 851
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v0

    .line 853
    .local v0, "cameraManager":Lcom/android/incallui/InCallCameraManager;
    invoke-virtual {v0}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    .line 854
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    .line 856
    invoke-virtual {p1}, Landroid/telecom/InCallService$VideoCall;->requestCameraCapabilities()V

    .line 857
    invoke-static {}, Lcom/android/incallui/InCallZoomController;->getInstance()Lcom/android/incallui/InCallZoomController;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallZoomController;->onCameraEnabled(Ljava/lang/String;)V

    .line 834
    .end local v0    # "cameraManager":Lcom/android/incallui/InCallCameraManager;
    .end local v1    # "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    :cond_2
    :goto_0
    return-void

    .line 861
    :cond_3
    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    if-eqz v2, :cond_2

    .line 862
    iput v4, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    .line 863
    invoke-virtual {p1, v5}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    .line 864
    invoke-static {}, Lcom/android/incallui/InCallZoomController;->getInstance()Lcom/android/incallui/InCallZoomController;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/incallui/InCallZoomController;->onCameraEnabled(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enterVideoMode(Lcom/android/incallui/Call;)V
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v5, 0x1

    .line 754
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    .line 755
    .local v2, "videoCall":Landroid/telecom/InCallService$VideoCall;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    .line 757
    .local v0, "newVideoState":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enterVideoMode videoCall= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " videoState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 758
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 759
    .local v1, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v1, :cond_0

    .line 760
    const-string/jumbo v3, "Error VideoCallUi is null so returning"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 761
    return-void

    .line 764
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/incallui/VideoCallPresenter;->showVideoUi(II)V

    .line 768
    if-eqz v2, :cond_2

    .line 769
    invoke-interface {v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->isDisplayVideoSurfaceCreated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 770
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Calling setDisplaySurface with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getDisplayVideoSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 771
    invoke-interface {v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getDisplayVideoSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telecom/InCallService$VideoCall;->setDisplaySurface(Landroid/view/Surface;)V

    .line 774
    :cond_1
    iget v3, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    invoke-virtual {v2, v3}, Landroid/telecom/InCallService$VideoCall;->setDeviceOrientation(I)V

    .line 775
    invoke-direct {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->isCameraRequired(I)Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    .line 777
    :cond_2
    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    .line 778
    invoke-direct {p0, v5}, Lcom/android/incallui/VideoCallPresenter;->updateAudioMode(Z)V

    .line 780
    sput-boolean v5, Lcom/android/incallui/VideoCallPresenter;->mIsVideoMode:Z

    .line 782
    invoke-virtual {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->maybeAutoEnterFullscreen(Lcom/android/incallui/Call;)V

    .line 753
    return-void
.end method

.method private exitVideoMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 873
    const-string/jumbo v0, "exitVideoMode"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 875
    const/4 v0, 0x3

    invoke-direct {p0, v1, v0}, Lcom/android/incallui/VideoCallPresenter;->showVideoUi(II)V

    .line 876
    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    .line 878
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    .line 879
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    .line 881
    sput-boolean v1, Lcom/android/incallui/VideoCallPresenter;->mIsVideoMode:Z

    .line 872
    return-void
.end method

.method private static isAudioRouteEnabled(II)Z
    .locals 2
    .param p0, "audioRoute"    # I
    .param p1, "audioRouteMask"    # I

    .prologue
    const/4 v0, 0x0

    .line 1352
    and-int v1, p0, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isCameraDirectionSet(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x0

    .line 1430
    invoke-static {p0}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call$VideoSettings;->getCameraDir()I

    move-result v1

    .line 1431
    const/4 v2, -0x1

    .line 1430
    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isCameraRequired()Z
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->isCameraRequired(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCameraRequired(I)Z
    .locals 2
    .param p1, "videoState"    # I

    .prologue
    const/4 v0, 0x0

    .line 741
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 742
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v1

    .line 741
    if-eqz v1, :cond_1

    .line 742
    :cond_0
    iget-boolean v1, p0, Lcom/android/incallui/VideoCallPresenter;->mIsInBackground:Z

    if-eqz v1, :cond_2

    .line 741
    :cond_1
    :goto_0
    return v0

    .line 742
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isSpeakerEnabledForVideoCalls()Z
    .locals 1

    .prologue
    .line 831
    const/4 v0, 0x1

    return v0
.end method

.method private isVideoMode()Z
    .locals 1

    .prologue
    .line 645
    sget-boolean v0, Lcom/android/incallui/VideoCallPresenter;->mIsVideoMode:Z

    return v0
.end method

.method private maybeEnableCamera()V
    .locals 2

    .prologue
    .line 950
    iget v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->isCameraRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    .line 949
    :cond_0
    return-void
.end method

.method private maybeStartSearch(Lcom/android/incallui/Call;Z)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "isPrimary"    # Z

    .prologue
    .line 1662
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1660
    :cond_0
    :goto_0
    return-void

    .line 1663
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/VideoCallPresenter;->startContactInfoSearch(Lcom/android/incallui/Call;ZZ)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private onCallSessionEventExt(I)V
    .locals 5
    .param p1, "event"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1560
    const-string/jumbo v1, "VideoCallPresenter"

    const-string/jumbo v2, "onCallSessionEventExt"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 1562
    .local v0, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v0, :cond_0

    .line 1563
    const-string/jumbo v1, "onCallSessionEventExt: VideoCallUi is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1564
    return-void

    .line 1567
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1580
    :pswitch_0
    invoke-interface {v0, v3}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setVideoFramesReady(Z)V

    .line 1559
    :goto_0
    :pswitch_1
    return-void

    .line 1569
    :pswitch_2
    invoke-interface {v0, v3}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setVideoFramesReady(Z)V

    goto :goto_0

    .line 1572
    :pswitch_3
    invoke-interface {v0, v4}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setVideoFramesReady(Z)V

    goto :goto_0

    .line 1575
    :pswitch_4
    invoke-interface {v0, v4}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setCameraError(Z)V

    goto :goto_0

    .line 1567
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "isPrimary"    # Z

    .prologue
    .line 1709
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/android/incallui/VideoCallPresenter;->updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V

    .line 1710
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Contact found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1713
    :cond_0
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 1714
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/incallui/CallerInfoUtils;->sendViewNotification(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1708
    :cond_1
    return-void
.end method

.method private onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 1719
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1720
    return-void

    .line 1723
    :cond_0
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1724
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1725
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setDisplayPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 1718
    :cond_1
    return-void
.end method

.method private onPrimaryCallChanged(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "newPrimaryCall"    # Lcom/android/incallui/Call;

    .prologue
    .line 623
    invoke-static {p1}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    .line 624
    .local v0, "isVideoCall":Z
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v1

    .line 626
    .local v1, "isVideoMode":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPrimaryCallChanged: isVideoCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isVideoMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 632
    const-string/jumbo v2, "onPrimaryCallChanged: Exiting video mode..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->exitVideoMode()V

    .line 641
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->checkForOrientationAllowedChange(Lcom/android/incallui/Call;)V

    .line 622
    return-void

    .line 634
    :cond_1
    if-eqz v0, :cond_0

    .line 635
    const-string/jumbo v2, "onPrimaryCallChanged: Entering video mode..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->updateCameraSelection(Lcom/android/incallui/Call;)V

    .line 638
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->enterVideoMode(Lcom/android/incallui/Call;)V

    .line 639
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->checkForCallStateChange(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method private resetComponents()V
    .locals 0

    .prologue
    .line 1647
    return-void
.end method

.method private setDisplayVideoSize(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDisplayVideoSize:Received peer width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " peer height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1271
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 1272
    .local v1, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v1, :cond_0

    .line 1273
    return-void

    .line 1277
    :cond_0
    invoke-interface {v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getScreenSize()Landroid/graphics/Point;

    move-result-object v0

    .line 1278
    .local v0, "size":Landroid/graphics/Point;
    const-string/jumbo v2, "VideoCallPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDisplayVideoSize: windowmgr width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1279
    const-string/jumbo v4, " windowmgr height="

    .line 1278
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1279
    iget v4, v0, Landroid/graphics/Point;->y:I

    .line 1278
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    iget v2, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v2, p1

    iget v3, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, p2

    if-le v2, v3, :cond_2

    .line 1282
    iget v2, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v2, p2

    div-int/2addr v2, p1

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 1287
    :cond_1
    :goto_0
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, v3}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setDisplayVideoSize(II)V

    .line 1269
    return-void

    .line 1283
    :cond_2
    iget v2, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v2, p1

    iget v3, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, p2

    if-ge v2, v3, :cond_1

    .line 1285
    iget v2, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v2, p1

    div-int/2addr v2, p2

    iput v2, v0, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method private setPreviewSize(IF)V
    .locals 4
    .param p1, "orientation"    # I
    .param p2, "aspectRatio"    # F

    .prologue
    .line 1234
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 1235
    .local v1, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v1, :cond_0

    .line 1236
    return-void

    .line 1242
    :cond_0
    invoke-static {}, Lcom/android/incallui/SomcInCallUiUtils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1243
    sget v3, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_0:I

    if-eq p1, v3, :cond_1

    .line 1244
    sget v3, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_180:I

    if-ne p1, v3, :cond_4

    .line 1245
    :cond_1
    sget p1, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_90:I

    .line 1251
    :cond_2
    :goto_0
    sget v3, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_90:I

    if-eq p1, v3, :cond_3

    .line 1252
    sget v3, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_270:I

    if-ne p1, v3, :cond_5

    .line 1253
    :cond_3
    iget v3, p0, Lcom/android/incallui/VideoCallPresenter;->mMinimumVideoDimension:F

    mul-float/2addr v3, p2

    float-to-int v2, v3

    .line 1254
    .local v2, "width":I
    iget v3, p0, Lcom/android/incallui/VideoCallPresenter;->mMinimumVideoDimension:F

    float-to-int v0, v3

    .line 1260
    .local v0, "height":I
    :goto_1
    invoke-interface {v1, v2, v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setPreviewSize(II)V

    .line 1233
    return-void

    .line 1247
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_4
    sget p1, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_0:I

    goto :goto_0

    .line 1257
    :cond_5
    iget v3, p0, Lcom/android/incallui/VideoCallPresenter;->mMinimumVideoDimension:F

    float-to-int v2, v3

    .line 1258
    .restart local v2    # "width":I
    iget v3, p0, Lcom/android/incallui/VideoCallPresenter;->mMinimumVideoDimension:F

    mul-float/2addr v3, p2

    float-to-int v0, v3

    .restart local v0    # "height":I
    goto :goto_1
.end method

.method public static showIncomingVideo(II)Z
    .locals 3
    .param p0, "videoState"    # I
    .param p1, "callState"    # I

    .prologue
    .line 927
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    .line 928
    .local v1, "isPaused":Z
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    .line 930
    .local v0, "isCallActive":Z
    :goto_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v2

    :goto_1
    return v2

    .line 928
    .end local v0    # "isCallActive":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isCallActive":Z
    goto :goto_0

    .line 930
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static showOutgoingVideo(I)Z
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    .line 942
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    return v0
.end method

.method private showVideoUi(II)V
    .locals 5
    .param p1, "videoState"    # I
    .param p2, "callState"    # I

    .prologue
    .line 893
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 894
    .local v2, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v2, :cond_0

    .line 895
    const-string/jumbo v3, "showVideoUi, VideoCallUi is null returning"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 896
    return-void

    .line 898
    :cond_0
    invoke-static {p1, p2}, Lcom/android/incallui/VideoCallPresenter;->showIncomingVideo(II)Z

    move-result v0

    .line 899
    .local v0, "showIncomingVideo":Z
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->showOutgoingVideo(I)Z

    move-result v1

    .line 900
    .local v1, "showOutgoingVideo":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showVideoUi : showIncoming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " showOutgoing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 902
    if-nez v0, :cond_1

    if-eqz v1, :cond_4

    .line 903
    :cond_1
    invoke-interface {v2, v1, v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->showVideoViews(ZZ)V

    .line 905
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 906
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v3

    .line 905
    if-eqz v3, :cond_3

    .line 907
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->loadProfilePhotoAsync()V

    .line 913
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    .line 914
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v4

    .line 913
    invoke-virtual {v3, v4}, Lcom/android/incallui/InCallPresenter;->enableScreenTimeout(Z)V

    .line 892
    return-void

    .line 910
    :cond_4
    invoke-interface {v2}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->hideVideoUi()V

    goto :goto_0
.end method

.method private startContactInfoSearch(Lcom/android/incallui/Call;ZZ)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "isPrimary"    # Z
    .param p3, "isIncoming"    # Z

    .prologue
    .line 1703
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    .line 1705
    .local v0, "cache":Lcom/android/incallui/ContactInfoCache;
    new-instance v1, Lcom/android/incallui/VideoCallPresenter$ContactLookupCallback;

    invoke-direct {v1, p0, p2}, Lcom/android/incallui/VideoCallPresenter$ContactLookupCallback;-><init>(Lcom/android/incallui/VideoCallPresenter;Z)V

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 1702
    return-void
.end method

.method private static toCameraDirection(I)I
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    .line 1423
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1424
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1426
    :cond_0
    const/4 v0, 0x0

    .line 1423
    :goto_0
    return v0

    .line 1425
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static toSimpleString(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x0

    .line 1435
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->toSimpleString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateAudioMode(Z)V
    .locals 7
    .param p1, "enableSpeaker"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 794
    invoke-static {}, Lcom/android/incallui/VideoCallPresenter;->isSpeakerEnabledForVideoCalls()Z

    move-result v4

    if-nez v4, :cond_0

    .line 795
    const-string/jumbo v4, "Speaker is disabled. Can\'t update audio mode"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 796
    return-void

    .line 799
    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    .line 801
    .local v3, "telecomAdapter":Lcom/android/incallui/TelecomAdapter;
    sget v4, Lcom/android/incallui/VideoCallPresenter;->sPrevVideoAudioMode:I

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    .line 803
    .local v2, "isPrevAudioModeValid":Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Is previous audio mode valid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " enableSpeaker is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 807
    if-eqz v2, :cond_1

    if-eqz p1, :cond_4

    .line 813
    :cond_1
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    .line 814
    .local v0, "currentAudioMode":I
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/AudioModeProvider;->getSupportedModes()I

    move-result v1

    .line 819
    .local v1, "currentSupportedModes":I
    const/4 v4, 0x6

    .line 818
    invoke-static {v0, v4}, Lcom/android/incallui/VideoCallPresenter;->isAudioRouteEnabled(II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 820
    const/4 v4, 0x2

    invoke-static {v1, v4}, Lcom/android/incallui/VideoCallPresenter;->isAudioRouteEnabled(II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 793
    :cond_2
    :goto_1
    return-void

    .line 801
    .end local v0    # "currentAudioMode":I
    .end local v1    # "currentSupportedModes":I
    .end local v2    # "isPrevAudioModeValid":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isPrevAudioModeValid":Z
    goto :goto_0

    .line 808
    :cond_4
    sget v4, Lcom/android/incallui/VideoCallPresenter;->sPrevVideoAudioMode:I

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    .line 809
    sput v6, Lcom/android/incallui/VideoCallPresenter;->sPrevVideoAudioMode:I

    .line 810
    return-void

    .line 821
    .restart local v0    # "currentAudioMode":I
    .restart local v1    # "currentSupportedModes":I
    :cond_5
    if-nez v2, :cond_2

    .line 818
    if-eqz p1, :cond_2

    .line 821
    iget-object v4, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v4}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    .line 818
    if-eqz v4, :cond_2

    .line 822
    sput v0, Lcom/android/incallui/VideoCallPresenter;->sPrevVideoAudioMode:I

    .line 824
    const-string/jumbo v4, "Routing audio to speaker"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 825
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    goto :goto_1
.end method

.method private updateCallCache(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 649
    if-nez p1, :cond_0

    .line 650
    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    .line 651
    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    .line 652
    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    .line 653
    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    .line 648
    :goto_0
    return-void

    .line 655
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    .line 656
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    .line 657
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    .line 658
    iput-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    goto :goto_0
.end method

.method private static updateCameraSelection(Lcom/android/incallui/Call;)V
    .locals 7
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v3, 0x0

    .line 1356
    const-string/jumbo v4, "VideoCallPresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCameraSelection: call="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    const-string/jumbo v4, "VideoCallPresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCameraSelection: call="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/android/incallui/VideoCallPresenter;->toSimpleString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1360
    .local v0, "activeCall":Lcom/android/incallui/Call;
    const/4 v1, -0x1

    .line 1364
    .local v1, "cameraDir":I
    if-nez p0, :cond_1

    .line 1365
    const/4 v1, -0x1

    .line 1366
    const-string/jumbo v4, "VideoCallPresenter"

    const-string/jumbo v5, "updateCameraSelection: Call object is null. Setting camera direction to default value (CAMERA_DIRECTION_UNKNOWN)"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    :goto_0
    const-string/jumbo v4, "VideoCallPresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCameraSelection: Setting camera direction to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1415
    const-string/jumbo v6, " Call="

    .line 1414
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v2

    .line 1418
    .local v2, "cameraManager":Lcom/android/incallui/InCallCameraManager;
    if-nez v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallCameraManager;->setUseFrontFacingCamera(Z)V

    .line 1355
    return-void

    .line 1371
    .end local v2    # "cameraManager":Lcom/android/incallui/InCallCameraManager;
    :cond_1
    invoke-static {p0}, Lcom/android/incallui/CallUtils;->isAudioCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1372
    const/4 v1, -0x1

    .line 1373
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/incallui/Call$VideoSettings;->setCameraDir(I)V

    goto :goto_0

    .line 1379
    :cond_2
    invoke-static {v0}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p0}, Lcom/android/incallui/CallUtils;->isIncomingVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1380
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/Call$VideoSettings;->getCameraDir()I

    move-result v1

    goto :goto_0

    .line 1385
    :cond_3
    invoke-static {p0}, Lcom/android/incallui/CallUtils;->isOutgoingVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p0}, Lcom/android/incallui/VideoCallPresenter;->isCameraDirectionSet(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1392
    :cond_4
    invoke-static {p0}, Lcom/android/incallui/CallUtils;->isOutgoingVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1393
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/Call$VideoSettings;->getCameraDir()I

    move-result v1

    goto :goto_0

    .line 1386
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/VideoCallPresenter;->toCameraDirection(I)I

    move-result v1

    .line 1387
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/incallui/Call$VideoSettings;->setCameraDir(I)V

    goto/16 :goto_0

    .line 1398
    :cond_6
    invoke-static {p0}, Lcom/android/incallui/CallUtils;->isActiveVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {p0}, Lcom/android/incallui/VideoCallPresenter;->isCameraDirectionSet(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1405
    :cond_7
    invoke-static {p0}, Lcom/android/incallui/CallUtils;->isActiveVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1406
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/Call$VideoSettings;->getCameraDir()I

    move-result v1

    goto/16 :goto_0

    .line 1399
    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/VideoCallPresenter;->toCameraDirection(I)I

    move-result v1

    .line 1400
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/incallui/Call$VideoSettings;->setCameraDir(I)V

    goto/16 :goto_0

    .line 1411
    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/VideoCallPresenter;->toCameraDirection(I)I

    move-result v1

    goto/16 :goto_0
.end method

.method private updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V
    .locals 0
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "isPrimary"    # Z
    .param p3, "isConference"    # Z

    .prologue
    .line 1758
    if-eqz p2, :cond_0

    .line 1759
    iput-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 1760
    invoke-direct {p0, p1, p3}, Lcom/android/incallui/VideoCallPresenter;->updatePrimaryContactPhoto(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 1757
    :cond_0
    return-void
.end method

.method private updatePrimaryContactInfo(Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "newPrimaryCall"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v2, 0x1

    .line 1685
    if-nez p1, :cond_0

    .line 1686
    return-void

    .line 1688
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    .line 1689
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_2

    move v1, v2

    .line 1688
    :goto_0
    invoke-static {v3, p1, v1}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 1690
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/VideoCallPresenter;->updatePrimaryContactPhoto(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 1691
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    .line 1692
    .local v0, "cache":Lcom/android/incallui/ContactInfoCache;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_1

    .line 1693
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v0, v1, v3}, Lcom/android/incallui/ContactInfoCache;->removeInfo(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 1695
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/android/incallui/VideoCallPresenter;->maybeStartSearch(Lcom/android/incallui/Call;Z)V

    .line 1684
    return-void

    .line 1689
    .end local v0    # "cache":Lcom/android/incallui/ContactInfoCache;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updatePrimaryContactPhoto(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 4
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "isConference"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Update primary contact photo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1669
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 1670
    .local v0, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v0, :cond_0

    .line 1673
    const-string/jumbo v1, "updatePrimaryContactPhoto called but ui is null!"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1674
    return-void

    .line 1677
    :cond_0
    if-eqz p1, :cond_1

    .line 1678
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setDisplayPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 1667
    :goto_0
    return-void

    .line 1680
    :cond_1
    invoke-interface {v0, v3}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setDisplayPhoto(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateProximitySensor(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1652
    invoke-static {p1}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    .line 1653
    .local v0, "activeVideoCall":Z
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v1

    .line 1655
    .local v1, "proximitySensor":Lcom/android/incallui/ProximitySensor;
    if-eqz v1, :cond_0

    .line 1656
    invoke-virtual {v1, v0}, Lcom/android/incallui/ProximitySensor;->onVideoCallChanged(Z)V

    .line 1651
    :cond_0
    return-void
.end method

.method private updateVideoCall(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 688
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->checkForVideoCallChange(Lcom/android/incallui/Call;)V

    .line 689
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->checkForVideoStateChange(Lcom/android/incallui/Call;)V

    .line 690
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->checkForCallStateChange(Lcom/android/incallui/Call;)V

    .line 691
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->checkForOrientationAllowedChange(Lcom/android/incallui/Call;)V

    .line 687
    return-void
.end method

.method private updateVideoCallState(Lcom/android/incallui/Call;I)V
    .locals 3
    .param p1, "newPrimaryCall"    # Lcom/android/incallui/Call;
    .param p2, "newVideoState"    # I

    .prologue
    .line 1592
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 1593
    .local v0, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1594
    :cond_0
    const-string/jumbo v1, "Error VideoCallUi or call is null so returning"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1595
    return-void

    .line 1597
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    .line 1598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  - updateVideoCallState Videocall.state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  - VideoProfile.VideoState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1600
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->resetComponents()V

    .line 1602
    iget v1, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    packed-switch v1, :pswitch_data_0

    .line 1638
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->cleanupSurfaces()V

    .line 1641
    :goto_0
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->updatePrimaryContactInfo(Lcom/android/incallui/Call;)V

    .line 1591
    return-void

    .line 1605
    :pswitch_1
    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->DIALING:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    invoke-interface {v0, v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setVideoCallState(Lcom/android/incallui/VideoCallFragment$VideoCallState;)V

    goto :goto_0

    .line 1608
    :pswitch_2
    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->INCOMING_VT:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    invoke-interface {v0, v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setVideoCallState(Lcom/android/incallui/VideoCallFragment$VideoCallState;)V

    goto :goto_0

    .line 1611
    :pswitch_3
    packed-switch p2, :pswitch_data_1

    .line 1622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVideoCallState ACTIVE in bad VideoProfile.VideoState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1613
    :pswitch_4
    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->INCALL_TX:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    invoke-interface {v0, v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setVideoCallState(Lcom/android/incallui/VideoCallFragment$VideoCallState;)V

    goto :goto_0

    .line 1616
    :pswitch_5
    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->INCALL_RX:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    invoke-interface {v0, v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setVideoCallState(Lcom/android/incallui/VideoCallFragment$VideoCallState;)V

    goto :goto_0

    .line 1619
    :pswitch_6
    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->INCALL_VT:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    invoke-interface {v0, v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setVideoCallState(Lcom/android/incallui/VideoCallFragment$VideoCallState;)V

    goto :goto_0

    .line 1629
    :pswitch_7
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->cleanupSurfaces()V

    goto :goto_0

    .line 1635
    :pswitch_8
    sget-object v1, Lcom/android/incallui/VideoCallFragment$VideoCallState;->SECOND_INCOMING_VT:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    invoke-interface {v0, v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setVideoCallState(Lcom/android/incallui/VideoCallFragment$VideoCallState;)V

    goto :goto_0

    .line 1602
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 1611
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public cancelAutoFullScreen()V
    .locals 1

    .prologue
    .line 1343
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullScreenPending:Z

    if-nez v0, :cond_0

    .line 1344
    const-string/jumbo v0, "cancelAutoFullScreen : none pending."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1345
    return-void

    .line 1347
    :cond_0
    const-string/jumbo v0, "cancelAutoFullScreen : cancelling pending"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullScreenPending:Z

    .line 1342
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    .line 234
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 235
    const v1, 0x7f0800c9

    .line 234
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mMinimumVideoDimension:F

    .line 236
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    .line 237
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 238
    const v1, 0x7f09000f

    .line 237
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mIsAutoFullscreenEnabled:Z

    .line 239
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 240
    const v1, 0x7f0a0010

    .line 239
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullscreenTimeoutMillis:I

    .line 232
    return-void
.end method

.method public isZoomSupported()Z
    .locals 1

    .prologue
    .line 1784
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallCameraManager;->isUsingFrontFacingCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadProfilePhotoAsync()V
    .locals 3

    .prologue
    .line 1442
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 1443
    .local v1, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v1, :cond_0

    .line 1444
    return-void

    .line 1447
    :cond_0
    new-instance v0, Lcom/android/incallui/VideoCallPresenter$2;

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/VideoCallPresenter$2;-><init>(Lcom/android/incallui/VideoCallPresenter;Lcom/android/incallui/VideoCallPresenter$VideoCallUi;)V

    .line 1519
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1441
    return-void
.end method

.method protected maybeAutoEnterFullscreen(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1317
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mIsAutoFullscreenEnabled:Z

    if-nez v0, :cond_0

    .line 1318
    return-void

    .line 1321
    :cond_0
    if-eqz p1, :cond_2

    .line 1322
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1323
    invoke-static {p1}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1324
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v0

    .line 1321
    if-eqz v0, :cond_3

    .line 1326
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->cancelAutoFullScreen()V

    .line 1327
    return-void

    .line 1330
    :cond_3
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullScreenPending:Z

    if-eqz v0, :cond_4

    .line 1331
    const-string/jumbo v0, "maybeAutoEnterFullscreen : already pending."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1332
    return-void

    .line 1334
    :cond_4
    const-string/jumbo v0, "maybeAutoEnterFullscreen : scheduled"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullScreenPending:Z

    .line 1336
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullscreenRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mAutoFullscreenTimeoutMillis:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1316
    return-void
.end method

.method protected maybeExitFullscreen(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1296
    if-nez p1, :cond_0

    .line 1297
    return-void

    .line 1300
    :cond_0
    invoke-static {p1}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1302
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    .line 1295
    :cond_2
    return-void

    .line 1301
    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    .line 1300
    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method public onCallDataUsageChange(J)V
    .locals 3
    .param p1, "dataUsage"    # J

    .prologue
    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCallDataUsageChange dataUsage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1136
    return-void
.end method

.method public onCallSessionEvent(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1105
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "onCallSessionEvent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    packed-switch p1, :pswitch_data_0

    .line 1121
    :pswitch_0
    const-string/jumbo v1, "unknown event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1125
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1127
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->onCallSessionEventExt(I)V

    .line 1103
    return-void

    .line 1109
    :pswitch_1
    const-string/jumbo v1, "rx_pause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1112
    :pswitch_2
    const-string/jumbo v1, "rx_resume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1115
    :pswitch_3
    const-string/jumbo v1, "camera_failure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1118
    :pswitch_4
    const-string/jumbo v1, "camera_ready"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCameraDimensionsChange(Lcom/android/incallui/Call;IIF)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "maxZoom"    # F

    .prologue
    .line 1042
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCameraDimensionsChange call="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1043
    const-string/jumbo v2, " maxZoom="

    .line 1042
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 1045
    .local v0, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v0, :cond_0

    .line 1046
    const-string/jumbo v1, "onCameraDimensionsChange ui is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1047
    return-void

    .line 1050
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v1}, Lcom/android/incallui/Call;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1051
    const-string/jumbo v1, "Call is not primary call"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1052
    return-void

    .line 1055
    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    .line 1056
    invoke-direct {p0, p2, p3}, Lcom/android/incallui/VideoCallPresenter;->changePreviewDimensions(II)V

    .line 1057
    invoke-interface {v0, p4, p0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setZoomParamReady(FLcom/android/incallui/SomcVideoShareZoom$OnZoomChangedListener;)V

    .line 1061
    invoke-interface {v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->isPreviewVideoSurfaceCreated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1062
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    .line 1063
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-interface {v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getPreviewVideoSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->setPreviewSurface(Landroid/view/Surface;)V

    .line 1041
    :cond_2
    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "details"    # Landroid/telecom/Call$Details;

    .prologue
    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " onDetailsChanged call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mPrimaryCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 672
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    .line 671
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 673
    if-nez p1, :cond_0

    .line 674
    return-void

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 678
    const-string/jumbo v0, " onDetailsChanged: Details not for current active call so returning. "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 679
    return-void

    .line 682
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->updateVideoCall(Lcom/android/incallui/Call;)V

    .line 684
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->updateCallCache(Lcom/android/incallui/Call;)V

    .line 670
    return-void
.end method

.method public onDeviceOrientationChanged(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 1150
    iput p1, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    .line 1152
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 1153
    .local v1, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v1, :cond_0

    .line 1154
    const-string/jumbo v2, "onDeviceOrientationChanged: VideoCallUi is null"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1155
    return-void

    .line 1158
    :cond_0
    invoke-interface {v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getPreviewSize()Landroid/graphics/Point;

    move-result-object v0

    .line 1159
    .local v0, "previewDimensions":Landroid/graphics/Point;
    if-nez v0, :cond_1

    .line 1160
    return-void

    .line 1162
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDeviceOrientationChanged: orientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1164
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/VideoCallPresenter;->changePreviewDimensions(II)V

    .line 1166
    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    invoke-interface {v1, v2}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setPreviewRotation(I)V

    .line 1149
    return-void
.end method

.method public onDowngradeToAudio(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v2, 0x0

    .line 1213
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isRcsVideoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1214
    new-instance v0, Landroid/telecom/VideoProfile;

    invoke-direct {v0, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 1215
    .local v0, "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 1218
    .end local v0    # "videoProfile":Landroid/telecom/VideoProfile;
    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 1220
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->exitVideoMode()V

    .line 1212
    return-void
.end method

.method public onFullscreenModeChanged(Z)V
    .locals 1
    .param p1, "isFullscreenMode"    # Z

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->cancelAutoFullScreen()V

    .line 532
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 533
    .local v0, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v0, :cond_0

    .line 534
    return-void

    .line 536
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setFullScreenMode(Z)V

    .line 529
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 449
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/VideoCallPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 447
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 5
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStateChange oldState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " newState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 462
    const-string/jumbo v4, " isVideoMode="

    .line 461
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 462
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v4

    .line 461
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_1

    .line 465
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/incallui/VideoCallPresenter;->updateAudioMode(Z)V

    .line 467
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 468
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->exitVideoMode()V

    .line 471
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->cleanupSurfaces()V

    .line 475
    :cond_1
    const/4 v1, 0x0

    .line 481
    .local v1, "primary":Lcom/android/incallui/Call;
    const/4 v0, 0x0

    .line 483
    .local v0, "currentCall":Lcom/android/incallui/Call;
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_4

    .line 484
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .local v1, "primary":Lcom/android/incallui/Call;
    move-object v0, v1

    .line 493
    .end local v0    # "currentCall":Lcom/android/incallui/Call;
    .end local v1    # "primary":Lcom/android/incallui/Call;
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v2, 0x0

    .line 494
    .local v2, "primaryChanged":Z
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStateChange primaryChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStateChange primary= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStateChange mPrimaryCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v3, :cond_8

    if-nez v2, :cond_8

    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 506
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/incallui/VideoCallPresenter;->updateProximitySensor(Lcom/android/incallui/Call;)V

    .line 508
    if-eqz v2, :cond_9

    .line 509
    invoke-direct {p0, v1}, Lcom/android/incallui/VideoCallPresenter;->onPrimaryCallChanged(Lcom/android/incallui/Call;)V

    .line 513
    :cond_3
    :goto_3
    invoke-direct {p0, v1}, Lcom/android/incallui/VideoCallPresenter;->updateCallCache(Lcom/android/incallui/Call;)V

    .line 518
    invoke-virtual {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->maybeExitFullscreen(Lcom/android/incallui/Call;)V

    .line 520
    invoke-virtual {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->maybeAutoEnterFullscreen(Lcom/android/incallui/Call;)V

    .line 460
    return-void

    .line 485
    .end local v2    # "primaryChanged":Z
    .restart local v0    # "currentCall":Lcom/android/incallui/Call;
    .local v1, "primary":Lcom/android/incallui/Call;
    :cond_4
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_5

    .line 486
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .local v1, "primary":Lcom/android/incallui/Call;
    move-object v0, v1

    .local v0, "currentCall":Lcom/android/incallui/Call;
    goto :goto_0

    .line 487
    .local v0, "currentCall":Lcom/android/incallui/Call;
    .local v1, "primary":Lcom/android/incallui/Call;
    :cond_5
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_6

    .line 488
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .local v1, "primary":Lcom/android/incallui/Call;
    move-object v0, v1

    .local v0, "currentCall":Lcom/android/incallui/Call;
    goto/16 :goto_0

    .line 489
    .local v0, "currentCall":Lcom/android/incallui/Call;
    .local v1, "primary":Lcom/android/incallui/Call;
    :cond_6
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_2

    .line 490
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    .local v1, "primary":Lcom/android/incallui/Call;
    move-object v0, v1

    .local v0, "currentCall":Lcom/android/incallui/Call;
    goto/16 :goto_0

    .line 493
    .end local v0    # "currentCall":Lcom/android/incallui/Call;
    .end local v1    # "primary":Lcom/android/incallui/Call;
    :cond_7
    const/4 v2, 0x1

    .restart local v2    # "primaryChanged":Z
    goto/16 :goto_1

    .line 503
    :cond_8
    invoke-direct {p0, v1}, Lcom/android/incallui/VideoCallPresenter;->changeToVoiceCallIfNeeded(Lcom/android/incallui/Call;)V

    goto :goto_2

    .line 510
    :cond_9
    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v3, :cond_3

    .line 511
    invoke-direct {p0, v1}, Lcom/android/incallui/VideoCallPresenter;->updateVideoCall(Lcom/android/incallui/Call;)V

    goto :goto_3
.end method

.method public onSurfaceClick(I)V
    .locals 3
    .param p1, "surfaceId"    # I

    .prologue
    .line 403
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/CallUtils;->isActiveVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->toggleFullscreenMode()Z

    move-result v0

    .line 409
    .local v0, "isFullscreen":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toggleFullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    return-void

    .line 405
    .end local v0    # "isFullscreen":Z
    :cond_0
    return-void
.end method

.method public onSurfaceCreated(I)V
    .locals 4
    .param p1, "surface"    # I

    .prologue
    const/4 v3, 0x2

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSurfaceCreated surface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mVideoCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSurfaceCreated PreviewSurfaceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSurfaceCreated presenter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 311
    .local v0, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-nez v1, :cond_1

    .line 312
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSurfaceCreated: Error bad state VideoCallUi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mVideoCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 313
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    .line 312
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    return-void

    .line 319
    :cond_1
    if-ne p1, v3, :cond_4

    .line 320
    iget v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    if-ne v1, v3, :cond_3

    .line 321
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    .line 322
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-interface {v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getPreviewVideoSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->setPreviewSurface(Landroid/view/Surface;)V

    .line 305
    :cond_2
    :goto_0
    return-void

    .line 324
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->maybeEnableCamera()V

    goto :goto_0

    .line 326
    :cond_4
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 327
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-interface {v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getDisplayVideoSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->setDisplaySurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public onSurfaceDestroyed(I)V
    .locals 3
    .param p1, "surface"    # I

    .prologue
    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSurfaceDestroyed: mSurfaceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-nez v1, :cond_0

    .line 376
    return-void

    .line 380
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isChangingConfigurations()Z

    move-result v0

    .line 381
    .local v0, "isChangingConfigurations":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSurfaceDestroyed: isChangingConfigurations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 384
    if-nez v0, :cond_2

    .line 385
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    .line 373
    :cond_1
    :goto_0
    return-void

    .line 387
    :cond_2
    const-string/jumbo v1, "onSurfaceDestroyed: Activity is being destroyed due to configuration changes. Not closing the camera."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSurfaceReleased(I)V
    .locals 3
    .param p1, "surface"    # I

    .prologue
    const/4 v2, 0x0

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSurfaceReleased: mSurfaceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSurfaceReleased: VideoCall is null. mSurfaceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    return-void

    .line 357
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v0, v2}, Landroid/telecom/InCallService$VideoCall;->setDisplaySurface(Landroid/view/Surface;)V

    .line 349
    :cond_1
    :goto_0
    return-void

    .line 359
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v0, v2}, Landroid/telecom/InCallService$VideoCall;->setPreviewSurface(Landroid/view/Surface;)V

    .line 361
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    goto :goto_0
.end method

.method public onThermalCritical()V
    .locals 2

    .prologue
    .line 1794
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1795
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-direct {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->changeToVoiceCallIfNeeded(Lcom/android/incallui/Call;)V

    .line 1793
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/incallui/Ui;

    .prologue
    .line 249
    check-cast p1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .end local p1    # "ui":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->onUiReady(Lcom/android/incallui/VideoCallPresenter$VideoCallUi;)V

    return-void
.end method

.method public onUiReady(Lcom/android/incallui/VideoCallPresenter$VideoCallUi;)V
    .locals 2
    .param p1, "ui"    # Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .prologue
    const/4 v1, 0x0

    .line 250
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 251
    const-string/jumbo v0, "onUiReady:"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 255
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 256
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 257
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V

    .line 259
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 260
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    .line 263
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->addSurfaceChangeListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;)V

    .line 264
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->addVideoEventListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;)V

    .line 265
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->addSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V

    .line 266
    invoke-static {}, Lcom/android/incallui/InCallUiStateNotifier;->getInstance()Lcom/android/incallui/InCallUiStateNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallUiStateNotifier;->addListener(Lcom/android/incallui/InCallUiStateNotifierListener;)V

    .line 267
    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    .line 268
    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    .line 270
    invoke-static {}, Lcom/android/incallui/SomcThermalCheck;->getInstance()Lcom/android/incallui/SomcThermalCheck;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/SomcThermalCheck;->addThermalCheckListener(Lcom/android/incallui/SomcThermalCheck$ThermalCheckListener;)V

    .line 249
    return-void
.end method

.method public onUiShowing(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .prologue
    const/4 v1, 0x0

    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUiShowing, showing = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " mPrimaryCall = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 963
    const-string/jumbo v2, " mPreviewSurfaceState = "

    .line 962
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 963
    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    .line 962
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 965
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/CallUtils;->isActiveVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 970
    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mIsInBackground:Z

    .line 971
    if-eqz p1, :cond_3

    .line 972
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->maybeEnableCamera()V

    .line 961
    :cond_0
    :goto_1
    return-void

    .line 966
    :cond_1
    const-string/jumbo v0, "onUiShowing, received for non-active video call"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 967
    return-void

    .line 970
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 973
    :cond_3
    iget v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    goto :goto_1
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/incallui/Ui;

    .prologue
    .line 279
    check-cast p1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .end local p1    # "ui":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->onUiUnready(Lcom/android/incallui/VideoCallPresenter$VideoCallUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/VideoCallPresenter$VideoCallUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .prologue
    .line 280
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 281
    const-string/jumbo v0, "onUiUnready:"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 284
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 285
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 286
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V

    .line 287
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    .line 289
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->removeSurfaceChangeListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;)V

    .line 290
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->removeVideoEventListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;)V

    .line 291
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->removeSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V

    .line 292
    invoke-static {}, Lcom/android/incallui/InCallUiStateNotifier;->getInstance()Lcom/android/incallui/InCallUiStateNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallUiStateNotifier;->removeListener(Lcom/android/incallui/InCallUiStateNotifierListener;)V

    .line 293
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->cancelAutoFullScreen()V

    .line 295
    invoke-static {}, Lcom/android/incallui/SomcThermalCheck;->getInstance()Lcom/android/incallui/SomcThermalCheck;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/SomcThermalCheck;->removeThermalCheckListener(Lcom/android/incallui/SomcThermalCheck$ThermalCheckListener;)V

    .line 297
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->clear()V

    .line 279
    return-void
.end method

.method public onUpdatePeerDimensions(Lcom/android/incallui/Call;II)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1003
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdatePeerDimensions: width= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " height= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1004
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 1005
    .local v0, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v0, :cond_0

    .line 1006
    const-string/jumbo v1, "VideoCallUi is null. Bail out"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1007
    return-void

    .line 1009
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v1}, Lcom/android/incallui/Call;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1010
    const-string/jumbo v1, "Current call is not equal to primary call. Bail out"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1011
    return-void

    .line 1015
    :cond_1
    if-lez p2, :cond_2

    if-lez p3, :cond_2

    .line 1016
    invoke-direct {p0, p2, p3}, Lcom/android/incallui/VideoCallPresenter;->setDisplayVideoSize(II)V

    .line 1002
    :cond_2
    return-void
.end method

.method public onUpgradeToVideoFail(ILcom/android/incallui/Call;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUpgradeToVideoFail call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1198
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0, p2}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1202
    :goto_0
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isRcsVideoEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1203
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 1204
    :cond_0
    return-void

    .line 1199
    :cond_1
    const-string/jumbo v0, "UpgradeToVideoFail received for non-primary call"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1207
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 1208
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f0b028d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1207
    invoke-interface {v0, v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->showSwitchFailureDialog(Ljava/lang/CharSequence;)V

    .line 1196
    return-void
.end method

.method public onUpgradeToVideoRequest(Lcom/android/incallui/Call;I)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoState"    # I

    .prologue
    .line 1171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUpgradeToVideoRequest call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " new video state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1172
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0, p1}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    :goto_0
    if-nez p1, :cond_1

    .line 1177
    return-void

    .line 1173
    :cond_0
    const-string/jumbo v0, "UpgradeToVideoRequest received for non-primary call"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1180
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/incallui/Call;->setSessionModificationTo(I)V

    .line 1170
    return-void
.end method

.method public onUpgradeToVideoSuccess(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUpgradeToVideoSuccess call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1186
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0, p1}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1190
    :goto_0
    if-nez p1, :cond_1

    .line 1191
    return-void

    .line 1187
    :cond_0
    const-string/jumbo v0, "UpgradeToVideoSuccess received for non-primary call"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1184
    :cond_1
    return-void
.end method

.method public onVideoQualityChanged(Lcom/android/incallui/Call;I)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoQuality"    # I

    .prologue
    .line 1027
    return-void
.end method

.method public onVideoViewClick()V
    .locals 3

    .prologue
    .line 429
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/CallUtils;->isActiveVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->toggleFullscreenMode()Z

    move-result v0

    .line 435
    .local v0, "isFullscreen":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVideoViewClick: toggleFullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    return-void

    .line 431
    .end local v0    # "isFullscreen":Z
    :cond_0
    return-void
.end method

.method public onWidgetAreaUsedChanged(ZZLandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "fgAreaUsed"    # Z
    .param p2, "bgAreaUsed"    # Z
    .param p3, "viewToAnimate"    # Landroid/view/ViewGroup;

    .prologue
    .line 1789
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 2
    .param p1, "zoomValue"    # I

    .prologue
    .line 1775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onZoomValueChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1776
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eqz v0, :cond_0

    .line 1777
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->setZoom(F)V

    .line 1774
    :goto_0
    return-void

    .line 1779
    :cond_0
    const-string/jumbo v0, "Zoom not supported"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
