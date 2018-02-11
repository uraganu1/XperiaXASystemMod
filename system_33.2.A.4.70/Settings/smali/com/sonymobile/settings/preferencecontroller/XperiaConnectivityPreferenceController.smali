.class public Lcom/sonymobile/settings/preferencecontroller/XperiaConnectivityPreferenceController;
.super Ljava/lang/Object;
.source "XperiaConnectivityPreferenceController.java"

# interfaces
.implements Lcom/sonymobile/settings/preferencecontroller/PreferenceController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private removePreference(Landroid/preference/PreferenceFragment;Ljava/lang/String;)V
    .locals 2
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 53
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 55
    .local v1, "screen":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 51
    .end local v1    # "screen":Landroid/preference/PreferenceScreen;
    :cond_0
    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 38
    return-object v0

    .line 43
    :cond_0
    const-string/jumbo v1, "printing_category"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-static {p1}, Lcom/sonymobile/settings/preferencecontroller/PreferenceConfig;->isPrintingAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    const-string/jumbo v1, "printing"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_1
    return-object v0
.end method

.method public initPreferences(Landroid/content/Context;Landroid/preference/PreferenceFragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceFragment"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 23
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 24
    :cond_0
    return-void

    .line 27
    :cond_1
    invoke-static {p1}, Lcom/sonymobile/settings/preferencecontroller/PreferenceConfig;->isPrintingAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 28
    const-string/jumbo v0, "printing"

    invoke-direct {p0, p2, v0}, Lcom/sonymobile/settings/preferencecontroller/XperiaConnectivityPreferenceController;->removePreference(Landroid/preference/PreferenceFragment;Ljava/lang/String;)V

    .line 29
    const-string/jumbo v0, "printing_category"

    invoke-direct {p0, p2, v0}, Lcom/sonymobile/settings/preferencecontroller/XperiaConnectivityPreferenceController;->removePreference(Landroid/preference/PreferenceFragment;Ljava/lang/String;)V

    .line 22
    :cond_2
    return-void
.end method
