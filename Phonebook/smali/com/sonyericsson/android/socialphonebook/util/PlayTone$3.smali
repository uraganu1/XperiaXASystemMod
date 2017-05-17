.class Lcom/sonyericsson/android/socialphonebook/util/PlayTone$3;
.super Ljava/lang/Thread;
.source "PlayTone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/util/PlayTone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$3;->this$0:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$3;->this$0:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->-get2(Lcom/sonyericsson/android/socialphonebook/util/PlayTone;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$3;->this$0:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->-get1(Lcom/sonyericsson/android/socialphonebook/util/PlayTone;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$3;->this$0:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->-get1(Lcom/sonyericsson/android/socialphonebook/util/PlayTone;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 141
    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
