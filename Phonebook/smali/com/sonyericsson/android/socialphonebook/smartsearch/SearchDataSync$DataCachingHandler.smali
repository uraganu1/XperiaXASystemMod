.class Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$DataCachingHandler;
.super Landroid/os/Handler;
.source "SearchDataSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataCachingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$DataCachingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;

    .line 280
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 279
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 284
    iget v0, p1, Landroid/os/Message;->what:I

    .line 285
    .local v0, "what":I
    packed-switch v0, :pswitch_data_0

    .line 283
    :goto_0
    return-void

    .line 287
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$DataCachingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->-wrap2(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;)V

    goto :goto_0

    .line 290
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync$DataCachingHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;->-wrap3(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataSync;)V

    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
