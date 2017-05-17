.class Lcom/sonyericsson/android/socialphonebook/util/PlayTone$4;
.super Ljava/lang/Thread;
.source "PlayTone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->doPlayTone(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

.field final synthetic val$tone:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/util/PlayTone;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/util/PlayTone;
    .param p2, "val$tone"    # I

    .prologue
    .line 180
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$4;->this$0:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$4;->val$tone:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$4;->this$0:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->-get2(Lcom/sonyericsson/android/socialphonebook/util/PlayTone;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$4;->this$0:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->-get1(Lcom/sonyericsson/android/socialphonebook/util/PlayTone;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$4;->this$0:Lcom/sonyericsson/android/socialphonebook/util/PlayTone;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PlayTone;->-get1(Lcom/sonyericsson/android/socialphonebook/util/PlayTone;)Landroid/media/ToneGenerator;

    move-result-object v0

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/util/PlayTone$4;->val$tone:I

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/media/ToneGenerator;->startTone(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 181
    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
