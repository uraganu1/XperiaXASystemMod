.class Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1$1;
.super Ljava/util/TimerTask;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->onCallStateChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1$1;->this$1:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1$1;->this$1:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->remoteParty:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->requestCapabilities(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->access$1200(Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;Ljava/lang/String;Z)V

    .line 324
    return-void
.end method
