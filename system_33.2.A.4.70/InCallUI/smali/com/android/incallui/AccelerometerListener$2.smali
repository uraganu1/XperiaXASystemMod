.class Lcom/android/incallui/AccelerometerListener$2;
.super Landroid/os/Handler;
.source "AccelerometerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/AccelerometerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AccelerometerListener;


# direct methods
.method constructor <init>(Lcom/android/incallui/AccelerometerListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/AccelerometerListener;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/incallui/AccelerometerListener$2;->this$0:Lcom/android/incallui/AccelerometerListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 150
    :pswitch_0
    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener$2;->this$0:Lcom/android/incallui/AccelerometerListener;

    iget-object v1, p0, Lcom/android/incallui/AccelerometerListener$2;->this$0:Lcom/android/incallui/AccelerometerListener;

    invoke-static {v1}, Lcom/android/incallui/AccelerometerListener;->-get2(Lcom/android/incallui/AccelerometerListener;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/incallui/AccelerometerListener;->-set0(Lcom/android/incallui/AccelerometerListener;I)I

    .line 153
    const-string/jumbo v1, "AccelerometerListener"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "orientation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 154
    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener$2;->this$0:Lcom/android/incallui/AccelerometerListener;

    invoke-static {v0}, Lcom/android/incallui/AccelerometerListener;->-get1(Lcom/android/incallui/AccelerometerListener;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const-string/jumbo v0, "horizontal"

    .line 153
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener$2;->this$0:Lcom/android/incallui/AccelerometerListener;

    invoke-static {v0}, Lcom/android/incallui/AccelerometerListener;->-get0(Lcom/android/incallui/AccelerometerListener;)Lcom/android/incallui/AccelerometerListener$OrientationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AccelerometerListener$2;->this$0:Lcom/android/incallui/AccelerometerListener;

    invoke-static {v1}, Lcom/android/incallui/AccelerometerListener;->-get1(Lcom/android/incallui/AccelerometerListener;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/AccelerometerListener$OrientationListener;->orientationChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_0

    .line 155
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener$2;->this$0:Lcom/android/incallui/AccelerometerListener;

    invoke-static {v0}, Lcom/android/incallui/AccelerometerListener;->-get1(Lcom/android/incallui/AccelerometerListener;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const-string/jumbo v0, "vertical"

    goto :goto_1

    .line 156
    :cond_1
    const-string/jumbo v0, "unknown"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x4d2
        :pswitch_0
    .end packed-switch
.end method
