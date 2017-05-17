.class Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;
.super Landroid/os/Handler;
.source "IsComposingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/util/IsComposingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClockHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/util/IsComposingManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->this$0:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/util/IsComposingManager;Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;-><init>(Lcom/sonyericsson/conversations/ui/util/IsComposingManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/32 v6, 0xea60

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x4

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->this$0:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->-get2(Lcom/sonyericsson/conversations/ui/util/IsComposingManager;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ComposingListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ComposingListener;->onTypingChanged(Z)V

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->this$0:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->-get0(Lcom/sonyericsson/conversations/ui/util/IsComposingManager;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->this$0:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->-get1(Lcom/sonyericsson/conversations/ui/util/IsComposingManager;)J

    move-result-wide v2

    invoke-virtual {v0, v5, v2, v3}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->this$0:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->-get0(Lcom/sonyericsson/conversations/ui/util/IsComposingManager;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;

    move-result-object v0

    invoke-virtual {v0, v4, v6, v7}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 97
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->this$0:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->-get0(Lcom/sonyericsson/conversations/ui/util/IsComposingManager;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->removeMessages(I)V

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->this$0:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->-get0(Lcom/sonyericsson/conversations/ui/util/IsComposingManager;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->this$0:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->-get1(Lcom/sonyericsson/conversations/ui/util/IsComposingManager;)J

    move-result-wide v2

    invoke-virtual {v0, v5, v2, v3}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 106
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->this$0:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->hasNoActivity()V

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->this$0:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->-get2(Lcom/sonyericsson/conversations/ui/util/IsComposingManager;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ComposingListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ComposingListener;->onTypingChanged(Z)V

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->this$0:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->-get0(Lcom/sonyericsson/conversations/ui/util/IsComposingManager;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->removeMessages(I)V

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->this$0:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->-get0(Lcom/sonyericsson/conversations/ui/util/IsComposingManager;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->removeMessages(I)V

    goto :goto_0

    .line 122
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->this$0:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->-get2(Lcom/sonyericsson/conversations/ui/util/IsComposingManager;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ComposingListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ComposingListener;->onTypingChanged(Z)V

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->this$0:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->-get0(Lcom/sonyericsson/conversations/ui/util/IsComposingManager;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;

    move-result-object v0

    invoke-virtual {v0, v4, v6, v7}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 133
    :pswitch_4
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->this$0:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->hasNoActivity()V

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->this$0:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->-get2(Lcom/sonyericsson/conversations/ui/util/IsComposingManager;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ComposingListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ComposingListener;->onTypingChanged(Z)V

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->this$0:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->-get0(Lcom/sonyericsson/conversations/ui/util/IsComposingManager;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ClockHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
