.class Lcom/sonymobile/jms/intent/RcsIntentProcessor$1;
.super Ljava/lang/Object;
.source "RcsIntentProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/jms/intent/RcsIntentProcessor;->pushRcsIntentForProcessing(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/jms/intent/RcsIntentProcessor;

.field final synthetic val$rcsIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sonymobile/jms/intent/RcsIntentProcessor;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor$1;->this$0:Lcom/sonymobile/jms/intent/RcsIntentProcessor;

    iput-object p2, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor$1;->val$rcsIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 441
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor$1;->this$0:Lcom/sonymobile/jms/intent/RcsIntentProcessor;

    # getter for: Lcom/sonymobile/jms/intent/RcsIntentProcessor;->mRcsIntentsPendingProcessing:Ljava/util/List;
    invoke-static {v1}, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->access$000(Lcom/sonymobile/jms/intent/RcsIntentProcessor;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor$1;->val$rcsIntent:Landroid/content/Intent;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v1, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor$1;->this$0:Lcom/sonymobile/jms/intent/RcsIntentProcessor;

    # invokes: Lcom/sonymobile/jms/intent/RcsIntentProcessor;->tryToProcessRcsIntents()V
    invoke-static {v1}, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->access$100(Lcom/sonymobile/jms/intent/RcsIntentProcessor;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "Failed to process rcs intents!"

    .line 444
    invoke-static {v1, v0}, Lcom/sonymobile/jms/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
