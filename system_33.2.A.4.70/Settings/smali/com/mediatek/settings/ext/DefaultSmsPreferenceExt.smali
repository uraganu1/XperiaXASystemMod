.class public Lcom/mediatek/settings/ext/DefaultSmsPreferenceExt;
.super Ljava/lang/Object;
.source "DefaultSmsPreferenceExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/ISmsPreferenceExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canSetSummary()Z
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public createBroadcastReceiver(Landroid/content/Context;Landroid/preference/ListPreference;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listPreference"    # Landroid/preference/ListPreference;

    .prologue
    .line 12
    return-void
.end method

.method public deregisterBroadcastReceiver(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    return-void
.end method

.method public getBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 14
    const/4 v0, 0x1

    return v0
.end method
