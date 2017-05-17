.class public Lcom/sonyericsson/conversations/ui/DefaultSmsAppPreference;
.super Landroid/preference/Preference;
.source "DefaultSmsAppPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method


# virtual methods
.method refreshTitleAndSummary(Lcom/sonyericsson/conversations/settings/SettingsManager;)V
    .locals 2
    .param p1, "settingsManager"    # Lcom/sonyericsson/conversations/settings/SettingsManager;

    .prologue
    .line 33
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v0

    .line 34
    .local v0, "isDefaultSmsPackage":Z
    if-eqz v0, :cond_0

    .line 35
    const v1, 0x7f0b00f6

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/DefaultSmsAppPreference;->setSummary(I)V

    .line 32
    :goto_0
    return-void

    .line 37
    :cond_0
    const v1, 0x7f0b00f5

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/DefaultSmsAppPreference;->setSummary(I)V

    goto :goto_0
.end method
