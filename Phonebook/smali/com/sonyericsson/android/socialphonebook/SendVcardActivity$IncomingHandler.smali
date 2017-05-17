.class Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$IncomingHandler;
.super Landroid/os/Handler;
.source "SendVcardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$IncomingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$IncomingHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$IncomingHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v3, 0x7f0e0025

    const v2, 0x7f090296

    .line 437
    const-string/jumbo v0, "SendVCardActivity"

    const-string/jumbo v1, "IncomingHandler received message."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    .line 440
    const-string/jumbo v0, "SendVCardActivity"

    const-string/jumbo v1, "Message returned from vCard server contains error code."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 442
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$IncomingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->-set0(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$IncomingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->showDialog(I)V

    .line 445
    return-void

    .line 448
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 468
    const-string/jumbo v0, "SendVCardActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 436
    :goto_0
    return-void

    .line 450
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 451
    const-string/jumbo v0, "SendVCardActivity"

    .line 452
    const-string/jumbo v1, "Message returned from vCard server doesn\'t contain valid path"

    .line 451
    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$IncomingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$IncomingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->-set0(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 454
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$IncomingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->showDialog(I)V

    goto :goto_0

    .line 456
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$IncomingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mTargetFileName:Ljava/lang/String;

    .line 457
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$IncomingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mTargetFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 458
    const-string/jumbo v0, "SendVCardActivity"

    .line 459
    const-string/jumbo v1, "Destination file name coming from vCard service is empty."

    .line 458
    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$IncomingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$IncomingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->-set0(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 461
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$IncomingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->showDialog(I)V

    goto :goto_0

    .line 463
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$IncomingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->-wrap1(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)V

    goto :goto_0

    .line 448
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
