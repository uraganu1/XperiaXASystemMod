.class public Lcom/sonymobile/settings/search/SearchPreferenceManager;
.super Landroid/preference/PreferenceManager;
.source "SearchPreferenceManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    new-instance v0, Lcom/sonymobile/settings/search/MockActivity;

    invoke-direct {v0, p1}, Lcom/sonymobile/settings/search/MockActivity;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    .line 25
    return-void
.end method
