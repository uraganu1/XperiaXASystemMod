.class Lcom/sonymobile/jms/environment/ImEnvironmentManager$2;
.super Ljava/lang/Object;
.source "ImEnvironmentManager.java"

# interfaces
.implements Lcom/sonymobile/rcs/service/api/client/ClientApiListener;


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
    .line 77
    iput-object p1, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager$2;->this$0:Lcom/sonymobile/jms/environment/ImEnvironmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleApiConnected()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager$2;->this$0:Lcom/sonymobile/jms/environment/ImEnvironmentManager;

    invoke-virtual {v0}, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->onPossibleApiConnectionStatusChange()V

    .line 93
    return-void
.end method

.method public handleApiDisabled()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager$2;->this$0:Lcom/sonymobile/jms/environment/ImEnvironmentManager;

    invoke-virtual {v0}, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->onPossibleApiConnectionStatusChange()V

    .line 85
    return-void
.end method

.method public handleApiDisconnected()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/jms/environment/ImEnvironmentManager$2;->this$0:Lcom/sonymobile/jms/environment/ImEnvironmentManager;

    invoke-virtual {v0}, Lcom/sonymobile/jms/environment/ImEnvironmentManager;->onPossibleApiConnectionStatusChange()V

    .line 101
    return-void
.end method
