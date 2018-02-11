.class Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;
.super Ljava/lang/Object;
.source "AidRoutingSimulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/nfc/AidRoutingSimulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultServiceInfo"
.end annotation


# instance fields
.field foregroundDefault:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

.field paymentDefault:Lcom/sonymobile/settings/nfc/AidRoutingSimulator$ServiceAidInfo;

.field final synthetic this$0:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/nfc/AidRoutingSimulator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/sonymobile/settings/nfc/AidRoutingSimulator$DefaultServiceInfo;->this$0:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
