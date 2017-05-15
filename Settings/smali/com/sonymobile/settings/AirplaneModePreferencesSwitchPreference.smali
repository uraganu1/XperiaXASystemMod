.class public Lcom/sonymobile/settings/AirplaneModePreferencesSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "AirplaneModePreferencesSwitchPreference.java"


# instance fields
.field private final mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/AirplaneModePreferencesSwitchPreference;->mPreferenceList:Ljava/util/List;

    .line 20
    return-void
.end method

.method private changeDependentPreferenceState(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 40
    iget-object v2, p0, Lcom/sonymobile/settings/AirplaneModePreferencesSwitchPreference;->mPreferenceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "preference$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 41
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    .line 39
    .end local v0    # "preference":Landroid/preference/Preference;
    :cond_1
    return-void
.end method


# virtual methods
.method public addDependentPreference(Landroid/preference/PreferenceFragment;Ljava/lang/String;)V
    .locals 2
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;
    .param p2, "preferenceKey"    # Ljava/lang/String;

    .prologue
    .line 25
    if-nez p1, :cond_0

    .line 26
    return-void

    .line 28
    :cond_0
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 29
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sonymobile/settings/AirplaneModePreferencesSwitchPreference;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    :cond_1
    :goto_0
    return-void

    .line 30
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/settings/AirplaneModePreferencesSwitchPreference;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/AirplaneModePreferencesSwitchPreference;->changeDependentPreferenceState(Z)V

    .line 35
    return-void
.end method
