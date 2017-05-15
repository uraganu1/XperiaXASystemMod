.class public Lcom/mediatek/settings/ext/DefaultSettingsMiscExt;
.super Landroid/content/ContextWrapper;
.source "DefaultSettingsMiscExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/ISettingsMiscExt;


# static fields
.field static final TAG:Ljava/lang/String; = "DefaultSettingsMiscExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method public addCustomizedItem(Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "targetDashboardCategory"    # Ljava/lang/Object;
    .param p2, "add"    # Ljava/lang/Boolean;

    .prologue
    .line 36
    const-string/jumbo v0, "DefaultSettingsMiscExt"

    const-string/jumbo v1, "DefaultSettingsMisc addCustomizedItem method going"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method public customizeDashboardTile(Ljava/lang/Object;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "tile"    # Ljava/lang/Object;
    .param p2, "tileIcon"    # Landroid/widget/ImageView;

    .prologue
    .line 40
    return-void
.end method

.method public customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .param p1, "simString"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 18
    return-object p1
.end method

.method public initCustomizedLocationSettings(Landroid/preference/PreferenceScreen;I)V
    .locals 0
    .param p1, "root"    # Landroid/preference/PreferenceScreen;
    .param p2, "order"    # I

    .prologue
    .line 21
    return-void
.end method

.method public isWifiOnlyModeSet()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public setFactoryResetTitle(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 27
    return-void
.end method

.method public setTimeoutPrefTitle(Landroid/preference/Preference;)V
    .locals 0
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 30
    return-void
.end method

.method public updateCustomizedLocationSettings()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method
