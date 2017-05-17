.class Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$1;
.super Ljava/lang/Object;
.source "CallLogDetailFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallPlusServiceConnected()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-wrap4(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)V

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get9(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-set2(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;Z)Z

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->requestCapability(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCallPlusServiceDisconnected()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-wrap4(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)V

    .line 244
    return-void
.end method

.method public onCapabilitiesUpdated(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-wrap4(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)V

    .line 249
    return-void
.end method
