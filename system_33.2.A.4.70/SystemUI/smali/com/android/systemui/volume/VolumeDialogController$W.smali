.class final Lcom/android/systemui/volume/VolumeDialogController$W;
.super Landroid/os/Handler;
.source "VolumeDialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "W"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogController;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    .line 561
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 560
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 566
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 565
    :goto_0
    return-void

    .line 567
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap20(Lcom/android/systemui/volume/VolumeDialogController;II)V

    goto :goto_0

    .line 568
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap10(Lcom/android/systemui/volume/VolumeDialogController;I)V

    goto :goto_0

    .line 569
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap11(Lcom/android/systemui/volume/VolumeDialogController;)V

    goto :goto_0

    .line 570
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_0

    :goto_1
    invoke-static {v2, v3, v0}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap15(Lcom/android/systemui/volume/VolumeDialogController;IZ)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 571
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap18(Lcom/android/systemui/volume/VolumeDialogController;I)V

    goto :goto_0

    .line 572
    :pswitch_5
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/notification/Condition;

    invoke-static {v1, v0}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap14(Lcom/android/systemui/volume/VolumeDialogController;Landroid/service/notification/Condition;)V

    goto :goto_0

    .line 573
    :pswitch_6
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_1

    :goto_2
    invoke-static {v2, v3, v0}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap16(Lcom/android/systemui/volume/VolumeDialogController;IZ)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 574
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->-get1(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$C;->onLayoutDirectionChanged(I)V

    goto :goto_0

    .line 575
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->-get1(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogController$C;->onConfigurationChanged()V

    goto :goto_0

    .line 576
    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap17(Lcom/android/systemui/volume/VolumeDialogController;II)V

    goto :goto_0

    .line 577
    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap13(Lcom/android/systemui/volume/VolumeDialogController;I)V

    goto :goto_0

    .line 578
    :pswitch_b
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_2

    :goto_3
    invoke-static {v2, v0}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap12(Lcom/android/systemui/volume/VolumeDialogController;Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_3

    .line 579
    :pswitch_c
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogController;->onUserActivityW()V

    goto :goto_0

    .line 580
    :pswitch_d
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap19(Lcom/android/systemui/volume/VolumeDialogController;I)V

    goto/16 :goto_0

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
