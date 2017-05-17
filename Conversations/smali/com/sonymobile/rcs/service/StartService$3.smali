.class Lcom/sonymobile/rcs/service/StartService$3;
.super Landroid/content/BroadcastReceiver;
.source "StartService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/StartService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/service/StartService;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/service/StartService;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lcom/sonymobile/rcs/service/StartService$3;->this$0:Lcom/sonymobile/rcs/service/StartService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 757
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "ss"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, "simState":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "LOADED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 760
    invoke-static {p1}, Lcom/sonymobile/rcs/platform/AndroidFactory;->setApplicationContext(Landroid/content/Context;)V

    .line 761
    new-instance v1, Lcom/sonymobile/rcs/service/StartService$3$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/service/StartService$3$1;-><init>(Lcom/sonymobile/rcs/service/StartService$3;)V

    .line 766
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
