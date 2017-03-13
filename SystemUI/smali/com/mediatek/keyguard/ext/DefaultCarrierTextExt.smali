.class public Lcom/mediatek/keyguard/ext/DefaultCarrierTextExt;
.super Ljava/lang/Object;
.source "DefaultCarrierTextExt.java"

# interfaces
.implements Lcom/mediatek/keyguard/ext/ICarrierTextExt;


# annotations
.annotation runtime Lcom/mediatek/common/PluginImpl;
    interfaceName = "com.mediatek.keyguard.ext.ICarrierTextExt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customizeCarrierText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 0
    .param p1, "carrierText"    # Ljava/lang/CharSequence;
    .param p2, "simMessage"    # Ljava/lang/CharSequence;
    .param p3, "simId"    # I

    .prologue
    .line 28
    return-object p1
.end method

.method public customizeCarrierTextCapital(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "carrierText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 15
    const-string/jumbo v0, "ro.ct6m_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    return-object p1

    .line 19
    :cond_0
    if-eqz p1, :cond_1

    .line 20
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 22
    :cond_1
    return-object v2
.end method

.method public customizeCarrierTextDivider(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "divider"    # Ljava/lang/String;

    .prologue
    .line 80
    return-object p1
.end method

.method public customizeCarrierTextWhenCardTypeLocked(Ljava/lang/CharSequence;Landroid/content/Context;IZ)Ljava/lang/CharSequence;
    .locals 0
    .param p1, "carrierText"    # Ljava/lang/CharSequence;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phoneId"    # I
    .param p4, "isCardLocked"    # Z

    .prologue
    .line 56
    return-object p1
.end method

.method public customizeCarrierTextWhenSimMissing(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p1, "carrierText"    # Ljava/lang/CharSequence;

    .prologue
    .line 68
    return-object p1
.end method

.method public showCarrierTextWhenSimMissing(ZI)Z
    .locals 0
    .param p1, "isSimMissing"    # Z
    .param p2, "simId"    # I

    .prologue
    .line 33
    return p1
.end method
