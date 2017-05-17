.class Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$FutuerTaskCallable;
.super Ljava/lang/Object;
.source "SyncCallStatusManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FutuerTaskCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$FutuerTaskCallable;->this$0:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$FutuerTaskCallable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$FutuerTaskCallable;-><init>(Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$FutuerTaskCallable;->call()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 4

    .prologue
    .line 148
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 150
    .local v1, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager$FutuerTaskCallable;->this$0:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->-wrap0(Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-object v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 153
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Error while performing caching for sync call status."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
