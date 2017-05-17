.class public Lcom/android/incallui/InCallCsRedialHandler;
.super Ljava/lang/Object;
.source "InCallCsRedialHandler.java"

# interfaces
.implements Lcom/android/incallui/CallList$Listener;


# static fields
.field private static sInCallCsRedialHandler:Lcom/android/incallui/InCallCsRedialHandler;


# instance fields
.field private mAlert:Landroid/app/AlertDialog;

.field private mCallList:Lcom/android/incallui/CallList;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mCallList:Lcom/android/incallui/CallList;

    .line 57
    iput-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mAlert:Landroid/app/AlertDialog;

    .line 62
    return-void
.end method

.method private checkForCsRetry(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 154
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/InCallCsRedialHandler;
    .locals 2

    .prologue
    const-class v1, Lcom/android/incallui/InCallCsRedialHandler;

    monitor-enter v1

    .line 127
    :try_start_0
    sget-object v0, Lcom/android/incallui/InCallCsRedialHandler;->sInCallCsRedialHandler:Lcom/android/incallui/InCallCsRedialHandler;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/android/incallui/InCallCsRedialHandler;

    invoke-direct {v0}, Lcom/android/incallui/InCallCsRedialHandler;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallCsRedialHandler;->sInCallCsRedialHandler:Lcom/android/incallui/InCallCsRedialHandler;

    .line 130
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallCsRedialHandler;->sInCallCsRedialHandler:Lcom/android/incallui/InCallCsRedialHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isCsRetryDialogShowing()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismissPendingDialogs()V
    .locals 1

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/android/incallui/InCallCsRedialHandler;->isCsRetryDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mAlert:Landroid/app/AlertDialog;

    .line 250
    :cond_0
    return-void
.end method

.method public hasPendingDialogs()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 0
    .param p1, "list"    # Lcom/android/incallui/CallList;

    .prologue
    .line 101
    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 119
    const-string/jumbo v0, "onDisconnect"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallCsRedialHandler;->checkForCsRetry(Lcom/android/incallui/Call;)V

    .line 118
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 92
    return-void
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 110
    return-void
.end method

.method public setUp(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/incallui/InCallCsRedialHandler;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mCallList:Lcom/android/incallui/CallList;

    .line 72
    iget-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    .line 69
    return-void
.end method

.method public tearDown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    iput-object v1, p0, Lcom/android/incallui/InCallCsRedialHandler;->mContext:Landroid/content/Context;

    .line 81
    iget-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    .line 83
    iput-object v1, p0, Lcom/android/incallui/InCallCsRedialHandler;->mCallList:Lcom/android/incallui/CallList;

    .line 79
    :cond_0
    return-void
.end method
