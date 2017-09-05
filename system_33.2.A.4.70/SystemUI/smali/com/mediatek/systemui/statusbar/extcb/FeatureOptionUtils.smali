.class public Lcom/mediatek/systemui/statusbar/extcb/FeatureOptionUtils;
.super Ljava/lang/Object;
.source "FeatureOptionUtils.java"


# static fields
.field public static final BUILD_TYPE:Ljava/lang/String; = "ro.build.type"

.field public static final BUILD_TYPE_ENG:Ljava/lang/String; = "eng"

.field public static final BUILD_TYPE_USER:Ljava/lang/String; = "user"

.field public static final EVDO_DT_SUPPORT:Ljava/lang/String; = "ril.evdo.dtsupport"

.field public static final MTK_C2K_SUPPORT:Ljava/lang/String; = "ro.mtk_c2k_support"

.field public static final MTK_IRAT_SUPPORT:Ljava/lang/String; = "ro.c2k.irat.support"

.field public static final MTK_MD_IRAT_SUPPORT:Ljava/lang/String; = "ro.c2k.md.irat.support"

.field public static final MTK_OP01_RCS_SUPPORT:Ljava/lang/String; = "ro.mtk_op01_rcs"

.field public static final MTK_SVLTE_SUPPORT:Ljava/lang/String; = "ro.mtk_svlte_support"

.field public static final SUPPORT_YES:Ljava/lang/String; = "1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isCdmaApIratSupport()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-static {}, Lcom/mediatek/systemui/statusbar/extcb/FeatureOptionUtils;->isCdmaIratSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mediatek/systemui/statusbar/extcb/FeatureOptionUtils;->isCdmaMdIratSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final isCdmaIratSupport()Z
    .locals 1

    .prologue
    .line 61
    const-string/jumbo v0, "ro.c2k.irat.support"

    invoke-static {v0}, Lcom/mediatek/systemui/statusbar/extcb/FeatureOptionUtils;->isSupport(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isCdmaLteDcSupport()Z
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "ro.mtk_svlte_support"

    invoke-static {v0}, Lcom/mediatek/systemui/statusbar/extcb/FeatureOptionUtils;->isSupport(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isCdmaMdIratSupport()Z
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "ro.c2k.md.irat.support"

    invoke-static {v0}, Lcom/mediatek/systemui/statusbar/extcb/FeatureOptionUtils;->isSupport(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isMtkC2KSupport()Z
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, "ro.mtk_c2k_support"

    invoke-static {v0}, Lcom/mediatek/systemui/statusbar/extcb/FeatureOptionUtils;->isSupport(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isOP01RcsSupport()Z
    .locals 1

    .prologue
    .line 77
    const-string/jumbo v0, "ro.mtk_op01_rcs"

    invoke-static {v0}, Lcom/mediatek/systemui/statusbar/extcb/FeatureOptionUtils;->isSupport(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final isSupport(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final isUserLoad()Z
    .locals 2

    .prologue
    .line 85
    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
