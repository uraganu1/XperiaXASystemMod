.class Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$MessageHandler;
.super Landroid/os/Handler;
.source "CallLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandler"
.end annotation


# instance fields
.field private mWeakAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    .prologue
    .line 979
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 980
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$MessageHandler;->mWeakAdapter:Ljava/lang/ref/WeakReference;

    .line 979
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 985
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$MessageHandler;->mWeakAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    .line 986
    .local v0, "adapter":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;
    if-nez v0, :cond_0

    return-void

    .line 988
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 984
    :cond_1
    :goto_0
    return-void

    .line 990
    :pswitch_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 993
    :pswitch_1
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->-get2(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;)Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 994
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->-get2(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;)Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->startRequestProcessing()V

    goto :goto_0

    .line 988
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
