.class public Lcom/mediatek/settingslib/ext/DefaultWifiLibExt;
.super Ljava/lang/Object;
.source "DefaultWifiLibExt.java"

# interfaces
.implements Lcom/mediatek/settingslib/ext/IWifiLibExt;


# annotations
.annotation runtime Lcom/mediatek/common/PluginImpl;
    interfaceName = "com.mediatek.settingslib.ext.IWifiLibExt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appendApSummary(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/StringBuilder;
    .param p2, "autoJoinStatus"    # I
    .param p3, "connectFail"    # Ljava/lang/String;
    .param p4, "disabled"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    return-void
.end method

.method public shouldCheckNetworkCapabilities()Z
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    return v0
.end method
