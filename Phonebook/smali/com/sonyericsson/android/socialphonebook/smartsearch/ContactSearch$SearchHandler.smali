.class Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SearchHandler;
.super Landroid/os/Handler;
.source "ContactSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 476
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SearchHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;

    .line 477
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 476
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 482
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 483
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;

    .line 482
    if-eqz v0, :cond_0

    .line 484
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SearchHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->search(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;)V

    .line 481
    :cond_0
    return-void
.end method
