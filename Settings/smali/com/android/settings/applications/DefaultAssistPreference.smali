.class public Lcom/android/settings/applications/DefaultAssistPreference;
.super Lcom/android/settings/AppListPreferenceWithSettings;
.source "DefaultAssistPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/DefaultAssistPreference$Info;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private final mAvailableAssistants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/DefaultAssistPreference$Info;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/DefaultAssistPreference;->TAG:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/AppListPreferenceWithSettings;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setShowItemNone(Z)V

    .line 52
    const v0, 0x7f0b0b45

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setDialogTitle(I)V

    .line 53
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 49
    return-void
.end method

.method private addAssistActivities()V
    .locals 9

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 169
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.ASSIST"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    const/high16 v5, 0x10000

    .line 168
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 171
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 172
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 173
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    new-instance v5, Lcom/android/settings/applications/DefaultAssistPreference$Info;

    .line 174
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 175
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 174
    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-direct {v5, v6}, Lcom/android/settings/applications/DefaultAssistPreference$Info;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method

.method private addAssistServices()V
    .locals 10

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 145
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.service.voice.VoiceInteractionService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    const/16 v6, 0x80

    .line 144
    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 147
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 148
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 150
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/service/voice/VoiceInteractionServiceInfo;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v4, v1, v5}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    .line 151
    .local v4, "voiceInteractionServiceInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    invoke-virtual {v4}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result v5

    if-nez v5, :cond_1

    .line 147
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v5, v6}, Lcom/mediatek/settings/inputmethod/InputMethodExts;->isAssistServiceSupport(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 156
    iget-object v5, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    new-instance v6, Lcom/android/settings/applications/DefaultAssistPreference$Info;

    .line 157
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 158
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 157
    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-direct {v6, v7, v4}, Lcom/android/settings/applications/DefaultAssistPreference$Info;-><init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 141
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "voiceInteractionServiceInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_2
    return-void
.end method

.method private findAssistantByPackageName(Ljava/lang/String;)Lcom/android/settings/applications/DefaultAssistPreference$Info;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/DefaultAssistPreference$Info;

    .line 134
    .local v1, "info":Lcom/android/settings/applications/DefaultAssistPreference$Info;
    iget-object v2, v1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    return-object v1

    .line 132
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "info":Lcom/android/settings/applications/DefaultAssistPreference$Info;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getDefaultRecognizer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 120
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.speech.RecognitionService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    const/16 v3, 0x80

    .line 119
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 122
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_1

    .line 123
    :cond_0
    sget-object v1, Lcom/android/settings/applications/DefaultAssistPreference;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to resolve default voice recognition service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string/jumbo v1, ""

    return-object v1

    .line 127
    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 128
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 127
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setAssistActivity(Lcom/android/settings/applications/DefaultAssistPreference$Info;)V
    .locals 3
    .param p1, "activityInfo"    # Lcom/android/settings/applications/DefaultAssistPreference$Info;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 108
    const-string/jumbo v1, "assistant"

    iget-object v2, p1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 110
    const-string/jumbo v1, "voice_interaction_service"

    const-string/jumbo v2, ""

    .line 109
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 112
    const-string/jumbo v1, "voice_recognition_service"

    invoke-direct {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getDefaultRecognizer()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setSettingsComponent(Landroid/content/ComponentName;)V

    .line 106
    return-void
.end method

.method private setAssistNone()V
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 74
    const-string/jumbo v1, "assistant"

    const-string/jumbo v2, ""

    .line 73
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 76
    const-string/jumbo v1, "voice_interaction_service"

    const-string/jumbo v2, ""

    .line 75
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 78
    const-string/jumbo v1, "voice_recognition_service"

    invoke-direct {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getDefaultRecognizer()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0b44

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setSettingsComponent(Landroid/content/ComponentName;)V

    .line 72
    return-void
.end method

.method private setAssistService(Lcom/android/settings/applications/DefaultAssistPreference$Info;)V
    .locals 7
    .param p1, "serviceInfo"    # Lcom/android/settings/applications/DefaultAssistPreference$Info;

    .prologue
    const/4 v3, 0x0

    .line 85
    iget-object v4, p1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "serviceComponentName":Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    .line 87
    iget-object v5, p1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 88
    iget-object v6, p1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->voiceInteractionServiceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v6}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v6

    .line 86
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "serviceRecognizerName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 92
    const-string/jumbo v5, "assistant"

    .line 91
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 94
    const-string/jumbo v5, "voice_interaction_service"

    .line 93
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 96
    const-string/jumbo v5, "voice_recognition_service"

    .line 95
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/DefaultAssistPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v4, p1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->voiceInteractionServiceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v4}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "settingsActivity":Ljava/lang/String;
    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/DefaultAssistPreference;->setSettingsComponent(Landroid/content/ComponentName;)V

    .line 84
    return-void

    .line 103
    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentAssist()Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/applications/DefaultAssistPreference;->findAssistantByPackageName(Ljava/lang/String;)Lcom/android/settings/applications/DefaultAssistPreference$Info;

    move-result-object v0

    .line 59
    .local v0, "info":Lcom/android/settings/applications/DefaultAssistPreference$Info;
    if-nez v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->setAssistNone()V

    .line 61
    return v2

    .line 64
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/applications/DefaultAssistPreference$Info;->isVoiceInteractionService()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    invoke-direct {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setAssistService(Lcom/android/settings/applications/DefaultAssistPreference$Info;)V

    .line 69
    :goto_0
    return v2

    .line 67
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setAssistActivity(Lcom/android/settings/applications/DefaultAssistPreference$Info;)V

    goto :goto_0
.end method

.method public refreshAssistApps()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 184
    iget-object v4, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 185
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->addAssistServices()V

    .line 186
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->addAssistActivities()V

    .line 188
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 190
    iget-object v4, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/DefaultAssistPreference$Info;

    iget-object v4, v4, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 198
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    .line 199
    .local v0, "currentAssist":Landroid/content/ComponentName;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    .line 200
    if-nez v0, :cond_2

    .line 199
    :goto_2
    invoke-virtual {p0, v4, v5}, Lcom/android/settings/applications/DefaultAssistPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 183
    return-void

    .line 200
    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method
