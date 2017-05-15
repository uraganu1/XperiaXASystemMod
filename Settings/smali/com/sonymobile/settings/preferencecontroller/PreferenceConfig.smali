.class public Lcom/sonymobile/settings/preferencecontroller/PreferenceConfig;
.super Ljava/lang/Object;
.source "PreferenceConfig.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPrintingAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    if-nez p0, :cond_0

    .line 19
    const/4 v2, 0x0

    return v2

    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    .local v0, "available":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 24
    const-string/jumbo v3, "android.software.print"

    .line 23
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 25
    .local v1, "hasPrintingSupport":Z
    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 29
    :cond_2
    return v0
.end method
