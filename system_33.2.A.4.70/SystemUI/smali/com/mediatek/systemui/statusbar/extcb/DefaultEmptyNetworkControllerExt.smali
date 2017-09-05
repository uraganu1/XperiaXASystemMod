.class public Lcom/mediatek/systemui/statusbar/extcb/DefaultEmptyNetworkControllerExt;
.super Ljava/lang/Object;
.source "DefaultEmptyNetworkControllerExt.java"

# interfaces
.implements Lcom/mediatek/systemui/statusbar/extcb/INetworkControllerExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataActivity(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public getDataType(I)Lcom/mediatek/systemui/statusbar/extcb/DataType;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultRoamingIcon(Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V
    .locals 0
    .param p1, "icon"    # Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .prologue
    .line 36
    return-void
.end method

.method public getDefaultSignalNullIcon(Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V
    .locals 0
    .param p1, "icon"    # Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .prologue
    .line 32
    return-void
.end method

.method public getNetworkType(I)Lcom/mediatek/systemui/statusbar/extcb/NetworkType;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignalStrengthLevel(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getSvLteController(I)Lcom/mediatek/systemui/statusbar/extcb/SvLteController;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasMobileDataFeature()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public hasService(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public isDataConnected(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public isEmergencyOnly(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public isHspaDataDistinguishable()Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public isLteTddSingleDataMode(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public isOffline(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public isRoaming(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public isRoamingGGMode()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public isShowAtLeast3G()Z
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    return v0
.end method
