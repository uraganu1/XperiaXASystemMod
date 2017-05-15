.class public Lcom/sonymobile/settings/nfc/AidRoutingSimulatorSony;
.super Lcom/sonymobile/settings/nfc/AidRoutingSimulator;
.source "AidRoutingSimulatorSony.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "route"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;-><init>(II)V

    .line 26
    return-void
.end method


# virtual methods
.method public getMaxAidEntries()I
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x40

    return v0
.end method

.method public getMaxAidLength()I
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x280

    return v0
.end method
