.class Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment$1;
.super Landroid/os/Handler;
.source "ContactEntryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;)V
    .locals 0

    .prologue
    .line 149
    .local p1, "this$0":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->loadDirectoryPartition(ILcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;)V

    .line 151
    :cond_0
    return-void
.end method
