.class Lcom/android/systemui/doze/DozeService$4;
.super Lcom/android/systemui/doze/DozeService$ProximityCheck;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/DozeService;->requestPulse(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeService;

.field final synthetic val$nonBlocking:Z

.field final synthetic val$reason:I

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeService;Lcom/android/systemui/doze/DozeService;JIZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeService;
    .param p2, "this$0_1"    # Lcom/android/systemui/doze/DozeService;
    .param p3, "val$start"    # J
    .param p5, "val$reason"    # I
    .param p6, "val$nonBlocking"    # Z

    .prologue
    .line 233
    iput-object p2, p0, Lcom/android/systemui/doze/DozeService$4;->this$0:Lcom/android/systemui/doze/DozeService;

    iput-wide p3, p0, Lcom/android/systemui/doze/DozeService$4;->val$start:J

    iput p5, p0, Lcom/android/systemui/doze/DozeService$4;->val$reason:I

    iput-boolean p6, p0, Lcom/android/systemui/doze/DozeService$4;->val$nonBlocking:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/doze/DozeService$ProximityCheck;-><init>(Lcom/android/systemui/doze/DozeService;Lcom/android/systemui/doze/DozeService$ProximityCheck;)V

    return-void
.end method


# virtual methods
.method public onProximityResult(I)V
    .locals 7
    .param p1, "result"    # I

    .prologue
    .line 236
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    const/4 v2, 0x1

    .line 237
    .local v2, "isNear":Z
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 238
    .local v0, "end":J
    iget-object v3, p0, Lcom/android/systemui/doze/DozeService$4;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v3}, Lcom/android/systemui/doze/DozeService;->-get2(Lcom/android/systemui/doze/DozeService;)Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/systemui/doze/DozeService$4;->val$start:J

    sub-long v4, v0, v4

    iget v6, p0, Lcom/android/systemui/doze/DozeService$4;->val$reason:I

    invoke-static {v3, v2, v4, v5, v6}, Lcom/android/systemui/doze/DozeLog;->traceProximityResult(Landroid/content/Context;ZJI)V

    .line 239
    iget-boolean v3, p0, Lcom/android/systemui/doze/DozeService$4;->val$nonBlocking:Z

    if-eqz v3, :cond_1

    .line 241
    return-void

    .line 236
    .end local v0    # "end":J
    .end local v2    # "isNear":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "isNear":Z
    goto :goto_0

    .line 244
    .restart local v0    # "end":J
    :cond_1
    if-eqz v2, :cond_2

    .line 245
    iget-object v3, p0, Lcom/android/systemui/doze/DozeService$4;->this$0:Lcom/android/systemui/doze/DozeService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/systemui/doze/DozeService;->-set3(Lcom/android/systemui/doze/DozeService;Z)Z

    .line 246
    iget-object v3, p0, Lcom/android/systemui/doze/DozeService$4;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v3}, Lcom/android/systemui/doze/DozeService;->-get13(Lcom/android/systemui/doze/DozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 247
    return-void

    .line 251
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/doze/DozeService$4;->this$0:Lcom/android/systemui/doze/DozeService;

    iget v4, p0, Lcom/android/systemui/doze/DozeService$4;->val$reason:I

    invoke-static {v3, v4}, Lcom/android/systemui/doze/DozeService;->-wrap1(Lcom/android/systemui/doze/DozeService;I)V

    .line 235
    return-void
.end method
