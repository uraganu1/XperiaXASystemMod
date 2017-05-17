.class Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$1;
.super Ljava/lang/Object;
.source "CallPlusConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 36
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$1;->this$0:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$1;->this$0:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-static {p2}, Lcom/sonymobile/holla/ICallPlusService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/holla/ICallPlusService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->-set0(Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;Lcom/sonymobile/holla/ICallPlusService;)Lcom/sonymobile/holla/ICallPlusService;

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$1;->this$0:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->-get0(Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;)Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$1;->this$0:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->-get0(Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;)Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;->onCallPlusServiceConnected()V

    .line 47
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 39
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$1;->this$0:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->-set0(Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;Lcom/sonymobile/holla/ICallPlusService;)Lcom/sonymobile/holla/ICallPlusService;

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$1;->this$0:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->-get0(Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;)Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$1;->this$0:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->-get0(Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;)Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;->onCallPlusServiceDisconnected()V

    .line 38
    :cond_0
    return-void
.end method
