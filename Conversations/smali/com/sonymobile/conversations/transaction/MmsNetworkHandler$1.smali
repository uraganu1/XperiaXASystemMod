.class Lcom/sonymobile/conversations/transaction/MmsNetworkHandler$1;
.super Ljava/lang/Object;
.source "MmsNetworkHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;


# direct methods
.method constructor <init>(Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler$1;->this$0:Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler$1;->this$0:Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;

    invoke-virtual {v0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->stopUsingNetwork()V

    .line 55
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler$1;->this$0:Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;

    invoke-static {v0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->-wrap0(Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;)V

    .line 53
    return-void
.end method
