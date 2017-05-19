.class public Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;
.super Ljava/lang/Object;
.source "FeatureOptionWrapper.java"


# static fields
.field private static final MTK_CTA_SET:Z

.field public static final MTK_IMS_SUPPORT:Z

.field public static final MTK_VOLTE_SUPPORT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-string/jumbo v0, "ro.mtk_ims_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    const-string/jumbo v1, "1"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->MTK_IMS_SUPPORT:Z

    .line 40
    const-string/jumbo v0, "ro.mtk_volte_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string/jumbo v1, "1"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->MTK_VOLTE_SUPPORT:Z

    .line 46
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "ro.mtk_cta_set"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->MTK_CTA_SET:Z

    .line 6
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
