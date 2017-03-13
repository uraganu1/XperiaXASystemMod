.class public Lcom/mediatek/systemui/ext/DefaultMobileIconExt;
.super Ljava/lang/Object;
.source "DefaultMobileIconExt.java"

# interfaces
.implements Lcom/mediatek/systemui/ext/IMobileIconExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customizeMobileNetCondition(I)I
    .locals 1
    .param p1, "netCondition"    # I

    .prologue
    .line 23
    sget-boolean v0, Lcom/mediatek/systemui/statusbar/util/FeatureOptions;->MTK_CT6M_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 24
    const/4 p1, 0x1

    .line 27
    :cond_0
    return p1
.end method

.method public customizeWifiNetCondition(I)I
    .locals 1
    .param p1, "netCondition"    # I

    .prologue
    .line 14
    sget-boolean v0, Lcom/mediatek/systemui/statusbar/util/FeatureOptions;->MTK_CT6M_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 15
    const/4 p1, 0x1

    .line 18
    :cond_0
    return p1
.end method
