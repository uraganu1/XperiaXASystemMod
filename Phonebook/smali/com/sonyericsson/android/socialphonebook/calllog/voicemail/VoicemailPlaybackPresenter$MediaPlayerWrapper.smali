.class final Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerWrapper;
.super Landroid/media/MediaPlayer;
.source "VoicemailPlaybackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPlayerWrapper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1023
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerWrapper;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public isPlaying()Z
    .locals 3

    .prologue
    .line 1027
    :try_start_0
    invoke-super {p0}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1028
    :catch_0
    move-exception v0

    .line 1030
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "VoicemailPlaybackPresenter"

    const-string/jumbo v2, "IllegalStateException was emitted"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    const/4 v1, 0x0

    return v1
.end method
