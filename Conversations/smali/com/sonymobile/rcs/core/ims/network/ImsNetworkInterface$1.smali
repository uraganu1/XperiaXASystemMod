.class Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$1;
.super Ljava/lang/Thread;
.source "ImsNetworkInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->unregister()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;)V
    .locals 0

    .prologue
    .line 679
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->registration:Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->access$000(Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;)Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/registration/RegistrationManager;->unRegistration()V

    .line 685
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$1;->this$0:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    # getter for: Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->sip:Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;->access$100(Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;)Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->closeStack()V

    .line 686
    return-void
.end method
