.class Lgov2/nist/javax2/sip/parser/Pipeline$MyTimer;
.super Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;
.source "Pipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov2/nist/javax2/sip/parser/Pipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTimer"
.end annotation


# instance fields
.field private isCancelled:Z

.field pipeline:Lgov2/nist/javax2/sip/parser/Pipeline;

.field final synthetic this$0:Lgov2/nist/javax2/sip/parser/Pipeline;


# direct methods
.method protected constructor <init>(Lgov2/nist/javax2/sip/parser/Pipeline;Lgov2/nist/javax2/sip/parser/Pipeline;)V
    .locals 0
    .param p2, "pipeline"    # Lgov2/nist/javax2/sip/parser/Pipeline;

    .prologue
    .line 63
    iput-object p1, p0, Lgov2/nist/javax2/sip/parser/Pipeline$MyTimer;->this$0:Lgov2/nist/javax2/sip/parser/Pipeline;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;-><init>()V

    .line 64
    iput-object p2, p0, Lgov2/nist/javax2/sip/parser/Pipeline$MyTimer;->pipeline:Lgov2/nist/javax2/sip/parser/Pipeline;

    .line 65
    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;->cancel()Z

    move-result v0

    .line 79
    .local v0, "retval":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgov2/nist/javax2/sip/parser/Pipeline$MyTimer;->isCancelled:Z

    .line 80
    return v0
.end method

.method protected runTask()V
    .locals 2

    .prologue
    .line 68
    iget-boolean v1, p0, Lgov2/nist/javax2/sip/parser/Pipeline$MyTimer;->isCancelled:Z

    if-nez v1, :cond_0

    .line 71
    :try_start_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/parser/Pipeline$MyTimer;->pipeline:Lgov2/nist/javax2/sip/parser/Pipeline;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/parser/Pipeline;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 68
    :cond_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 73
    .local v0, "ex":Ljava/io/IOException;
    invoke-static {v0}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
