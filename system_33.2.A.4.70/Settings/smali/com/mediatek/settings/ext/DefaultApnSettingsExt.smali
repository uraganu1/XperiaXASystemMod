.class public Lcom/mediatek/settings/ext/DefaultApnSettingsExt;
.super Ljava/lang/Object;
.source "DefaultApnSettingsExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IApnSettingsExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultApnSettingsExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addApnTypeExtra(Landroid/content/Intent;)V
    .locals 0
    .param p1, "it"    # Landroid/content/Intent;

    .prologue
    .line 124
    return-void
.end method

.method public customizeApnProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 147
    return-object p1
.end method

.method public customizePreference(ILandroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 142
    return-void
.end method

.method public customizeTetherApnSettings(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 42
    return-void
.end method

.method public customizeUnselectableApn(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0
    .param p3, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .local p2, "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    return-void
.end method

.method public getApnSortOrder(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 204
    return-object p1
.end method

.method public getApnTypeArray([Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p1, "defaultApnArray"    # [Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "apnType"    # Ljava/lang/String;

    .prologue
    .line 105
    return-object p1
.end method

.method public getFillListQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "mccmnc"    # Ljava/lang/String;

    .prologue
    .line 53
    return-object p1
.end method

.method public getPreferCarrierUri(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 0
    .param p1, "defaultUri"    # Landroid/net/Uri;
    .param p2, "subId"    # I

    .prologue
    .line 71
    return-object p1
.end method

.method public getScreenEnableState(ILandroid/app/Activity;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public getUriFromIntent(Landroid/net/Uri;Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;
    .locals 0
    .param p1, "defaultUri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 93
    return-object p1
.end method

.method public initTetherField(Landroid/preference/PreferenceFragment;)V
    .locals 0
    .param p1, "pref"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 28
    return-void
.end method

.method public isAllowEditPresetApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;
    .param p4, "sourcetype"    # I

    .prologue
    .line 37
    const-string/jumbo v0, "DefaultApnSettingsExt"

    const-string/jumbo v1, "isAllowEditPresetApn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public replaceApn(JLandroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 1
    .param p1, "defaultReplaceNum"    # J
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "apn"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "values"    # Landroid/content/ContentValues;
    .param p8, "numeric"    # Ljava/lang/String;

    .prologue
    .line 173
    return-wide p1
.end method

.method public saveApnValues(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 151
    return-void
.end method

.method public setApnTypePreferenceState(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 0
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 81
    return-void
.end method

.method public setMvnoPreferenceState(Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 0
    .param p1, "mvnoType"    # Landroid/preference/Preference;
    .param p2, "mvnoMatchData"    # Landroid/preference/Preference;

    .prologue
    .line 194
    return-void
.end method

.method public setPreferenceTextAndSummary(ILjava/lang/String;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 138
    return-void
.end method

.method public updateApnName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sourcetype"    # I

    .prologue
    .line 156
    return-object p1
.end method

.method public updateFieldsStatus(IILandroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "sourceType"    # I
    .param p3, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 134
    return-void
.end method

.method public updateMenu(Landroid/view/Menu;IILjava/lang/String;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "newMenuId"    # I
    .param p3, "restoreMenuId"    # I
    .param p4, "numeric"    # Ljava/lang/String;

    .prologue
    .line 119
    return-void
.end method

.method public updateTetherState()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method
