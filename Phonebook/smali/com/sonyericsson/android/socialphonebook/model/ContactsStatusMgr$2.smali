.class Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$2;
.super Ljava/lang/Object;
.source "ContactsStatusMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->doRefresh(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

.field final synthetic val$aContext:Landroid/content/Context;

.field final synthetic val$aHanlder:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;
    .param p2, "val$aContext"    # Landroid/content/Context;
    .param p3, "val$aHanlder"    # Ljava/lang/Runnable;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$2;->this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$2;->val$aContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$2;->val$aHanlder:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 459
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$2;->this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$2;->val$aContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;-><init>(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;Landroid/content/Context;)V

    .line 460
    .local v0, "contactCollector":Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$2;->this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->-get4(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$2;->val$aHanlder:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;->refresh(Ljava/lang/Runnable;)V

    .line 458
    return-void
.end method
