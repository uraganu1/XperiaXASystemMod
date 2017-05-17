.class Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService$1;
.super Ljava/lang/Object;
.source "RichcallService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->abortAllSessions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 608
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->getSessions()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 615
    return-void

    .line 609
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    .line 610
    .local v1, "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->access$000(Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 613
    :goto_1
    invoke-virtual {v1, v5}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->abortSession(I)V

    goto :goto_0

    .line 611
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;

    # getter for: Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->access$000(Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Abort pending session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getSessionID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method
