.class Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$9;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->onRcsRequestHandled(IZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

.field final synthetic val$data:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;
    .param p2, "val$data"    # Landroid/os/Bundle;

    .prologue
    .line 2108
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$9;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$9;->val$data:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2112
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$9;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$9;->val$data:Landroid/os/Bundle;

    .line 2113
    const-string/jumbo v2, "contactNumbers"

    .line 2112
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->setRcsCapableNumbers(Ljava/util/Collection;)V

    .line 2114
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$9;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->notifyDataSetChanged()V

    .line 2111
    return-void
.end method
