.class public Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;
.super Ljava/lang/Object;
.source "StaminaControllerImpl.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/policy/StaminaController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl$1;
    }
.end annotation


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mSettingsChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->staminaSettingsChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl$1;-><init>(Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->mContentObserver:Landroid/database/ContentObserver;

    .line 30
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->mContext:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 32
    sget-object v1, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->CONTENT_URI_STAMINA_ACTIVATION_STATE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 31
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 29
    return-void
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 81
    sget-object v1, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->CONTENT_URI_STAMINA_ACTIVATION_STATE:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 80
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 82
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 83
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 84
    const/4 v0, 0x1

    return v0

    .line 86
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isStaminaActivated(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 52
    const/4 v7, 0x0

    .line 53
    .local v7, "result":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 54
    sget-object v1, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->CONTENT_URI_STAMINA_ACTIVATED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 53
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 55
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 57
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 58
    const-string/jumbo v0, "activated"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 60
    .local v7, "result":Z
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 63
    .end local v7    # "result":Z
    :cond_0
    return v7

    .line 59
    .local v7, "result":Z
    :catchall_0
    move-exception v0

    .line 60
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 59
    throw v0
.end method

.method private staminaSettingsChanged()V
    .locals 4

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->getStaminaActivationState()I

    move-result v2

    .line 107
    .local v2, "state":I
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;

    .line 108
    .local v0, "cb":Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;
    invoke-interface {v0, v2}, Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;->onStaminaSettingsChanged(I)V

    goto :goto_0

    .line 105
    .end local v0    # "cb":Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;
    :cond_0
    return-void
.end method

.method private staminaSettingsChanged(Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->getStaminaActivationState()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;->onStaminaSettingsChanged(I)V

    .line 112
    return-void
.end method


# virtual methods
.method public addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->staminaSettingsChanged(Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;)V

    .line 119
    return-void
.end method

.method public getStaminaActivationState()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 90
    const/4 v7, 0x0

    .line 91
    .local v7, "state":I
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 92
    sget-object v1, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->CONTENT_URI_STAMINA_ACTIVATION_STATE:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 91
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 93
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 95
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 97
    const-string/jumbo v0, "value"

    .line 96
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_0
    return v7

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 98
    throw v0
.end method

.method public isStaminaEnabled()Z
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->getStaminaActivationState()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 48
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public setStaminaActivationNextState()V
    .locals 7

    .prologue
    .line 68
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 69
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "from"

    const-string/jumbo v4, "stamina_quick_settings"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->CONTENT_URI_NEXT_STAMINA_ACTIVATION_STATE:Landroid/net/Uri;

    .line 71
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 70
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "StaminaControllerImpl"

    const-string/jumbo v4, "Could not change Stamina activation state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 72
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "StaminaControllerImpl"

    const-string/jumbo v4, "Could not change Stamina activation state"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
