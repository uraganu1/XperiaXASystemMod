.class public Lcom/android/incallui/PrimaryCallTracker;
.super Ljava/lang/Object;
.source "PrimaryCallTracker.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# instance fields
.field private mPrimaryCall:Lcom/android/incallui/Call;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isPrimaryCall(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/incallui/PrimaryCallTracker;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 3
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStateChange: oldState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " newState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 46
    const-string/jumbo v2, "callList ="

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, "primaryCall":Lcom/android/incallui/Call;
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_1

    .line 52
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 63
    .local v0, "primaryCall":Lcom/android/incallui/Call;
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/PrimaryCallTracker;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    iput-object v0, p0, Lcom/android/incallui/PrimaryCallTracker;->mPrimaryCall:Lcom/android/incallui/Call;

    .line 44
    :cond_0
    return-void

    .line 53
    .local v0, "primaryCall":Lcom/android/incallui/Call;
    :cond_1
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_2

    .line 54
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .local v0, "primaryCall":Lcom/android/incallui/Call;
    goto :goto_0

    .line 55
    .local v0, "primaryCall":Lcom/android/incallui/Call;
    :cond_2
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_3

    .line 56
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .local v0, "primaryCall":Lcom/android/incallui/Call;
    goto :goto_0

    .line 57
    .local v0, "primaryCall":Lcom/android/incallui/Call;
    :cond_3
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_4

    .line 58
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .local v0, "primaryCall":Lcom/android/incallui/Call;
    goto :goto_0

    .line 60
    .local v0, "primaryCall":Lcom/android/incallui/Call;
    :cond_4
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .local v0, "primaryCall":Lcom/android/incallui/Call;
    goto :goto_0
.end method
