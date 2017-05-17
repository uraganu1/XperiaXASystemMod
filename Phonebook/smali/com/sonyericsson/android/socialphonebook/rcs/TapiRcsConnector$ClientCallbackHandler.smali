.class final Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ClientCallbackHandler;
.super Landroid/os/Handler;
.source "TapiRcsConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClientCallbackHandler"
.end annotation


# instance fields
.field private final mClient:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector$RcsCallback;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector$RcsCallback;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "client"    # Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector$RcsCallback;

    .prologue
    .line 255
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 256
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ClientCallbackHandler;->mClient:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector$RcsCallback;

    .line 254
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 261
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ClientCallbackHandler;->mClient:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector$RcsCallback;

    if-eqz v3, :cond_0

    .line 262
    iget v2, p1, Landroid/os/Message;->what:I

    .line 263
    .local v2, "messageId":I
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 264
    .local v1, "isSuccess":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 265
    .local v0, "data":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/rcs/TapiRcsConnector$ClientCallbackHandler;->mClient:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector$RcsCallback;

    invoke-interface {v3, v2, v1, v0}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector$RcsCallback;->onRcsRequestHandled(IZLandroid/os/Bundle;)V

    .line 260
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "isSuccess":Z
    .end local v2    # "messageId":I
    :cond_0
    return-void

    .line 263
    .restart local v2    # "messageId":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isSuccess":Z
    goto :goto_0
.end method
