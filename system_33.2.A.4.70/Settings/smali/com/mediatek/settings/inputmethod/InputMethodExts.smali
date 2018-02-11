.class public Lcom/mediatek/settings/inputmethod/InputMethodExts;
.super Ljava/lang/Object;
.source "InputMethodExts.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsOnlyImeSettings:Z

.field private mVoiceCategory:Landroid/preference/PreferenceCategory;

.field private mVoiceControlIntent:Landroid/content/Intent;

.field private mVoiceUiPref:Landroid/preference/Preference;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/mediatek/settings/inputmethod/InputMethodExts;->getSettingsComponent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/preference/PreferenceCategory;Landroid/preference/PreferenceCategory;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isOnlyImeSettings"    # Z
    .param p3, "voiceCategory"    # Landroid/preference/PreferenceCategory;
    .param p4, "pointCategory"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;

    .line 51
    iput-boolean p2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mIsOnlyImeSettings:Z

    .line 52
    iput-object p3, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    .line 49
    return-void
.end method

.method private static displayVoiceWakeupAlert(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/Context;)V
    .locals 4
    .param p0, "positiveOnClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p1, "negativeOnClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 198
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0153

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 199
    const v3, 0x7f0b0154

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 199
    const/4 v3, 0x1

    .line 198
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 200
    const v3, 0x104000a

    .line 198
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 201
    const/high16 v3, 0x1040000

    .line 198
    invoke-virtual {v2, v3, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 202
    new-instance v3, Lcom/mediatek/settings/inputmethod/InputMethodExts$3;

    invoke-direct {v3, p1}, Lcom/mediatek/settings/inputmethod/InputMethodExts$3;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    .line 198
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 210
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 211
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 195
    return-void
.end method

.method public static displayVoiceWakeupAlert(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 165
    const-string/jumbo v1, "com.mediatek.voicecommand"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    return v4

    .line 168
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 169
    sget-object v2, Landroid/provider/Settings$System;->VOICE_WAKEUP_COMMAND_STATUS:Ljava/lang/String;

    .line 168
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 170
    .local v0, "cmdStatus":I
    const-string/jumbo v1, "InputMethodAndLanguageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DisplayVoiceWakeupAlert cmdStatus :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    if-nez v0, :cond_1

    .line 172
    new-instance v1, Lcom/mediatek/settings/inputmethod/InputMethodExts$1;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/settings/inputmethod/InputMethodExts$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 180
    new-instance v2, Lcom/mediatek/settings/inputmethod/InputMethodExts$2;

    invoke-direct {v2}, Lcom/mediatek/settings/inputmethod/InputMethodExts$2;-><init>()V

    .line 172
    invoke-static {v1, v2, p0}, Lcom/mediatek/settings/inputmethod/InputMethodExts;->displayVoiceWakeupAlert(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/Context;)V

    .line 187
    const/4 v1, 0x1

    return v1

    .line 189
    :cond_1
    return v4
.end method

.method private static getSettingsComponent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 217
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    .line 218
    const-string/jumbo v6, "android.service.voice.VoiceInteractionService"

    .line 217
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    const/16 v6, 0x80

    .line 217
    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 219
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 220
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 222
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/service/voice/VoiceInteractionServiceInfo;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v4, v1, v5}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    .line 223
    .local v4, "voiceInteractionServiceInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 224
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 225
    invoke-virtual {v4}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v7

    .line 224
    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 219
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "voiceInteractionServiceInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_1
    const/4 v5, 0x0

    return-object v5
.end method

.method public static isAssistServiceSupport(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 132
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "key":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/mediatek/settings/inputmethod/InputMethodExts;->isVoiceInteractionServiceSupport(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public static isVoiceInteractionServiceSupport(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "infoKey"    # Ljava/lang/String;

    .prologue
    .line 139
    const-string/jumbo v0, "com.mediatek.voicecommand/.service.VoiceWakeupInteractionService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {p0}, Lcom/mediatek/settings/inputmethod/InputMethodExts;->isWakeupSupport(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 142
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isVoiceRecognitionServiceSupport(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "infoKey"    # Ljava/lang/String;

    .prologue
    .line 148
    const-string/jumbo v0, "com.mediatek.voicecommand/.service.VoiceWakeupRecognitionService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x1

    return v0

    .line 151
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isWakeupSupport(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 118
    const-string/jumbo v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 119
    .local v0, "am":Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 120
    const-string/jumbo v2, "@M_InputMethodAndLanguageSettings"

    const-string/jumbo v3, "isWakeupSupport get audio service is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v4

    .line 123
    :cond_0
    const-string/jumbo v2, "MTK_VOW_SUPPORT"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "state":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 125
    const-string/jumbo v2, "MTK_VOW_SUPPORT=true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 127
    :cond_1
    return v4
.end method


# virtual methods
.method public initExtendsItems()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    .line 59
    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    const-string/jumbo v1, "voice_ui"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;

    const v2, 0x7f0b013b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 64
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mIsOnlyImeSettings:Z

    if-nez v0, :cond_2

    .line 65
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_VOICE_UI_SUPPORT:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/settings/inputmethod/InputMethodExts;->isWakeupSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    :cond_1
    :goto_0
    return-void

    .line 66
    :cond_2
    const-string/jumbo v0, "@M_InputMethodAndLanguageSettings"

    const-string/jumbo v1, "going to remove voice ui feature "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    .line 68
    const-string/jumbo v0, "@M_InputMethodAndLanguageSettings"

    const-string/jumbo v1, "removed done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onClickExtendsItems(Ljava/lang/String;)V
    .locals 2
    .param p1, "preferKey"    # Ljava/lang/String;

    .prologue
    .line 105
    const-string/jumbo v0, "voice_ui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceControlIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    :cond_0
    return-void
.end method

.method public resumeExtendsItems()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.mediatek.voicecommand.VOICE_CONTROL_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceControlIntent:Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceControlIntent:Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 81
    iget-object v2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceControlIntent:Landroid/content/Intent;

    .line 80
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 82
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 83
    :cond_0
    const-string/jumbo v1, "@M_InputMethodAndLanguageSettings"

    const-string/jumbo v2, "going to remove voice ui feature "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_1

    .line 85
    const-string/jumbo v1, "@M_InputMethodAndLanguageSettings"

    const-string/jumbo v2, "removed done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 76
    :cond_1
    :goto_0
    return-void

    .line 89
    :cond_2
    iget-boolean v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mIsOnlyImeSettings:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_VOICE_UI_SUPPORT:Z

    if-eqz v1, :cond_1

    .line 90
    const-string/jumbo v1, "@M_InputMethodAndLanguageSettings"

    const-string/jumbo v2, "going to add voice ui feature "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
