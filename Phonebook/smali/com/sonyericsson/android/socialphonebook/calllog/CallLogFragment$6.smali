.class Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$6;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->startDeleteFilterCallogThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

.field final synthetic val$selection:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;
    .param p2, "val$selection"    # Ljava/lang/String;

    .prologue
    .line 1340
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$6;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$6;->val$selection:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1344
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$6;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get5(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1345
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$6;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get5(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$6;->val$selection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->deleteBySelection(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1352
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$6;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1353
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$6;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->startAsyncRequery()V

    .line 1342
    :cond_1
    return-void

    .line 1347
    :catch_0
    move-exception v0

    .line 1348
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to delete all call log "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
