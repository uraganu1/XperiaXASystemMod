.class public Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;
.super Lcom/sonyericsson/android/socialphonebook/vilte/AbstractViltePlugin;
.source "VerizonViltePlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin$1;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_vilte_VideoCallEntityTypeSwitchesValues:[I = null

.field private static final REFRESH_CAPABILITY_ACTION:Ljava/lang/String; = "com.sonymobile.intent.action.imspresence.REFRESH"

.field private static final REFRESH_CAPABILITY_EXTRA_KEY:Ljava/lang/String; = "contacts"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$ResolverCallback;

.field private mChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContentHelper:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->mChangeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;)Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->mContentHelper:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_android_socialphonebook_vilte_VideoCallEntityTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->-com_sonyericsson_android_socialphonebook_vilte_VideoCallEntityTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->-com_sonyericsson_android_socialphonebook_vilte_VideoCallEntityTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->values()[Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->CALL_LOG_CONTEXT_MENU:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->CALL_LOG_DETAIL:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->CALL_LOG_LIST:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->DIALPAD_FRAGMENT:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->QUICK_CONTACT:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->-com_sonyericsson_android_socialphonebook_vilte_VideoCallEntityTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->TAG:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/vilte/AbstractViltePlugin;-><init>(Landroid/content/Context;)V

    .line 169
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin$1;-><init>(Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->mCallback:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$ResolverCallback;

    .line 43
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->mCallback:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$ResolverCallback;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$ResolverCallback;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->mContentHelper:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->mChangeListeners:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method private getVideoCallVisibility()Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->isVilteSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v1

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->mContentHelper:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->getContentStatus()Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;

    move-result-object v0

    .line 134
    .local v0, "status":Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;
    iget-boolean v1, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isAirplaneModeEnabled:Z

    if-eqz v1, :cond_1

    .line 135
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->DISABLED:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v1

    .line 137
    :cond_1
    iget-boolean v1, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isTtyModeEnabled:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isMobileDataEnabled:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isVolteEnabled:Z

    if-eqz v1, :cond_2

    .line 138
    iget-boolean v1, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isVilteEnabled:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isImsVopsEnabled:Z

    if-eqz v1, :cond_2

    .line 141
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->NORMAL:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v1

    .line 139
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->LIMITED:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v1
.end method

.method private getVisibilityForNumber(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->mContentHelper:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->getNumberCapability(Ljava/lang/String;)Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v0

    .line 116
    .local v0, "capabilities":Lcom/gsma/services/rcs/capability/Capabilities;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gsma/services/rcs/capability/Capabilities;->isIPVideoCallSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->getVideoCallVisibility()Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    move-result-object v1

    .line 121
    .local v1, "visibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    :goto_0
    return-object v1

    .line 119
    .end local v1    # "visibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    .restart local v1    # "visibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->isVilteSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->mContentHelper:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->isBindCalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->mContentHelper:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->registerCallStateObserver()V

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->mContentHelper:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->bindService()V

    goto :goto_0
.end method

.method public getContactDetailOptionMenuRefreshVisibility(Ljava/util/Set;)Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "numbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->isVilteSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->mContentHelper:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->getContentStatus()Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isAirplaneModeEnabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    .line 54
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->DISABLED:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v0

    .line 53
    :cond_2
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    .line 52
    if-nez v0, :cond_1

    .line 56
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->NORMAL:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v0
.end method

.method public getMyselfSettingsVisibility()Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->isVilteSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v1

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->mContentHelper:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->getContentStatus()Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;

    move-result-object v0

    .line 72
    .local v0, "status":Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;
    iget-boolean v1, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isImsVopsEnabled:Z

    if-eqz v1, :cond_1

    .line 73
    iget-boolean v1, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isCallStateIdle:Z

    if-eqz v1, :cond_1

    .line 74
    iget-boolean v1, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isAirplaneModeEnabled:Z

    .line 72
    if-eqz v1, :cond_2

    .line 75
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->DISABLED:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v1

    .line 77
    :cond_2
    iget-boolean v1, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isTtyModeEnabled:Z

    if-nez v1, :cond_3

    .line 78
    iget-boolean v1, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isMobileDataEnabled:Z

    if-eqz v1, :cond_3

    .line 79
    iget-boolean v1, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isVolteEnabled:Z

    if-eqz v1, :cond_3

    .line 82
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->NORMAL:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v1

    .line 80
    :cond_3
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->LIMITED:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v1
.end method

.method public getVideoCallEntityVisibility(Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;Ljava/lang/String;Z)Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .locals 4
    .param p1, "type"    # Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "isContactNumber"    # Z

    .prologue
    .line 93
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVideoCallEntityVisibility() isVilteSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->isVilteSupported()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 94
    const-string/jumbo v3, ", isContactNumber: "

    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 94
    const-string/jumbo v3, ", for number:"

    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->isVilteSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 98
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    .line 99
    .local v0, "visibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->-getcom_sonyericsson_android_socialphonebook_vilte_VideoCallEntityTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 108
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/vilte/UnsupportedEntityException;

    invoke-direct {v1, v0}, Lcom/sonyericsson/android/socialphonebook/vilte/UnsupportedEntityException;-><init>(Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;)V

    throw v1

    .line 96
    .end local v0    # "visibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v1

    .line 105
    .restart local v0    # "visibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->getVisibilityForNumber(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    move-result-object v0

    .line 110
    return-object v0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getVideoCallFilterVisibility()Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->isVilteSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->NORMAL:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    goto :goto_0
.end method

.method public getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getSimPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getVideoCallIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCallVisibility(Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;)Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .locals 1
    .param p1, "type"    # Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->getVideoCallVisibility()Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    move-result-object v0

    return-object v0
.end method

.method public isVideoCallingGroupSupported()Z
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public isVilteEnabled()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->mContentHelper:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->getContentStatus()Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isVilteEnabled:Z

    return v0
.end method

.method public isVilteSupported()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->mContentHelper:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->getContentStatus()Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isVilteProvisioned:Z

    return v0
.end method

.method public onApplicationCreate()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->mContentHelper:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->registerContentObserver()V

    .line 145
    return-void
.end method

.method public refreshCapability(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.intent.action.imspresence.REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "refreshIntent":Landroid/content/Intent;
    const-string/jumbo v1, "contacts"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method public registerForVideoCallEntityStatus(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "numbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->mContentHelper:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->registerNumbersForCapabilities(Ljava/util/Set;)V

    .line 165
    return-void
.end method

.method public removeListener(Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->mContentHelper:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->mContentHelper:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->unregisterCallStateObserver()V

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->mContentHelper:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->unbindService()V

    .line 212
    :cond_0
    return-void
.end method

.method public setVilteEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;->mContentHelper:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->enableVilte(Z)V

    .line 160
    return-void
.end method
