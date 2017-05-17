.class public Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;
.super Ljava/lang/Object;
.source "InlineAudioPlayer.java"


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private releaseMediaPlayer()V
    .locals 0

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->stopPlayback()V

    .line 89
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    return v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    return v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public playAudio()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 61
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 59
    return-void
.end method

.method public setupMediaPlayer(Landroid/net/Uri;Landroid/media/MediaPlayer$OnCompletionListener;Landroid/media/MediaPlayer$OnErrorListener;Landroid/media/MediaPlayer$OnPreparedListener;)Z
    .locals 4
    .param p1, "dataSourceUri"    # Landroid/net/Uri;
    .param p2, "onCompletionListener"    # Landroid/media/MediaPlayer$OnCompletionListener;
    .param p3, "onErrorListener"    # Landroid/media/MediaPlayer$OnErrorListener;
    .param p4, "onPreparedListener"    # Landroid/media/MediaPlayer$OnPreparedListener;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 37
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 38
    return v3

    .line 40
    :cond_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 43
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 44
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 45
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 46
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 47
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return v3

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "exception":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->releaseMediaPlayer()V

    .line 51
    const/4 v1, 0x0

    return v1
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 98
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 102
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 96
    return-void
.end method
