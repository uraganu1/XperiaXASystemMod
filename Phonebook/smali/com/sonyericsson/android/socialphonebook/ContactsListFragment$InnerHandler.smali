.class Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$InnerHandler;
.super Landroid/os/Handler;
.source "ContactsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerHandler"
.end annotation


# instance fields
.field private final mFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    .prologue
    .line 2032
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2033
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$InnerHandler;->mFragment:Ljava/lang/ref/WeakReference;

    .line 2032
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2038
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$InnerHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    .line 2039
    .local v0, "fragment":Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;
    if-nez v0, :cond_0

    return-void

    .line 2041
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2037
    :goto_0
    return-void

    .line 2043
    :pswitch_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->selectDefaultContact()V

    goto :goto_0

    .line 2041
    nop

    :pswitch_data_0
    .packed-switch -0x110012
        :pswitch_0
    .end packed-switch
.end method
