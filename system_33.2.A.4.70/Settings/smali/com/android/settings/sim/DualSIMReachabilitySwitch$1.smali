.class Lcom/android/settings/sim/DualSIMReachabilitySwitch$1;
.super Landroid/os/Handler;
.source "DualSIMReachabilitySwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/DualSIMReachabilitySwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$1;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 172
    const-string/jumbo v3, "DualSIMReachabilitySwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mHandler event:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", arg1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", arg2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 173
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 172
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 177
    .local v0, "result":Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 170
    :goto_0
    return-void

    .line 179
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$1;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-wrap4(Lcom/android/settings/sim/DualSIMReachabilitySwitch;Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$1;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v0, v2, v3}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-wrap3(Lcom/android/settings/sim/DualSIMReachabilitySwitch;Landroid/os/AsyncResult;II)V

    goto :goto_0

    .line 185
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$1;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-wrap5(Lcom/android/settings/sim/DualSIMReachabilitySwitch;Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 188
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$1;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v0, v2, v3}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-wrap6(Lcom/android/settings/sim/DualSIMReachabilitySwitch;Landroid/os/AsyncResult;II)V

    goto :goto_0

    .line 191
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$1;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v0, v2, v3}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-wrap7(Lcom/android/settings/sim/DualSIMReachabilitySwitch;Landroid/os/AsyncResult;II)V

    goto :goto_0

    .line 194
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$1;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-static {v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-wrap14(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)V

    goto :goto_0

    .line 197
    :pswitch_6
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$1;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-wrap10(Lcom/android/settings/sim/DualSIMReachabilitySwitch;I)V

    goto :goto_0

    .line 200
    :pswitch_7
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$1;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-static {v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-wrap9(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)V

    goto :goto_0

    .line 203
    :pswitch_8
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$1;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    const/16 v4, 0xc9

    invoke-virtual {v3, v4}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->removeDialog(I)V

    .line 204
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$1;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget-object v3, v3, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$1;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget-object v2, v2, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 204
    if-eqz v2, :cond_1

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$1;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    const/16 v2, 0xca

    invoke-static {v1, v2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-wrap12(Lcom/android/settings/sim/DualSIMReachabilitySwitch;I)V

    goto :goto_0

    .line 208
    :cond_1
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$1;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-static {v2, v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-wrap10(Lcom/android/settings/sim/DualSIMReachabilitySwitch;I)V

    goto :goto_0

    .line 212
    :pswitch_9
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$1;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_2

    :goto_1
    invoke-static {v3, v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-wrap8(Lcom/android/settings/sim/DualSIMReachabilitySwitch;Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method
