.class public Lcom/sonymobile/settings/preference/IntentPreference;
.super Landroid/preference/Preference;
.source "IntentPreference.java"

# interfaces
.implements Lcom/sonymobile/settings/preference/util/DependOn;


# instance fields
.field private final mChooserTitle:Ljava/lang/String;

.field private final mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mIntent:Landroid/content/Intent;

.field private mObserver:Landroid/database/ContentObserver;

.field private final mValueOfSettingsGlobal:Ljava/lang/String;

.field private final mValueOfSettingsSecure:Ljava/lang/String;

.field private final mValueOfSettingsSystem:Ljava/lang/String;

.field private final mValueOfSystemProperty:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/sonymobile/settings/preference/IntentPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/settings/preference/IntentPreference;->updateIntentPreference()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/settings/preference/IntentPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance v1, Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-direct {v1, p1, p2, p3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    .line 62
    sget-object v1, Lcom/android/settings/R$styleable;->IntentPreference:[I

    .line 61
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mChooserTitle:Ljava/lang/String;

    .line 65
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 64
    iput-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    sget-object v1, Lcom/android/settings/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSystemProperty:Ljava/lang/String;

    .line 70
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    .line 71
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    .line 72
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    .line 73
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    return-void
.end method

.method private updateIntentPreference()V
    .locals 6

    .prologue
    .line 163
    iget-object v4, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/IntentPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 165
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 167
    .local v1, "newValue":I
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSystemProperty:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 168
    iget-object v4, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSystemProperty:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 179
    :cond_0
    :goto_0
    if-ltz v1, :cond_1

    iget-object v4, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v4, v4

    if-gt v1, v4, :cond_1

    .line 180
    iget-object v4, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v4, v4, v1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "str":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 182
    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/preference/IntentPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 162
    .end local v1    # "newValue":I
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    return-void

    .line 169
    .restart local v1    # "newValue":I
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 170
    iget-object v4, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 171
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 172
    iget-object v4, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 173
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 174
    iget-object v4, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v4, "SomcPreferences"

    const-string/jumbo v5, "SettingNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method canRecycleLayout()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public dependOn()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/IntentPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/IntentPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mIntent:Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/preference/IntentPreference;->setIntent(Landroid/content/Intent;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/IntentPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, p0, v2}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->dependOn(Landroid/content/Context;Landroid/preference/Preference;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public getAfter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getAfter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBefore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getBefore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasResumeActions()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 120
    iget-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSystemProperty:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onClick()V
    .locals 5

    .prologue
    .line 195
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 196
    iget-object v2, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 197
    iget-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mIntent:Landroid/content/Intent;

    .line 198
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mChooserTitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mChooserTitle:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 202
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/IntentPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 203
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "SomcPreferences"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ActivityNotFoundException on preference "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/IntentPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 205
    const-string/jumbo v4, " for intent "

    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 205
    iget-object v4, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mIntent:Landroid/content/Intent;

    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/IntentPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 156
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonymobile/settings/preference/IntentPreference;->updateIntentPreference()V

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 129
    iget-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 135
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 136
    iget-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_1

    .line 137
    new-instance v1, Lcom/sonymobile/settings/preference/IntentPreference$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/settings/preference/IntentPreference$1;-><init>(Lcom/sonymobile/settings/preference/IntentPreference;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mObserver:Landroid/database/ContentObserver;

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/IntentPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 125
    :cond_2
    return-void

    .line 130
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 131
    iget-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 132
    .local v0, "uri":Landroid/net/Uri;
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 88
    return-void
.end method
