.class Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$1;
.super Ljava/lang/Object;
.source "ContactsStatusMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->refresh(Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

.field final synthetic val$aCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;
    .param p2, "val$aCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$1;->this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$1;->val$aCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$1;->this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$1;->this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->-get3(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$1;->val$aCallback:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->-wrap0(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 275
    return-void
.end method
