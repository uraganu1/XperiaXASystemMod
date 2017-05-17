.class Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest$RequestHandler;
.super Landroid/os/Handler;
.source "ContactCapabilityRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest$RequestHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;

    .line 138
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 137
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 143
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 145
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest$RequestHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;->doInBackground(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
