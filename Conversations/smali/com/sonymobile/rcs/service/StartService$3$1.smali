.class Lcom/sonymobile/rcs/service/StartService$3$1;
.super Ljava/lang/Thread;
.source "StartService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/service/StartService$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/rcs/service/StartService$3;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/service/StartService$3;)V
    .locals 0

    .prologue
    .line 761
    iput-object p1, p0, Lcom/sonymobile/rcs/service/StartService$3$1;->this$1:Lcom/sonymobile/rcs/service/StartService$3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/sonymobile/rcs/service/StartService$3$1;->this$1:Lcom/sonymobile/rcs/service/StartService$3;

    iget-object v0, v0, Lcom/sonymobile/rcs/service/StartService$3;->this$0:Lcom/sonymobile/rcs/service/StartService;

    # invokes: Lcom/sonymobile/rcs/service/StartService;->checkCurrentAccount()V
    invoke-static {v0}, Lcom/sonymobile/rcs/service/StartService;->access$100(Lcom/sonymobile/rcs/service/StartService;)V

    .line 764
    return-void
.end method
