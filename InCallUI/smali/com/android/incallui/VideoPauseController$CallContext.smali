.class Lcom/android/incallui/VideoPauseController$CallContext;
.super Ljava/lang/Object;
.source "VideoPauseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/VideoPauseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallContext"
.end annotation


# instance fields
.field private mCall:Lcom/android/incallui/Call;

.field private mState:I

.field private mVideoState:I

.field final synthetic this$0:Lcom/android/incallui/VideoPauseController;


# direct methods
.method public constructor <init>(Lcom/android/incallui/VideoPauseController;Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/incallui/VideoPauseController;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/incallui/VideoPauseController$CallContext;->this$0:Lcom/android/incallui/VideoPauseController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mState:I

    .line 56
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p0, p2}, Lcom/android/incallui/VideoPauseController$CallContext;->update(Lcom/android/incallui/Call;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mState:I

    return v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mVideoState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    const-string/jumbo v0, "CallContext {CallId=%s, State=%s, VideoState=%d}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 76
    iget-object v2, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mVideoState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 75
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 61
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    iput-object v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mCall:Lcom/android/incallui/Call;

    .line 62
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mState:I

    .line 63
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mVideoState:I

    .line 60
    return-void
.end method
