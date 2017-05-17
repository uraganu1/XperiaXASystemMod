.class Lcom/sonymobile/conversations/transaction/MmsContentChangedReceiver$1;
.super Ljava/lang/Thread;
.source "MmsContentChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/conversations/transaction/MmsContentChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/conversations/transaction/MmsContentChangedReceiver;

.field final synthetic val$changedUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sonymobile/conversations/transaction/MmsContentChangedReceiver;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/conversations/transaction/MmsContentChangedReceiver;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "val$changedUri"    # Landroid/net/Uri;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sonymobile/conversations/transaction/MmsContentChangedReceiver$1;->this$0:Lcom/sonymobile/conversations/transaction/MmsContentChangedReceiver;

    iput-object p3, p0, Lcom/sonymobile/conversations/transaction/MmsContentChangedReceiver$1;->val$changedUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/google/android/mms/util/PduCache;->getInstance()Lcom/google/android/mms/util/PduCache;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/MmsContentChangedReceiver$1;->val$changedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 56
    return-void
.end method
