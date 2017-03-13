.class public Lcom/sonymobile/keyguard/plugininfrastructure/RealCustomizationResourceLoader;
.super Ljava/lang/Object;
.source "RealCustomizationResourceLoader.java"

# interfaces
.implements Lcom/sonymobile/keyguard/plugininfrastructure/CustomizationResourceLoader;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealCustomizationResourceLoader;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public getSomcCustomizedDefaultFullyQualifiedClockPluginName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealCustomizationResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 34
    sget v1, Lcom/android/keyguard/R$string;->config_somc_default_clock_plugin_class_name:I

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
