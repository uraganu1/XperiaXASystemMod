.class public interface abstract Lcom/mediatek/settings/ext/IApnSettingsExt;
.super Ljava/lang/Object;
.source "IApnSettingsExt.java"


# virtual methods
.method public abstract addApnTypeExtra(Landroid/content/Intent;)V
.end method

.method public abstract customizeApnProjection([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract customizePreference(ILandroid/preference/PreferenceScreen;)V
.end method

.method public abstract customizeTetherApnSettings(Landroid/preference/PreferenceScreen;)V
.end method

.method public abstract customizeUnselectableApn(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
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
.end method

.method public abstract getApnSortOrder(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getApnTypeArray([Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getFillListQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPreferCarrierUri(Landroid/net/Uri;I)Landroid/net/Uri;
.end method

.method public abstract getScreenEnableState(ILandroid/app/Activity;)Z
.end method

.method public abstract getUriFromIntent(Landroid/net/Uri;Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;
.end method

.method public abstract initTetherField(Landroid/preference/PreferenceFragment;)V
.end method

.method public abstract isAllowEditPresetApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract isSelectable(Ljava/lang/String;)Z
.end method

.method public abstract onDestroy()V
.end method

.method public abstract replaceApn(JLandroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)J
.end method

.method public abstract saveApnValues(Landroid/content/ContentValues;)V
.end method

.method public abstract setApnTypePreferenceState(Landroid/preference/Preference;Ljava/lang/String;)V
.end method

.method public abstract setMvnoPreferenceState(Landroid/preference/Preference;Landroid/preference/Preference;)V
.end method

.method public abstract setPreferenceTextAndSummary(ILjava/lang/String;)V
.end method

.method public abstract updateApnName(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract updateFieldsStatus(IILandroid/preference/PreferenceScreen;)V
.end method

.method public abstract updateMenu(Landroid/view/Menu;IILjava/lang/String;)V
.end method

.method public abstract updateTetherState()V
.end method
