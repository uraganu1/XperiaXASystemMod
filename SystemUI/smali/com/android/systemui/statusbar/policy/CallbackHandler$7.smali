.class Lcom/android/systemui/statusbar/policy/CallbackHandler$7;
.super Ljava/lang/Object;
.source "CallbackHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/CallbackHandler;->setMobileActivityIndicators(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field final synthetic val$activityIcon:I

.field final synthetic val$subId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/CallbackHandler;
    .param p2, "val$activityIcon"    # I
    .param p3, "val$subId"    # I

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iput p2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;->val$activityIcon:I

    iput p3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;->val$subId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 207
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->-get0(Lcom/android/systemui/statusbar/policy/CallbackHandler;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "signalCluster$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 208
    .local v0, "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    instance-of v2, v0, Lcom/sonymobile/systemui/statusbar/policy/SomcSignalCallback;

    if-eqz v2, :cond_0

    .line 209
    check-cast v0, Lcom/sonymobile/systemui/statusbar/policy/SomcSignalCallback;

    .end local v0    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    iget v2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;->val$activityIcon:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;->val$subId:I

    invoke-interface {v0, v2, v3}, Lcom/sonymobile/systemui/statusbar/policy/SomcSignalCallback;->setMobileActivityIndicators(II)V

    goto :goto_0

    .line 206
    :cond_1
    return-void
.end method
