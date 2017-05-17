.class Lcom/sonymobile/rcs/core/ims/ImsModule$1;
.super Ljava/lang/Object;
.source "ImsModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/core/ims/ImsModule;->stopImsServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/ImsModule;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/ImsModule$1;->this$0:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 310
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/ImsModule$1;->this$0:Lcom/sonymobile/rcs/core/ims/ImsModule;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->abortAllSessions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/ImsModule$1;->this$0:Lcom/sonymobile/rcs/core/ims/ImsModule;

    # getter for: Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->access$000(Lcom/sonymobile/rcs/core/ims/ImsModule;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/ImsModule$1;->this$0:Lcom/sonymobile/rcs/core/ims/ImsModule;

    # getter for: Lcom/sonymobile/rcs/core/ims/ImsModule;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->access$000(Lcom/sonymobile/rcs/core/ims/ImsModule;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v1

    const-string/jumbo v2, "Aborting all sessions failed"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
