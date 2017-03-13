.class Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$1;
.super Ljava/lang/Object;
.source "ThrowControllerImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 72
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;

    invoke-static {p2}, Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->-set0(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController;)Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController;

    .line 73
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->-get3(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;)Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->-get3(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;)Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;

    invoke-static {v2}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->-get2(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;)Lcom/sonymobile/playanywhere/IPlayAnywhereCallback;

    move-result-object v2

    .line 76
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;

    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->-get1(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-interface {v1, v2, v3}, Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController;->registerCallback(Lcom/sonymobile/playanywhere/IPlayAnywhereCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->-wrap1(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;)V

    .line 71
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 85
    invoke-static {}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PlayAnywhere service was disconnected, so try to restart"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->-wrap2(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;)V

    .line 87
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->-wrap0(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;)V

    .line 84
    return-void
.end method
