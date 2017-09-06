.class public Lcom/android/incallui/SessionModificationCauseNotifier;
.super Ljava/lang/Object;
.source "SessionModificationCauseNotifier.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;


# static fields
.field private static sSessionModificationCauseNotifier:Lcom/android/incallui/SessionModificationCauseNotifier;


# instance fields
.field private final mSessionModificationCauseListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/InCallSessionModificationCauseListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/android/incallui/SessionModificationCauseNotifier;->mSessionModificationCauseListeners:Ljava/util/List;

    .line 88
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/SessionModificationCauseNotifier;
    .locals 2

    .prologue
    const-class v1, Lcom/android/incallui/SessionModificationCauseNotifier;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/android/incallui/SessionModificationCauseNotifier;->sSessionModificationCauseNotifier:Lcom/android/incallui/SessionModificationCauseNotifier;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/android/incallui/SessionModificationCauseNotifier;

    invoke-direct {v0}, Lcom/android/incallui/SessionModificationCauseNotifier;-><init>()V

    sput-object v0, Lcom/android/incallui/SessionModificationCauseNotifier;->sSessionModificationCauseNotifier:Lcom/android/incallui/SessionModificationCauseNotifier;

    .line 60
    :cond_0
    sget-object v0, Lcom/android/incallui/SessionModificationCauseNotifier;->sSessionModificationCauseNotifier:Lcom/android/incallui/SessionModificationCauseNotifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/InCallSessionModificationCauseListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallSessionModificationCauseListener;

    .prologue
    .line 68
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/android/incallui/SessionModificationCauseNotifier;->mSessionModificationCauseListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "details"    # Landroid/telecom/Call$Details;

    .prologue
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDetailsChanged: - call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "details: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    :goto_0
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    .local v0, "extras":Landroid/os/Bundle;
    goto :goto_0
.end method

.method public removeListener(Lcom/android/incallui/InCallSessionModificationCauseListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallSessionModificationCauseListener;

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/incallui/SessionModificationCauseNotifier;->mSessionModificationCauseListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 77
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string/jumbo v0, "Can\'t remove null listener"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
