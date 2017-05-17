.class Lcom/sonyericsson/conversations/util/ContactLookup$Throttler$1;
.super Ljava/lang/Object;
.source "ContactLookup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/ContactLookup$Throttler$1;->this$1:Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 247
    new-instance v0, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;

    iget-object v1, p0, Lcom/sonyericsson/conversations/util/ContactLookup$Throttler$1;->this$1:Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;

    iget-object v1, v1, Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;-><init>(Lcom/sonyericsson/conversations/util/ContactLookup;Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;)V

    .line 248
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/ContactLookup$Throttler$1;->this$1:Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;

    iget-object v1, v1, Lcom/sonyericsson/conversations/util/ContactLookup$Throttler;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-static {v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->-get1(Lcom/sonyericsson/conversations/util/ContactLookup;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 247
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationAndResolveContactUpdatesTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 246
    return-void
.end method
