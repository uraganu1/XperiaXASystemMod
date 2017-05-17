.class Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder$1;
.super Ljava/lang/Thread;
.source "LevelTrackingMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->startTrackingSoundLevel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder$1;->this$0:Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 180
    :goto_0
    :try_start_0
    const-class v2, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder$1;->this$0:Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->-get1(Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;)Landroid/media/MediaRecorder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder$1;->this$0:Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->-get0(Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;)Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder$1;->this$0:Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->-wrap0(Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;->setSpeechLevel(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    .line 188
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 177
    return-void

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_3
    monitor-exit v2

    .line 185
    return-void

    .line 180
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
.end method
