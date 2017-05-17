.class public Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;
.super Ljava/lang/Object;
.source "LevelTrackingMediaRecorder.java"


# instance fields
.field private final mLevelSource:Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;

.field private mOutputFD:Landroid/os/ParcelFileDescriptor;

.field private mOutputUri:Landroid/net/Uri;

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mRefreshLevelThread:Ljava/lang/Thread;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;)Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mLevelSource:Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;)Landroid/media/MediaRecorder;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;)I
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->getAmplitude()I

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mLevelSource:Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;

    .line 71
    return-void
.end method

.method private getAmplitude()I
    .locals 3

    .prologue
    .line 163
    const-class v2, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;

    monitor-enter v2

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v1

    div-int/lit16 v0, v1, 0x147

    .line 166
    .local v0, "maxAmplitude":I
    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 168
    .end local v0    # "maxAmplitude":I
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 163
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private startTrackingSoundLevel()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->stopTrackingSoundLevel()V

    .line 175
    new-instance v0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder$1;-><init>(Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRefreshLevelThread:Ljava/lang/Thread;

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRefreshLevelThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 173
    return-void
.end method

.method private stopTrackingSoundLevel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRefreshLevelThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRefreshLevelThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRefreshLevelThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 201
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRefreshLevelThread:Ljava/lang/Thread;

    .line 198
    :cond_0
    return-void
.end method


# virtual methods
.method public getLevelSource()Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mLevelSource:Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;

    return-object v0
.end method

.method public startRecording(Landroid/media/MediaRecorder$OnErrorListener;Landroid/media/MediaRecorder$OnInfoListener;I)Z
    .locals 8
    .param p1, "errorListener"    # Landroid/media/MediaRecorder$OnErrorListener;
    .param p2, "infoListener"    # Landroid/media/MediaRecorder$OnInfoListener;
    .param p3, "maxSize"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 86
    const-class v2, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;

    monitor-enter v2

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_1

    .line 88
    invoke-static {}, Lcom/sonyericsson/conversations/util/MediaUtil;->getAudioUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mOutputUri:Landroid/net/Uri;

    .line 89
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    int-to-float v1, p3

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v3

    float-to-int p3, v1

    .line 97
    :try_start_1
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 98
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mOutputUri:Landroid/net/Uri;

    const-string/jumbo v4, "w"

    .line 97
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mOutputFD:Landroid/os/ParcelFileDescriptor;

    .line 99
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mOutputFD:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v2

    .line 100
    return v6

    .line 102
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 103
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 104
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 105
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mOutputFD:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRecorder:Landroid/media/MediaRecorder;

    int-to-long v4, p3

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 107
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 109
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    .line 110
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 111
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->startTrackingSoundLevel()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    .line 112
    return v7

    .line 113
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->stopRecording()Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    .line 117
    return v6

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    monitor-exit v2

    .line 120
    return v6

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public stopRecording()Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 130
    const-class v4, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;

    monitor-enter v4

    .line 131
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 133
    :try_start_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    :try_start_2
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 143
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 148
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mOutputFD:Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    .line 150
    :try_start_3
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mOutputFD:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    :goto_1
    const/4 v3, 0x0

    :try_start_4
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mOutputFD:Landroid/os/ParcelFileDescriptor;

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mOutputUri:Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .local v2, "result":Landroid/net/Uri;
    monitor-exit v4

    .line 158
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->stopTrackingSoundLevel()V

    .line 159
    return-object v2

    .line 134
    .end local v2    # "result":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 137
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_5
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mOutputUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 138
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mOutputUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/sonyericsson/conversations/util/MediaUtil;->deleteFileUri(Landroid/net/Uri;)V

    .line 139
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mOutputUri:Landroid/net/Uri;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 142
    :cond_1
    :try_start_6
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 143
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRecorder:Landroid/media/MediaRecorder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 130
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 141
    :catchall_1
    move-exception v3

    .line 142
    :try_start_7
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->release()V

    .line 143
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 141
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_2
    monitor-exit v4

    .line 146
    return-object v5

    .line 151
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_1
.end method
