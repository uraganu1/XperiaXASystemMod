.class public Lcom/sonymobile/settings/nfc/AidRoutingSimulatorNxp;
.super Lcom/sonymobile/settings/nfc/AidRoutingSimulator;
.source "AidRoutingSimulatorNxp.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "route"    # I

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;-><init>(II)V

    .line 26
    return-void
.end method


# virtual methods
.method public getMaxAidEntries()I
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x14

    return v0
.end method

.method public getMaxAidLength()I
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0xa0

    return v0
.end method

.method protected routeAids(Ljava/lang/String;I)V
    .locals 2
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "route"    # I

    .prologue
    .line 32
    const-string/jumbo v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 35
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->routeAids(Ljava/lang/String;I)V

    .line 31
    return-void
.end method
