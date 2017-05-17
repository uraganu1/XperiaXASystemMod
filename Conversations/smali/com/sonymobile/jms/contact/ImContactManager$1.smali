.class Lcom/sonymobile/jms/contact/ImContactManager$1;
.super Ljava/lang/Object;
.source "ImContactManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/jms/contact/ImContactManager;->createCacheRcsDisplayNamesTask()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/jms/contact/ImContactManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/jms/contact/ImContactManager;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sonymobile/jms/contact/ImContactManager$1;->this$0:Lcom/sonymobile/jms/contact/ImContactManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Lcom/sonymobile/jms/contact/ImContactManager$1;->this$0:Lcom/sonymobile/jms/contact/ImContactManager;

    # invokes: Lcom/sonymobile/jms/contact/ImContactManager;->cacheDisplayNameForOthers()V
    invoke-static {v1}, Lcom/sonymobile/jms/contact/ImContactManager;->access$000(Lcom/sonymobile/jms/contact/ImContactManager;)V

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/jms/contact/ImContactManager$1;->this$0:Lcom/sonymobile/jms/contact/ImContactManager;

    # invokes: Lcom/sonymobile/jms/contact/ImContactManager;->cacheDisplayNameForSelf()V
    invoke-static {v1}, Lcom/sonymobile/jms/contact/ImContactManager;->access$100(Lcom/sonymobile/jms/contact/ImContactManager;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
    const-string/jumbo v1, "Unable to cache display name for self."

    .line 107
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
