.class Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$IncomingHandler;
.super Landroid/os/Handler;
.source "ExportVCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$IncomingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$IncomingHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$IncomingHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v3, 0x7f0e0025

    const v2, 0x7f090296

    const/4 v4, 0x0

    .line 255
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "IncomingHandler received message."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    .line 258
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Message returned from vCard server contains error code."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 260
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$IncomingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->-set0(Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$IncomingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->showDialog(I)V

    .line 263
    return-void

    .line 266
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 288
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->-get0()Ljava/lang/String;

    move-result-object v0

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

    .line 289
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 254
    :goto_0
    return-void

    .line 268
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 269
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    .line 270
    const-string/jumbo v1, "Message returned from vCard server doesn\'t contain valid path"

    .line 269
    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$IncomingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$IncomingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->-set0(Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$IncomingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->showDialog(I)V

    goto :goto_0

    .line 274
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$IncomingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->-set1(Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$IncomingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 276
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    .line 277
    const-string/jumbo v1, "Destination file name coming from vCard service is empty."

    .line 276
    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$IncomingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$IncomingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->-set0(Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$IncomingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->showDialog(I)V

    goto :goto_0

    .line 281
    :cond_3
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Target file name is set (%s). Show confirmation dialog"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 282
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$IncomingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 281
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$IncomingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;

    const v1, 0x7f0e0023

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->showDialog(I)V

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
