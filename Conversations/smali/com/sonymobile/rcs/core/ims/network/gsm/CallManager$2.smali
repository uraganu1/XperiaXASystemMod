.class Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$2;
.super Ljava/lang/Object;
.source "CallManager.java"

# interfaces
.implements Lcom/sonymobile/rcs/utils/ProximitySensorManager$FarStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$2;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFar()V
    .locals 3

    .prologue
    .line 344
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 346
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$2;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->callState:I
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$100(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 347
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$2;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->remoteParty:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$400()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->requestCapabilities(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$1300(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;Ljava/lang/String;)V

    goto :goto_0
.end method
