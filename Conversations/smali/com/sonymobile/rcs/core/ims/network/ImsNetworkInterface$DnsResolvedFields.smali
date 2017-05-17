.class public Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;
.super Ljava/lang/Object;
.source "ImsNetworkInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DnsResolvedFields"
.end annotation


# instance fields
.field public ipAddress:Ljava/lang/String;

.field public port:I

.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;Ljava/lang/String;I)V
    .locals 1
    .param p2, "ipAddress"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;->this$0:Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;->ipAddress:Ljava/lang/String;

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;->port:I

    .line 82
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;->ipAddress:Ljava/lang/String;

    .line 83
    iput p3, p0, Lcom/sonymobile/rcs/core/ims/network/ImsNetworkInterface$DnsResolvedFields;->port:I

    .line 84
    return-void
.end method
