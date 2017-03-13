.class public Lcom/mediatek/systemui/statusbar/networktype/NetworkTypeUtils;
.super Ljava/lang/Object;
.source "NetworkTypeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/systemui/statusbar/networktype/NetworkTypeUtils$1;
    }
.end annotation


# static fields
.field public static final VOLTEICON:[I

.field static final sNetworkTypeIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const v0, 0x7f0201e7

    .line 21
    const v1, 0x7f0201e8

    .line 20
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/mediatek/systemui/statusbar/networktype/NetworkTypeUtils;->VOLTEICON:[I

    .line 23
    new-instance v0, Lcom/mediatek/systemui/statusbar/networktype/NetworkTypeUtils$1;

    invoke-direct {v0}, Lcom/mediatek/systemui/statusbar/networktype/NetworkTypeUtils$1;-><init>()V

    sput-object v0, Lcom/mediatek/systemui/statusbar/networktype/NetworkTypeUtils;->sNetworkTypeIcons:Ljava/util/Map;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataNetTypeFromServiceState(ILandroid/telephony/ServiceState;)I
    .locals 4
    .param p0, "srcDataNetType"    # I
    .param p1, "sState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 108
    move v0, p0

    .line 109
    .local v0, "destDataNetType":I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 110
    const/16 v1, 0x8b

    if-ne v0, v1, :cond_1

    .line 111
    :cond_0
    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getProprietaryDataRadioTechnology()I

    move-result v1

    if-nez v1, :cond_2

    .line 113
    const/16 v0, 0xd

    .line 117
    :cond_1
    :goto_0
    const-string/jumbo v1, "NetworkTypeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDataNetTypeFromServiceState:srcDataNetType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 118
    const-string/jumbo v3, ", destDataNetType "

    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return v0

    .line 113
    :cond_2
    const/16 v0, 0x8b

    goto :goto_0
.end method

.method public static getNetworkType(Landroid/telephony/ServiceState;)I
    .locals 4
    .param p0, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "type":I
    if-eqz p0, :cond_0

    .line 99
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    .line 102
    :cond_0
    :goto_0
    const-string/jumbo v1, "NetworkTypeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNetworkType: type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return v0

    .line 100
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method public static getNetworkTypeIcon(ILcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;Z)I
    .locals 4
    .param p0, "networkType"    # I
    .param p1, "config"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
    .param p2, "hasService"    # Z

    .prologue
    const/4 v1, 0x0

    .line 81
    if-nez p2, :cond_0

    .line 83
    return v1

    .line 86
    :cond_0
    sget-object v2, Lcom/mediatek/systemui/statusbar/networktype/NetworkTypeUtils;->sNetworkTypeIcons:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 87
    .local v0, "iconId":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 88
    if-nez p0, :cond_2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 92
    :cond_1
    const-string/jumbo v1, "NetworkTypeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNetworkTypeIcon() iconId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 89
    :cond_2
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    if-eqz v1, :cond_3

    const v1, 0x7f0201b9

    goto :goto_0

    .line 90
    :cond_3
    const v1, 0x7f0201bc

    goto :goto_0
.end method

.method public static getNetworkTypeIcon(Landroid/telephony/ServiceState;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;Z)I
    .locals 5
    .param p0, "serviceState"    # Landroid/telephony/ServiceState;
    .param p1, "config"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
    .param p2, "hasService"    # Z

    .prologue
    const/4 v2, 0x0

    .line 56
    if-nez p2, :cond_0

    .line 58
    return v2

    .line 60
    :cond_0
    invoke-static {p0}, Lcom/mediatek/systemui/statusbar/networktype/NetworkTypeUtils;->getNetworkType(Landroid/telephony/ServiceState;)I

    move-result v1

    .line 62
    .local v1, "tempNetworkType":I
    sget-object v3, Lcom/mediatek/systemui/statusbar/networktype/NetworkTypeUtils;->sNetworkTypeIcons:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 63
    .local v0, "iconId":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 64
    if-nez v1, :cond_2

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 68
    :cond_1
    const-string/jumbo v2, "NetworkTypeUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getNetworkTypeIcon iconId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 65
    :cond_2
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    if-eqz v2, :cond_3

    const v2, 0x7f0201b9

    goto :goto_0

    .line 66
    :cond_3
    const v2, 0x7f0201bc

    goto :goto_0
.end method
