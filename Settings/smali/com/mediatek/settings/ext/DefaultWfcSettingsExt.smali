.class public Lcom/mediatek/settings/ext/DefaultWfcSettingsExt;
.super Ljava/lang/Object;
.source "DefaultWfcSettingsExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IWfcSettingsExt;


# static fields
.field public static final PAUSE:I = 0x1

.field public static final RESUME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DefaultWfcSettingsExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getWfcModeSummary(Landroid/content/Context;I)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wfcMode"    # I

    .prologue
    .line 105
    const v0, 0x10400d1

    .line 106
    .local v0, "resId":I
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    packed-switch p2, :pswitch_data_0

    .line 118
    const-string/jumbo v1, "DefaultWfcSettingsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected WFC mode value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 109
    :pswitch_0
    const v0, 0x10400d4

    .line 110
    goto :goto_0

    .line 112
    :pswitch_1
    const v0, 0x10400d3

    .line 113
    goto :goto_0

    .line 115
    :pswitch_2
    const v0, 0x10400d2

    .line 116
    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addOtherCustomPreference()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public customizedWfcPreference(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 100
    return-void
.end method

.method public getWfcSummary(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultSummaryResId"    # I

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initPlugin(Landroid/preference/PreferenceFragment;)V
    .locals 0
    .param p1, "pf"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 27
    return-void
.end method

.method public onWfcSettingsEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 53
    return-void
.end method

.method public onWirelessSettingsEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 45
    return-void
.end method

.method public showWfcTetheringAlertDialog(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public updateWfcModePreference(Landroid/preference/PreferenceScreen;Landroid/preference/ListPreference;ZI)V
    .locals 3
    .param p1, "root"    # Landroid/preference/PreferenceScreen;
    .param p2, "wfcModePref"    # Landroid/preference/ListPreference;
    .param p3, "wfcEnabled"    # Z
    .param p4, "wfcMode"    # I

    .prologue
    .line 74
    const-string/jumbo v0, "DefaultWfcSettingsExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wfcEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "wfcMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/mediatek/settings/ext/DefaultWfcSettingsExt;->getWfcModeSummary(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 76
    invoke-virtual {p2, p3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 77
    if-eqz p3, :cond_0

    .line 78
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 73
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
