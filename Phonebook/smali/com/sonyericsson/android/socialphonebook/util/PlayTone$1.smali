.class Lcom/sonyericsson/android/socialphonebook/util/PlayTone$1;
.super Ljava/lang/Thread;
.source "PlayTone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->resume()V
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
    .line 88
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$1;->this$0:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 90
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$1;->this$0:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->-get2(Lcom/sonyericsson/android/socialphonebook/util/PlayTone;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$1;->this$0:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->-get1(Lcom/sonyericsson/android/socialphonebook/util/PlayTone;)Landroid/media/ToneGenerator;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$1;->this$0:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->-get0(Lcom/sonyericsson/android/socialphonebook/util/PlayTone;)Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    monitor-exit v2

    .line 92
    return-void

    .line 91
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$1;->this$0:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->-get0(Lcom/sonyericsson/android/socialphonebook/util/PlayTone;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 95
    :try_start_2
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$1;->this$0:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

    new-instance v3, Landroid/media/ToneGenerator;

    const/16 v4, 0x8

    .line 96
    const/16 v5, 0x32

    .line 95
    invoke-direct {v3, v4, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    invoke-static {v1, v3}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->-set0(Lcom/sonyericsson/android/socialphonebook/util/PlayTone;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v2

    .line 89
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    const-string/jumbo v1, "PlayTone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception caught when creating local tone generator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$1;->this$0:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->-set0(Lcom/sonyericsson/android/socialphonebook/util/PlayTone;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 90
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
