.class Lcom/sonymobile/conversations/transaction/SmsReceiverService$1;
.super Ljava/lang/Object;
.source "SmsReceiverService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/conversations/transaction/SmsReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/conversations/transaction/SmsReceiverService;


# direct methods
.method constructor <init>(Lcom/sonymobile/conversations/transaction/SmsReceiverService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/conversations/transaction/SmsReceiverService;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService$1;->this$0:Lcom/sonymobile/conversations/transaction/SmsReceiverService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 125
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 109
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService$1;->this$0:Lcom/sonymobile/conversations/transaction/SmsReceiverService;

    .line 110
    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService$1;->this$0:Lcom/sonymobile/conversations/transaction/SmsReceiverService;

    const v2, 0x7f0b00e4

    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v0, v1, v3}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService$1;->this$0:Lcom/sonymobile/conversations/transaction/SmsReceiverService;

    .line 115
    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService$1;->this$0:Lcom/sonymobile/conversations/transaction/SmsReceiverService;

    const v2, 0x7f0b0173

    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v0, v1, v3}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 119
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService$1;->this$0:Lcom/sonymobile/conversations/transaction/SmsReceiverService;

    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService$1;->this$0:Lcom/sonymobile/conversations/transaction/SmsReceiverService;

    .line 120
    iget-object v2, p0, Lcom/sonymobile/conversations/transaction/SmsReceiverService$1;->this$0:Lcom/sonymobile/conversations/transaction/SmsReceiverService;

    const v3, 0x7f0b01c6

    invoke-virtual {v2, v3}, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-static {v0, v1, v2}, Lcom/sonymobile/conversations/transaction/SmsReceiverService;->-wrap5(Lcom/sonymobile/conversations/transaction/SmsReceiverService;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
