.class Lcom/sonymobile/rcs/service/RcsCoreService$1;
.super Ljava/lang/Thread;
.source "RcsCoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/service/RcsCoreService;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/service/RcsCoreService;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/service/RcsCoreService;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/sonymobile/rcs/service/RcsCoreService$1;->this$0:Lcom/sonymobile/rcs/service/RcsCoreService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService$1;->this$0:Lcom/sonymobile/rcs/service/RcsCoreService;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/RcsCoreService;->stopCore()V

    .line 262
    return-void
.end method
