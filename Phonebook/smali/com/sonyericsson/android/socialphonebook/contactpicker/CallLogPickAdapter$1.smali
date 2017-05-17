.class Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$1;
.super Landroid/os/Handler;
.source "CallLogPickAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 305
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 307
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 310
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->-get0(Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;)Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->-get0(Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;)Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->startRequestProcessing()V

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
