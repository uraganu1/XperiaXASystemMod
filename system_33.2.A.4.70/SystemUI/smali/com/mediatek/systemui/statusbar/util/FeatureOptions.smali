.class public Lcom/mediatek/systemui/statusbar/util/FeatureOptions;
.super Ljava/lang/Object;
.source "FeatureOptions.java"


# static fields
.field public static final LOW_RAM_SUPPORT:Z

.field public static final MTK_A1_SUPPORT:Z

.field public static final MTK_CT6M_SUPPORT:Z

.field public static final MTK_CTA_SET:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "ro.config.low_ram"

    invoke-static {v0}, Lcom/mediatek/systemui/statusbar/util/FeatureOptions;->isPropertyEnabledBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/systemui/statusbar/util/FeatureOptions;->LOW_RAM_SUPPORT:Z

    .line 26
    const-string/jumbo v0, "ro.mtk_cta_set"

    invoke-static {v0}, Lcom/mediatek/systemui/statusbar/util/FeatureOptions;->isPropertyEnabledInt(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/systemui/statusbar/util/FeatureOptions;->MTK_CTA_SET:Z

    .line 28
    const-string/jumbo v0, "ro.ct6m_support"

    invoke-static {v0}, Lcom/mediatek/systemui/statusbar/util/FeatureOptions;->isPropertyEnabledInt(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/systemui/statusbar/util/FeatureOptions;->MTK_CT6M_SUPPORT:Z

    .line 30
    const-string/jumbo v0, "ro.mtk_a1_feature"

    invoke-static {v0}, Lcom/mediatek/systemui/statusbar/util/FeatureOptions;->isPropertyEnabledInt(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/systemui/statusbar/util/FeatureOptions;->MTK_A1_SUPPORT:Z

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isPropertyEnabledBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p0, "propertyString"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "true"

    invoke-static {p0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isPropertyEnabledInt(Ljava/lang/String;)Z
    .locals 2
    .param p0, "propertyString"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string/jumbo v0, "1"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
