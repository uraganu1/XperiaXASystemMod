.class public Lcom/sonyericsson/android/socialphonebook/FeatureOptionStub;
.super Ljava/lang/Object;
.source "FeatureOptionStub.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/sonyericsson/android/socialphonebook/FeatureOptionStub;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/FeatureOptionStub;->TAG:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMtkGeminiSupport()Z
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "ret":Z
    const-string/jumbo v1, "ro.mtk_gemini_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 28
    .local v0, "ret":Z
    return v0
.end method
