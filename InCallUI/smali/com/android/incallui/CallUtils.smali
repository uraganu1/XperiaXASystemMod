.class public Lcom/android/incallui/CallUtils;
.super Ljava/lang/Object;
.source "CallUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canVideoPause(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-static {p0}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static getPausedVideoState(I)I
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    .line 92
    or-int/lit8 v0, p0, 0x4

    return v0
.end method

.method public static getUnPausedVideoState(I)I
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    .line 88
    and-int/lit8 v0, p0, -0x5

    return v0
.end method

.method public static isActiveVideoCall(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-static {p0}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isAudioCall(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 68
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIncomingVideoCall(Lcom/android/incallui/Call;)Z
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    invoke-static {p0}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 48
    return v2

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 51
    .local v0, "state":I
    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public static isOutgoingVideoCall(Lcom/android/incallui/Call;)Z
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-static {p0}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 60
    return v2

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 63
    .local v0, "state":I
    invoke-static {v0}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0xd

    if-ne v0, v3, :cond_2

    :cond_1
    :goto_0
    return v1

    .line 64
    :cond_2
    const/16 v3, 0xc

    if-eq v0, v3, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method public static isVideoCall(I)Z
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    .line 42
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v0

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isVideoCall(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 38
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/CallUtils;->isVideoCall(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeVideoPauseProfile(Lcom/android/incallui/Call;)Landroid/telecom/VideoProfile;
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 77
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 79
    new-instance v0, Landroid/telecom/VideoProfile;

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/CallUtils;->getPausedVideoState(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/telecom/VideoProfile;-><init>(I)V

    return-object v0

    .line 78
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static makeVideoUnPauseProfile(Lcom/android/incallui/Call;)Landroid/telecom/VideoProfile;
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 83
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v0, Landroid/telecom/VideoProfile;

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/CallUtils;->getUnPausedVideoState(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/telecom/VideoProfile;-><init>(I)V

    return-object v0
.end method
