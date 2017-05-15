.class public Lcom/sonymobile/settings/preference/util/TwoStateUtil;
.super Ljava/lang/Object;
.source "TwoStateUtil.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private final mIsOrderedBroadcast:Z

.field private mObserver:Landroid/database/ContentObserver;

.field private mOrderedBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mPreference:Landroid/preference/TwoStatePreference;

.field private final mValueOfSettingsGlobal:Ljava/lang/String;

.field private final mValueOfSettingsSecure:Ljava/lang/String;

.field private final mValueOfSettingsSystem:Ljava/lang/String;

.field private final mValueOfSystemProperty:Ljava/lang/String;

.field private final mValueOnExtraStatusName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)Landroid/preference/TwoStatePreference;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOnExtraStatusName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->updateCheckBox()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/preference/TwoStatePreference;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "preference"    # Landroid/preference/TwoStatePreference;

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p4, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    .line 50
    sget-object v2, Lcom/android/settings/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSystemProperty:Ljava/lang/String;

    .line 52
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    .line 53
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    .line 54
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsGlobal:Ljava/lang/String;

    .line 56
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 55
    iput-boolean v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIsOrderedBroadcast:Z

    .line 57
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "statusName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .end local v1    # "statusName":Ljava/lang/String;
    :goto_0
    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOnExtraStatusName:Ljava/lang/String;

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    invoke-virtual {p4, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 47
    return-void

    .line 58
    .restart local v1    # "statusName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "android.intent.extra.RETURN_RESULT"

    goto :goto_0
.end method

.method private createOrderedBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/sonymobile/settings/preference/util/TwoStateUtil$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil$1;-><init>(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)V

    return-object v0
.end method

.method private onChecked(Z)V
    .locals 5
    .param p1, "newValue"    # Z

    .prologue
    .line 104
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 105
    .local v0, "context":Landroid/content/Context;
    if-eqz p1, :cond_4

    const/4 v1, 0x1

    .line 106
    .local v1, "newValueInt":I
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSystemProperty:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 107
    if-eqz p1, :cond_5

    const-string/jumbo v2, "1"

    .line 108
    .local v2, "newValueString":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSystemProperty:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .end local v2    # "newValueString":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 112
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    .line 111
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 114
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 116
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    .line 115
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 118
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 120
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsGlobal:Ljava/lang/String;

    .line 119
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    :cond_3
    return-void

    .line 105
    .end local v1    # "newValueInt":I
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "newValueInt":I
    goto :goto_0

    .line 107
    :cond_5
    const-string/jumbo v2, "0"

    .restart local v2    # "newValueString":Ljava/lang/String;
    goto :goto_1
.end method

.method private updateCheckBox()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 69
    iget-object v5, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    .local v0, "context":Landroid/content/Context;
    iget-object v5, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    .line 72
    .local v1, "newValue":Z
    iget-object v5, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSystemProperty:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 73
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSystemProperty:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 90
    .end local v1    # "newValue":Z
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    invoke-virtual {v3, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 68
    return-void

    .line 74
    .restart local v1    # "newValue":Z
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 76
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    .line 77
    if-eqz v1, :cond_2

    .line 76
    :goto_1
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 78
    .local v2, "value":I
    if-lez v2, :cond_3

    const/4 v1, 0x1

    .local v1, "newValue":Z
    goto :goto_0

    .end local v2    # "value":I
    .local v1, "newValue":Z
    :cond_2
    move v3, v4

    .line 77
    goto :goto_1

    .line 78
    .restart local v2    # "value":I
    :cond_3
    const/4 v1, 0x0

    .local v1, "newValue":Z
    goto :goto_0

    .line 79
    .end local v2    # "value":I
    .local v1, "newValue":Z
    :cond_4
    iget-object v5, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 81
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    .line 82
    if-eqz v1, :cond_5

    .line 81
    :goto_2
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 83
    .restart local v2    # "value":I
    if-lez v2, :cond_6

    const/4 v1, 0x1

    .local v1, "newValue":Z
    goto :goto_0

    .end local v2    # "value":I
    .local v1, "newValue":Z
    :cond_5
    move v3, v4

    .line 82
    goto :goto_2

    .line 83
    .restart local v2    # "value":I
    :cond_6
    const/4 v1, 0x0

    .local v1, "newValue":Z
    goto :goto_0

    .line 84
    .end local v2    # "value":I
    .local v1, "newValue":Z
    :cond_7
    iget-object v5, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsGlobal:Ljava/lang/String;

    .line 87
    if-eqz v1, :cond_8

    .line 86
    :goto_3
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 88
    .restart local v2    # "value":I
    if-lez v2, :cond_9

    const/4 v1, 0x1

    .local v1, "newValue":Z
    goto :goto_0

    .end local v2    # "value":I
    .local v1, "newValue":Z
    :cond_8
    move v3, v4

    .line 87
    goto :goto_3

    .line 88
    .restart local v2    # "value":I
    :cond_9
    const/4 v1, 0x0

    .local v1, "newValue":Z
    goto :goto_0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public hasResumeActions()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 155
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSystemProperty:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 162
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 231
    const/4 v8, 0x1

    .local v8, "doUpdate":Z
    move-object v9, p2

    .line 232
    check-cast v9, Ljava/lang/Boolean;

    .line 233
    .local v9, "newValueBool":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 235
    const/4 v8, 0x0

    .line 236
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 237
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v10, 0x1

    .line 238
    .local v10, "newValueInt":I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOnExtraStatusName:Ljava/lang/String;

    invoke-virtual {v1, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 241
    iget-boolean v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIsOrderedBroadcast:Z

    if-eqz v1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mOrderedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->createOrderedBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mOrderedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 247
    :cond_0
    new-instance v7, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v7, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 248
    .local v7, "initialExtras":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOnExtraStatusName:Ljava/lang/String;

    invoke-virtual {v7, v1, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    .line 250
    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mOrderedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 251
    iget-object v4, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 250
    const/4 v5, -0x1

    move-object v4, v2

    .line 249
    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 259
    .end local v0    # "context":Landroid/content/Context;
    .end local v7    # "initialExtras":Landroid/os/Bundle;
    .end local v10    # "newValueInt":I
    :goto_1
    return v8

    .line 237
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    const/4 v10, 0x0

    .restart local v10    # "newValueInt":I
    goto :goto_0

    .line 253
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 257
    .end local v0    # "context":Landroid/content/Context;
    .end local v10    # "newValueInt":I
    :cond_3
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->onChecked(Z)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 172
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroid/preference/TwoStatePreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 173
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 175
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->updateCheckBox()V

    .line 176
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 177
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 183
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 184
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_1

    .line 185
    new-instance v2, Lcom/sonymobile/settings/preference/util/TwoStateUtil$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/settings/preference/util/TwoStateUtil$2;-><init>(Lcom/sonymobile/settings/preference/util/TwoStateUtil;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mObserver:Landroid/database/ContentObserver;

    .line 199
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 171
    :cond_2
    return-void

    .line 178
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 179
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 180
    .local v1, "uri":Landroid/net/Uri;
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsGlobal:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    goto :goto_0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    .line 220
    return-void
.end method
