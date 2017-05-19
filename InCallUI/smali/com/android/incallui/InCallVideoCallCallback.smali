.class public Lcom/android/incallui/InCallVideoCallCallback;
.super Landroid/telecom/InCallService$VideoCall$Callback;
.source "InCallVideoCallCallback.java"


# instance fields
.field private mCall:Lcom/android/incallui/Call;


# direct methods
.method public constructor <init>(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/telecom/InCallService$VideoCall$Callback;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    .line 46
    return-void
.end method


# virtual methods
.method public onCallDataUsageChanged(J)V
    .locals 3
    .param p1, "dataUsage"    # J

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCallDataUsageChanged: dataUsage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->callDataUsageChanged(J)V

    .line 219
    return-void
.end method

.method public onCallSessionEvent(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    const/4 v1, 0x1

    .line 160
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPeerVideoState()Lcom/android/incallui/Call$PeerVideoState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call$PeerVideoState;->setPeerVideoAvailable(Z)V

    .line 167
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->callSessionEvent(I)V

    .line 159
    return-void

    .line 163
    :cond_1
    if-ne p1, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPeerVideoState()Lcom/android/incallui/Call$PeerVideoState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call$PeerVideoState;->setPeerVideoAvailable(Z)V

    goto :goto_0
.end method

.method public onCameraCapabilitiesChanged(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 5
    .param p1, "cameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;

    .prologue
    .line 232
    if-eqz p1, :cond_0

    .line 233
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {p1}, Landroid/telecom/VideoProfile$CameraCapabilities;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/telecom/VideoProfile$CameraCapabilities;->getHeight()I

    move-result v3

    .line 235
    invoke-virtual {p1}, Landroid/telecom/VideoProfile$CameraCapabilities;->getMaxZoom()F

    move-result v4

    .line 233
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->cameraDimensionsChanged(Lcom/android/incallui/Call;IIF)V

    .line 231
    :cond_0
    return-void
.end method

.method public onPeerDimensionsChanged(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPeerVideoState()Lcom/android/incallui/Call$PeerVideoState;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/Call$PeerVideoState;->setPeerDimensions(II)V

    .line 181
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->peerDimensionsChanged(Lcom/android/incallui/Call;II)V

    .line 177
    return-void
.end method

.method public onPeerDimensionsWithAngleChanged(III)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallback;->onPeerDimensionsChanged(II)V

    .line 196
    return-void
.end method

.method public onSessionModifyRequestReceived(Landroid/telecom/VideoProfile;)V
    .locals 7
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " onSessionModifyRequestReceived videoProfile="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v5, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v5

    .line 60
    const/4 v6, 0x1

    .line 59
    if-ne v5, v6, :cond_0

    .line 61
    new-instance v2, Landroid/telecom/VideoProfile;

    iget-object v5, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v5

    invoke-direct {v2, v5}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 62
    .local v2, "prevVideoProfile":Landroid/telecom/VideoProfile;
    iget-object v5, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 63
    return-void

    .line 66
    .end local v2    # "prevVideoProfile":Landroid/telecom/VideoProfile;
    :cond_0
    iget-object v5, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v5

    invoke-static {v5}, Lcom/android/incallui/CallUtils;->getUnPausedVideoState(I)I

    move-result v3

    .line 67
    .local v3, "previousVideoState":I
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v5

    invoke-static {v5}, Lcom/android/incallui/CallUtils;->getUnPausedVideoState(I)I

    move-result v1

    .line 69
    .local v1, "newVideoState":I
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->wakeUpScreen()V

    .line 71
    invoke-static {v3}, Lcom/android/incallui/CallUtils;->isVideoCall(I)Z

    move-result v4

    .line 72
    .local v4, "wasVideoCall":Z
    invoke-static {v1}, Lcom/android/incallui/CallUtils;->isVideoCall(I)Z

    move-result v0

    .line 74
    .local v0, "isVideoCall":Z
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmPlaying()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmRecording()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    .line 75
    new-instance v2, Landroid/telecom/VideoProfile;

    iget-object v5, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v5

    invoke-direct {v2, v5}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 76
    .restart local v2    # "prevVideoProfile":Landroid/telecom/VideoProfile;
    iget-object v5, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 77
    iget-object v5, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 78
    return-void

    .line 82
    .end local v2    # "prevVideoProfile":Landroid/telecom/VideoProfile;
    :cond_2
    if-eqz v4, :cond_3

    if-eqz v0, :cond_5

    .line 84
    :cond_3
    if-eq v3, v1, :cond_4

    .line 85
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v5, v6, v1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->upgradeToVideoRequest(Lcom/android/incallui/Call;I)V

    .line 56
    :cond_4
    :goto_0
    return-void

    .line 83
    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v5, v6}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->downgradeToAudio(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public onSessionModifyResponseReceived(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 8
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSessionModifyResponseReceived status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " requestedProfile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 104
    const-string/jumbo v4, " responseProfile="

    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    const/4 v3, 0x1

    if-eq p1, v3, :cond_5

    .line 106
    invoke-static {}, Lcom/android/incallui/SomcThermalCheck;->getInstance()Lcom/android/incallui/SomcThermalCheck;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SomcThermalCheck;->isThermalCritical()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v3

    if-nez v3, :cond_1

    .line 108
    iget-object v3, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v3

    .line 106
    if-eqz v3, :cond_1

    .line 109
    iget-object v3, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/android/incallui/Call;->setState(I)V

    .line 110
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    .line 111
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 114
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 115
    const v3, 0x7f0b02dc

    invoke-static {v0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 118
    :cond_0
    return-void

    .line 122
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    if-ne p1, v6, :cond_3

    .line 123
    iget-object v3, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3, v6}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 134
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3, p1, v4}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->upgradeToVideoFail(ILcom/android/incallui/Call;)V

    .line 150
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3, v5}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 102
    return-void

    .line 126
    :cond_3
    if-ne p1, v7, :cond_4

    .line 127
    iget-object v3, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3, v7}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_0

    .line 130
    :cond_4
    iget-object v3, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    .line 131
    const/4 v4, 0x2

    .line 130
    invoke-virtual {v3, v4}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_0

    .line 135
    :cond_5
    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    .line 136
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v3

    .line 137
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v4

    .line 136
    if-ne v3, v4, :cond_6

    const/4 v2, 0x1

    .line 138
    .local v2, "modifySucceeded":Z
    :goto_2
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/CallUtils;->isVideoCall(I)Z

    move-result v1

    .line 139
    .local v1, "isVideoCall":Z
    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    .line 140
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3, v4}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->upgradeToVideoSuccess(Lcom/android/incallui/Call;)V

    goto :goto_1

    .line 136
    .end local v1    # "isVideoCall":Z
    .end local v2    # "modifySucceeded":Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "modifySucceeded":Z
    goto :goto_2

    .line 141
    .restart local v1    # "isVideoCall":Z
    :cond_7
    if-nez v2, :cond_8

    if-eqz v1, :cond_8

    .line 142
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3, p1, v4}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->upgradeToVideoFail(ILcom/android/incallui/Call;)V

    goto :goto_1

    .line 143
    :cond_8
    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 144
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3, v4}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->downgradeToAudio(Lcom/android/incallui/Call;)V

    goto :goto_1

    .line 147
    .end local v1    # "isVideoCall":Z
    .end local v2    # "modifySucceeded":Z
    :cond_9
    const-string/jumbo v3, "onSessionModifyResponseReceived request and response Profiles are null"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onVideoQualityChanged(I)V
    .locals 2
    .param p1, "videoQuality"    # I

    .prologue
    .line 209
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->videoQualityChanged(Lcom/android/incallui/Call;I)V

    .line 208
    return-void
.end method
