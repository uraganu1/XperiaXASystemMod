.class Lcom/sonymobile/jms/intent/RcsIntentProcessor$2;
.super Ljava/lang/Object;
.source "RcsIntentProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/jms/intent/RcsIntentProcessor;->tryToProcessPushedRcsIntents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/jms/intent/RcsIntentProcessor;


# direct methods
.method constructor <init>(Lcom/sonymobile/jms/intent/RcsIntentProcessor;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor$2;->this$0:Lcom/sonymobile/jms/intent/RcsIntentProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/jms/intent/RcsIntentProcessor$2;->this$0:Lcom/sonymobile/jms/intent/RcsIntentProcessor;

    # invokes: Lcom/sonymobile/jms/intent/RcsIntentProcessor;->tryToProcessRcsIntents()V
    invoke-static {v1}, Lcom/sonymobile/jms/intent/RcsIntentProcessor;->access$100(Lcom/sonymobile/jms/intent/RcsIntentProcessor;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "Failed to process rcs intents!"

    .line 457
    invoke-static {v1, v0}, Lcom/sonymobile/jms/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
