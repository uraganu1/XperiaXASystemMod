.class Lcom/sonymobile/jms/environment/ImEnvironmentManager$3;
.super Ljava/lang/Object;
.source "ImEnvironmentManager.java"

# interfaces
.implements Lcom/sonymobile/rcs/service/api/client/ImsEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/jms/environment/ImEnvironmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/jms/environment/ImEnvironmentManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/jms/environment/ImEnvironmentManager;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager$3;->this$0:Lcom/sonymobile/jms/environment/ImEnvironmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleImsConnected()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager$3;->this$0:Lcom/sonymobile/jms/environment/ImEnvironmentManager;

    invoke-virtual {v0}, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->onPossibleApiConnectionStatusChange()V

    .line 115
    return-void
.end method

.method public handleImsDisconnected(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager$3;->this$0:Lcom/sonymobile/jms/environment/ImEnvironmentManager;

    invoke-virtual {v0}, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->onPossibleApiConnectionStatusChange()V

    .line 123
    return-void
.end method
