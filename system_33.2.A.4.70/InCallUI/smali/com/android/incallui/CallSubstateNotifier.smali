.class public Lcom/android/incallui/CallSubstateNotifier;
.super Ljava/lang/Object;
.source "CallSubstateNotifier.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;


# static fields
.field private static sCallSubstateNotifier:Lcom/android/incallui/CallSubstateNotifier;


# instance fields
.field private final mCallSubstateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/InCallSubstateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/android/incallui/CallSubstateNotifier;->mCallSubstateListeners:Ljava/util/List;

    .line 90
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/CallSubstateNotifier;
    .locals 2

    .prologue
    const-class v1, Lcom/android/incallui/CallSubstateNotifier;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Lcom/android/incallui/CallSubstateNotifier;->sCallSubstateNotifier:Lcom/android/incallui/CallSubstateNotifier;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/android/incallui/CallSubstateNotifier;

    invoke-direct {v0}, Lcom/android/incallui/CallSubstateNotifier;-><init>()V

    sput-object v0, Lcom/android/incallui/CallSubstateNotifier;->sCallSubstateNotifier:Lcom/android/incallui/CallSubstateNotifier;

    .line 62
    :cond_0
    sget-object v0, Lcom/android/incallui/CallSubstateNotifier;->sCallSubstateNotifier:Lcom/android/incallui/CallSubstateNotifier;
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
.method public addListener(Lcom/android/incallui/InCallSubstateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallSubstateListener;

    .prologue
    .line 70
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/android/incallui/CallSubstateNotifier;->mCallSubstateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "details"    # Landroid/telecom/Call$Details;

    .prologue
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDetailsChanged - call: "

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

    .line 101
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 99
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    .local v0, "extras":Landroid/os/Bundle;
    goto :goto_0
.end method

.method public removeListener(Lcom/android/incallui/InCallSubstateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallSubstateListener;

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/incallui/CallSubstateNotifier;->mCallSubstateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 79
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string/jumbo v0, "Can\'t remove null listener"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
