.class public Lcom/mediatek/settings/ext/DefaultWifiSettingsExt;
.super Ljava/lang/Object;
.source "DefaultWifiSettingsExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IWifiSettingsExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWifiSettingsExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCategories(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 46
    return-void
.end method

.method public addPreference(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Z)V
    .locals 0
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;
    .param p3, "isConfiged"    # Z

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 41
    :cond_0
    return-void
.end method

.method public disconnect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 39
    return-void
.end method

.method public emptyCategory(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 26
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 25
    return-void
.end method

.method public emptyScreen(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 28
    return-void
.end method

.method public recordPriority(I)V
    .locals 0
    .param p1, "selectPriority"    # I

    .prologue
    .line 33
    return-void
.end method

.method public refreshCategory(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 31
    return-void
.end method

.method public registerPriorityObserver(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 14
    return-void
.end method

.method public setLastConnectedConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 18
    return-void
.end method

.method public setNewPriority(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 35
    return-void
.end method

.method public unregisterPriorityObserver(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 16
    return-void
.end method

.method public updateContextMenu(Landroid/view/ContextMenu;ILandroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "menuId"    # I
    .param p3, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 22
    return-void
.end method

.method public updatePriority()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public updatePriorityAfterSubmit(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 37
    return-void
.end method
