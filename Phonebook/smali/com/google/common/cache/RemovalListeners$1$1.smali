.class Lcom/google/common/cache/RemovalListeners$1$1;
.super Ljava/lang/Object;
.source "RemovalListeners.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/RemovalListeners$1;->onRemoval(Lcom/google/common/cache/RemovalNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/cache/RemovalListeners$1;

.field final synthetic val$listener:Lcom/google/common/cache/RemovalListener;

.field final synthetic val$notification:Lcom/google/common/cache/RemovalNotification;


# direct methods
.method constructor <init>(Lcom/google/common/cache/RemovalListeners$1;Lcom/google/common/cache/RemovalListener;Lcom/google/common/cache/RemovalNotification;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/common/cache/RemovalListeners$1;

    .prologue
    .line 51
    .local p2, "val$listener":Lcom/google/common/cache/RemovalListener;, "Lcom/google/common/cache/RemovalListener<TK;TV;>;"
    .local p3, "val$notification":Lcom/google/common/cache/RemovalNotification;, "Lcom/google/common/cache/RemovalNotification<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/cache/RemovalListeners$1$1;->this$1:Lcom/google/common/cache/RemovalListeners$1;

    iput-object p2, p0, Lcom/google/common/cache/RemovalListeners$1$1;->val$listener:Lcom/google/common/cache/RemovalListener;

    iput-object p3, p0, Lcom/google/common/cache/RemovalListeners$1$1;->val$notification:Lcom/google/common/cache/RemovalNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/common/cache/RemovalListeners$1$1;->val$listener:Lcom/google/common/cache/RemovalListener;

    iget-object v1, p0, Lcom/google/common/cache/RemovalListeners$1$1;->val$notification:Lcom/google/common/cache/RemovalNotification;

    invoke-interface {v0, v1}, Lcom/google/common/cache/RemovalListener;->onRemoval(Lcom/google/common/cache/RemovalNotification;)V

    .line 53
    return-void
.end method
