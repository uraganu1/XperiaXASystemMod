.class public Lcom/mediatek/settings/ext/DefaultAppsExt;
.super Ljava/lang/Object;
.source "DefaultAppsExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IAppsExt;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public launchApp(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 16
    return-void
.end method
