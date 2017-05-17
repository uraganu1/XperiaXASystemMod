.class Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$2;
.super Landroid/content/BroadcastReceiver;
.source "CallPlusConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$2;->this$0:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$2;->this$0:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->-get0(Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;)Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$2;->this$0:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->-get0(Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;)Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;->onCapabilitiesUpdated(Landroid/content/Intent;)V

    .line 58
    :cond_0
    return-void
.end method
