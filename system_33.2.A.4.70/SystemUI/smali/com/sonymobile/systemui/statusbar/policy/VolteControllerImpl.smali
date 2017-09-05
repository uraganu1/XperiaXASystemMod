.class public Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;
.super Ljava/lang/Object;
.source "VolteControllerImpl.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/policy/VolteController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl$1;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mSettingsChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/systemui/statusbar/policy/VolteController$VolteSettingsChangeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;->volteSettingsChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "content://volte-enabled/volte"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;->CONTENT_URI:Landroid/net/Uri;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl$1;-><init>(Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;->mContentObserver:Landroid/database/ContentObserver;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    .line 53
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private volteSettingsChanged()V
    .locals 4

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;->isVolteEnabled()Z

    move-result v2

    .line 108
    .local v2, "isEnabled":Z
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/statusbar/policy/VolteController$VolteSettingsChangeCallback;

    .line 109
    .local v0, "cb":Lcom/sonymobile/systemui/statusbar/policy/VolteController$VolteSettingsChangeCallback;
    invoke-interface {v0, v2}, Lcom/sonymobile/systemui/statusbar/policy/VolteController$VolteSettingsChangeCallback;->onVolteSettingsChanged(Z)V

    goto :goto_0

    .line 106
    .end local v0    # "cb":Lcom/sonymobile/systemui/statusbar/policy/VolteController$VolteSettingsChangeCallback;
    :cond_0
    return-void
.end method

.method private volteSettingsChanged(Lcom/sonymobile/systemui/statusbar/policy/VolteController$VolteSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonymobile/systemui/statusbar/policy/VolteController$VolteSettingsChangeCallback;

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;->isVolteEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/sonymobile/systemui/statusbar/policy/VolteController$VolteSettingsChangeCallback;->onVolteSettingsChanged(Z)V

    .line 113
    return-void
.end method


# virtual methods
.method public addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/VolteController$VolteSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonymobile/systemui/statusbar/policy/VolteController$VolteSettingsChangeCallback;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;->volteSettingsChanged(Lcom/sonymobile/systemui/statusbar/policy/VolteController$VolteSettingsChangeCallback;)V

    .line 101
    return-void
.end method

.method public getState()I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 61
    const/4 v6, 0x0

    .line 62
    .local v6, "enabled":Z
    const/4 v8, 0x0

    .line 63
    .local v8, "state":I
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 64
    .local v7, "results":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 65
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 66
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 67
    const/4 v8, 0x1

    .line 69
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 71
    :cond_1
    return v8
.end method

.method public isVolteEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 57
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;->getState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerVolteContentObserver()V
    .locals 4

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 121
    return-void
.end method

.method public removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/VolteController$VolteSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonymobile/systemui/statusbar/policy/VolteController$VolteSettingsChangeCallback;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public setVolteEnabled(I)Z
    .locals 5
    .param p1, "enabled"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 78
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    :goto_0
    return v3

    .line 83
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 84
    .local v0, "mUpdateValues":Landroid/content/ContentValues;
    if-ne p1, v3, :cond_1

    .line 85
    const-string/jumbo v1, "VolteStatus"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :cond_1
    const-string/jumbo v1, "VolteStatus"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method public unregisterVolteContentObserver()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 125
    return-void
.end method
